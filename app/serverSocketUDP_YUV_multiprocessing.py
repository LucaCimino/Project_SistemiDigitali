import cv2
import numpy as np
import sys
import time
import socket
import os
import signal
from pynq import Overlay
import pynq.lib.dma


################# Configuration ###################

COMPRESSED_WIDTH = 240
COMPRESSED_HEIGHT = 180

data_size = 7200


# Caricamento dell'overlay
overlay = Overlay('/home/xilinx/pynq/overlays/AES_Encryption/design_1.bit')

#####################################################



# Caricamento del DMA
dma = overlay.axi_dma_0

# Alloca memoria per l'input e l'output -> 2 array da 7200 byte
in_buffer = pynq.allocate(shape=(data_size,), dtype=np.uint8)
out_buffer = pynq.allocate(shape=(data_size,), dtype=np.uint8)




def record(frame, server_socket, client_address):
    # ret, buffer = cv2.imencode('.jpg', frame)
    # frame = buffer.tobytes()

    print('sto registrando, scrivo un frame sul tunnel UDP')

    # resize (640,480) -> (COMPRESSED_WIDTH,COMPRESSED_HEIGHT)
    frame = cv2.resize(frame, (COMPRESSED_WIDTH, COMPRESSED_HEIGHT))

    # RGB -> YUV
    frame = cv2.cvtColor(frame, cv2.COLOR_BGR2YUV_I420)

    # Ottieni i dati del frame come bytes
    frame_data = frame.tobytes()

    # Crea un bytearray dell'immagine
    plaintext = bytearray(frame_data)

    encrypted_img_bytes = b""

    for i in range(0, len(plaintext), data_size):
        chunk = plaintext[i:i+data_size]

        # Copia dei dati nel buffer
        np.copyto(in_buffer, chunk)

        # Avviare il trasferimento del DMA ed aspettare i risultati
        dma.sendchannel.transfer(in_buffer)
        dma.recvchannel.transfer(out_buffer)
        dma.sendchannel.wait()
        dma.recvchannel.wait()

        encrypted_img_bytes = encrypted_img_bytes + bytes(bytearray(out_buffer))

    # Invia il pacchetto sulla socket
    server_socket.sendto(encrypted_img_bytes, client_address)    

    return


def get_mask(frame1, frame2, kernel=np.array((9, 9), dtype=np.uint8)):
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

    mask = cv2.adaptiveThreshold(frame_diff, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C, \
                                 cv2.THRESH_BINARY_INV, 11, 3)

    #mask = cv2.medianBlur(mask, 3)

    # morphological operations
    mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel, iterations=1)

    num_diff_pixels = np.sum(mask == 255)

    return mask, num_diff_pixels



def test(server_socket, client_address):

    # camera status
    recording = False

    threshold_start_reg = 5
    threshold_stop_reg = 5

    threshold_start_num_pixel = 500
    threshold_stop_num_pixel = 200

    ########################
    # Inizializza la telecamera (imposta il parametro 0 se stai usando la webcam integrata)
    cap = cv2.VideoCapture(0)

    # Cattura un frame dalla telecamera
    _, oldFrame = cap.read()

    # Effettua il resize del frame
    # resized_frame = cv2.resize(oldFrame, (WIGHT, HEIGHT))

    startTime = 0
    endTime = 0
    threshold_count = 0
    while True:

        # Cattura un frame dalla telecamera
        startTime = time.time()

        _, actualFrame = cap.read()

        # convert to grayscale
        img1 = cv2.cvtColor(oldFrame, cv2.COLOR_BGR2GRAY)
        img2 = cv2.cvtColor(actualFrame, cv2.COLOR_BGR2GRAY)

        kernel = np.array((9, 9), dtype=np.uint8)
        mask, frame_diff = get_mask(img1, img2, kernel)

        endTime = time.time()
        print("Fine getmask:", endTime-startTime)
        # cv2.imshow("motion", mask)
        print('il numero di pixel che differiscono è: ', frame_diff, ' su ', np.size(mask))
        print('\n')
        time.sleep(0.1)
        ########################
        # se non sta registrando, dopo 5 volte che sono stati rilevati in una diff 500+ pixel di differenza viene fatta partire la registrazione
        # se sta registrando, quando viene rilevata per 5 volte una diff < 200 stoppa la registrazione
        startTime = time.time()
        if (not recording):
            if (frame_diff > threshold_start_num_pixel):
                threshold_count += 1
            elif (threshold_count > 0):
                threshold_count -= 1

            if (threshold_count >= threshold_start_reg):
                recording = True
                record(actualFrame, server_socket, client_address)
                threshold_count = 0
        else:
            if (frame_diff < threshold_stop_num_pixel):
                threshold_count += 1
            elif (threshold_count > 0):
                threshold_count -= 1

            if (threshold_count >= threshold_stop_reg):
                recording = False
                threshold_count = 0
            else:
                record(actualFrame, server_socket, client_address)

        endTime = time.time()
        print('Record time: ', endTime - startTime)

        # time.sleep(0.05)

        # Interruzione del loop se viene premuto 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        oldFrame = actualFrame

    # Rilascia la telecamera e chiudi la finestra
    cap.release()
    cv2.destroyAllWindows()
    return


def start_server():
    # Accedi al primo argomento passato da linea di comando
    if len(sys.argv) != 3:
        print("usage: serverSocket ip_server port_server")
        exit()

    # indirizzo ip e porta del server
    server_ip = sys.argv[1]
    server_port = int(sys.argv[2])

    # Creazione della socket UDP
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
    server_socket.bind((server_ip, server_port))
    server_socket.settimeout(5.0)

    while True:
        try:
            print('socket UDP in ascolto sulla porta ', server_port, 'all\'indirizzo ', server_ip)

            # Ricezione del messaggio di richiesta dal client
            request_message, client_address = server_socket.recvfrom(1024)
            print("Messaggio di richiesta ricevuto:", request_message.decode())

            # Invio di un messaggio di conferma al client
            server_socket.sendto("Conferma ricevuta".encode(), client_address)

            pid = os.fork()

            if (pid == 0):
                test(server_socket, client_address)
            else:
                while True:
                    try:

                        feedback_message, client_address = server_socket.recvfrom(1024)
                        print(feedback_message.decode())

                    except socket.timeout:
                        print('killo il processo')
                        os.kill(pid, signal.SIGTERM)
                        break

            '''
            p = Process(target=test(server_socket,client_address))
            p.start()

            try:
                while True:
                    feedback_message, client_address = server_socket.recvfrom(1024)
                    print(feedback_message.decode())
            except socket.timeout:
                print('killo il processo')
                p.terminate()
            #test(server_socket,client_address)
            '''
        except socket.timeout:
            print(
                '######################################################################################################\n\n\n\n\n')
            continue

        #time.sleep(0.05)


if __name__ == "__main__":
    start_server()
