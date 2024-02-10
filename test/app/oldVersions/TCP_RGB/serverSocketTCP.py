import cv2
import numpy as np
import sys
import time
import socket

import pickle
import struct

def start_recording():
    print('partita la registrazione')
    return

def stop_recording():
    print('stoppata la registrazione')
    return

def record(frame, client_socket):
    #ret, buffer = cv2.imencode('.jpg', frame)
    #frame = buffer.tobytes()
    
    print('sto registrando, scrivo un frame sul tunnel rtsp')
    
    data = pickle.dumps(frame)
    message_size = struct.pack("L", len(data))

    # Invio la dimensione del messaggio
    client_socket.sendall(message_size)

    # Invio il frame
    client_socket.sendall(data)
    return


def get_mask(frame1, frame2, kernel=np.array((9,9), dtype=np.uint8)):
    """ Obtains image mask
        Inputs: 
            frame1 - Grayscale frame at time t
            frame2 - Grayscale frame at time t + 1
            kernel - (NxN) array for Morphological Operations
        Outputs: 
            mask - Thresholded mask for moving pixels
        """
    frame_diff = cv2.subtract(frame2, frame1)

    # blur the frame difference
    frame_diff = cv2.medianBlur(frame_diff, 3)
    
    mask = cv2.adaptiveThreshold(frame_diff, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C,\
                cv2.THRESH_BINARY_INV, 11, 3)

    mask = cv2.medianBlur(mask, 3)

    # morphological operations
    mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel, iterations=1)

    num_diff_pixels = np.sum(mask == 255)

    return mask, num_diff_pixels


def test(client_socket):
    # IMAGE SIZE
    WIDTH = 256
    HEIGHT = 256
    ########################
    #camera status
    recording=False

    threshold_start_reg=5
    threshold_stop_reg=5

    threshold_start_num_pixel=500
    threshold_stop_num_pixel=200


    ########################
    # Inizializza la telecamera (imposta il parametro 0 se stai usando la webcam integrata)
    cap = cv2.VideoCapture(2)

    # Cattura un frame dalla telecamera
    _, oldFrame = cap.read()

    # Effettua il resize del frame
    #resized_frame = cv2.resize(oldFrame, (WIGHT, HEIGHT))

    threshold_count=0
    while True:
        # Cattura un frame dalla telecamera
        _, actualFrame = cap.read()

        # Visualizza il frame
        cv2.imshow("Frame", actualFrame)

        img1_rgb = cv2.cvtColor(oldFrame, cv2.COLOR_BGR2RGB)
        img2_rgb = cv2.cvtColor(actualFrame, cv2.COLOR_BGR2RGB)

        # convert to grayscale
        img1 = cv2.cvtColor(img1_rgb, cv2.COLOR_RGB2GRAY)
        img2 = cv2.cvtColor(img2_rgb, cv2.COLOR_RGB2GRAY)


        kernel = np.array((9,9), dtype=np.uint8)
        mask, frame_diff = get_mask(img1, img2, kernel)

        cv2.imshow("motion", mask)
        print('il numero di pixel che differiscono è: ',frame_diff, ' su ', np.size(mask))
        print('\n')

        ########################
        # se non sta registrando, dopo 5 volte che sono stati rilevati in una diff 500+ pixel di differenza viene fatta partire la registrazione
        #se sta registrando, quando viene rilevata per 5 volte una diff < 200 stoppa la registrazione
        if(False):
                if(not recording and frame_diff>threshold_start_num_pixel):
                    threshold_count+=1
                    if(threshold_count>=threshold_start_reg):
                        recording= not recording
                        threshold_count=0
                        print('inizia la registrazione')
                        record(actualFrame)
                elif(recording):
                    if(frame_diff>threshold_stop_num_pixel):
                        threshold_count+=1
                        if(threshold_count>=threshold_stop_reg):
                            recording= not recording
                            threshold_count=0
                            print('stoppa la registrazione')
                            record(actualFrame)
                    else:
                        print('continua la registrazione')
                        record(actualFrame)
        record(actualFrame, client_socket)
        time.sleep(0.5)



        # Interruzione del loop se viene premuto 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        oldFrame=actualFrame

    # Rilascia la telecamera e chiudi la finestra
    cap.release()
    cv2.destroyAllWindows()
    return

def start_rtsp_server():

    # Accedi al primo argomento passato da linea di comando
    if len(sys.argv) != 3:
        print("usage: serverSocket ip_server port_server")

    ip_server=sys.argv[1]
    port=int(sys.argv[2])

    # Configura il socket per l'ascolto sulla porta RTSP (per esempio, 8554)
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server_socket.bind((ip_server, port))
    server_socket.listen(5)

    print("Server Socket in ascolto sull'ip {ip_server} sulla porta {port}...")

    # Accetta la connessione dal client
    client_socket, client_address = server_socket.accept()
    print(f"Connessione accettata da {client_address}")

    test(client_socket)

    # Chiudi la connessione
    client_socket.close()
    server_socket.close()

if __name__ == "__main__":
    start_rtsp_server()
