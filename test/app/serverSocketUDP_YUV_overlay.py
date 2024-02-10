import cv2
import numpy as np
import sys
import time
import socket

#############################
#Load overlay, forse cambiare i path assoluti

print("Loading overlay")
from pynq import Overlay

print("Loading xlnk")
from pynq import Xlnk

#median blur
bsMedianBlur = Overlay("/usr/local/lib/python3.6/dist-packages/pynq_cv/overlays/xv2medianBlur.bit")
bsMedianBlur.download()

Xlnk.set_allocator_library('/usr/local/lib/python3.6/dist-packages/pynq_cv/overlays/xv2medianBlur.so')
mem_manager_medianBlur = Xlnk()

import pynq_cv.overlays.xv2medianBlur as xv2medianBlur

#resize
bsResize = Overlay("/usr/local/lib/python3.6/dist-packages/pynq_cv/overlays/xv2resize.bit")
bsResize.download()

Xlnk.set_allocator_library('/usr/local/lib/python3.6/dist-packages/pynq_cv/overlays/xv2resize.so')
mem_manager_resize = Xlnk()

import pynq_cv.overlays.xv2resize as xv2resize

#subtract
bsSubtract = Overlay("/usr/local/lib/python3.6/dist-packages/pynq_cv/overlays/xv2subtract.bit")
bsSubtract.download()

Xlnk.set_allocator_library('/usr/local/lib/python3.6/dist-packages/pynq_cv/overlays/xv2subtract.so')
mem_manager_subtract = Xlnk()

import pynq_cv.overlays.xv2subtract as xv2subtract

##############################

COMPRESSED_WIDTH=240
COMPRESSED_HEIGHT=180

scale_x = 0
scale_y = 0

#allocazione in memoria fisica di un numpy array contiguo

phy_frame_diff=mem_manager_medianBlur.cma_array((640,480),np.uint8)
phy_frame_result=mem_manager_medianBlur.cma_array((640,480),np.uint8)

phy_frame=mem_manager_resize.cma_array((640,480),np.uint8)
phy_frame_resized=mem_manager_resize.cma_array((COMPRESSED_HEIGHT,COMPRESSED_WIDTH),np.uint8)

phy_frame_1=mem_manager_subtract.cma_array((640,480),np.uint8)
phy_frame_2=mem_manager_subtract.cma_array((640,480),np.uint8)




def record(frame, server_socket, client_address):
    #ret, buffer = cv2.imencode('.jpg', frame)
    #frame = buffer.tobytes()
    
    print('sto registrando, scrivo un frame sul tunnel UDP')
    
    #resize (640,480) -> (COMPRESSED_WIDTH,COMPRESSED_HEIGHT)
    #frame = cv2.resize(frame, (COMPRESSED_WIDTH, COMPRESSED_HEIGHT))

    phy_frame[:] = frame[:]

    xv2resize.resize(phy_frame,dsize=(COMPRESSED_WIDTH,COMPRESSED_HEIGHT),dst=phy_frame_resized,fx=scale_x,fy=scale_y)

    frame[:] = phy_frame[:]

    #RGB -> YUV
    frame = cv2.cvtColor(frame, cv2.COLOR_BGR2YUV_I420)
    
    # Ottieni i dati del frame come bytes
    frame_data = frame.tobytes()

    # Ottieni la dimensione dei dati
    print(len(frame_data))

    # Invia il pacchetto sulla socket
    server_socket.sendto(frame_data, client_address)
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
    #frame_diff = cv2.subtract(frame2, frame1)

    phy_frame_1[:] = frame1[:]
    phy_frame_2[:] = frame2[:]

    xv2subtract.subtract(phy_frame_1,phy_frame_2,dst=phy_frame_diff)

    # blur the frame difference
    #frame_diff = cv2.medianBlur(frame_diff, 3)

    xv2medianBlur.medianBlur(phy_frame_diff, 3 ,dst=phy_frame_result)

    frame_diff[:] = phy_frame_result[:] 

    mask = cv2.adaptiveThreshold(frame_diff, 255, cv2.ADAPTIVE_THRESH_GAUSSIAN_C,\
                cv2.THRESH_BINARY_INV, 11, 3)
    
    phy_mask=mem_manager_medianBlur.cma_array((640,480),np.uint8)
    phy_mask_result=mem_manager_medianBlur.cma_array((640,480),np.uint8)
    
    #mask = cv2.medianBlur(mask, 3)
    xv2medianBlur.medianBlur(phy_mask, 3 ,dst=phy_mask_result)

    mask[:] = phy_mask_result[:]

    # morphological operations
    mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel, iterations=1)

    num_diff_pixels = np.sum(mask == 255)

    return mask, num_diff_pixels


def test(server_socket, client_address):
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
        
        if(not recording):
            if(frame_diff>threshold_start_num_pixel):
                threshold_count+=1
            elif(threshold_count>0):
                threshold_count-=1
            
            if(threshold_count>=threshold_start_reg):
                recording=True
                record(actualFrame, server_socket, client_address)
                threshold_count=0
        else:
            if(frame_diff<threshold_stop_num_pixel):
                threshold_count+=1
            elif(threshold_count>0):
                threshold_count-=1
            
            if(threshold_count>=threshold_stop_reg):
                recording=False
                threshold_count=0
            else:
                record(actualFrame, server_socket, client_address)
        time.sleep(0.5)



        # Interruzione del loop se viene premuto 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

        oldFrame=actualFrame

    # Rilascia la telecamera e chiudi la finestra
    cap.release()
    cv2.destroyAllWindows()
    return

def start_server():

    # Accedi al primo argomento passato da linea di comando
    if len(sys.argv) != 3:
        print("usage: serverSocket ip_server port_server")
        exit()

    #indirizzo ip e porta del server
    server_ip=sys.argv[1]
    server_port=int(sys.argv[2])

    # Creazione della socket UDP
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    server_socket.bind((server_ip, server_port))

    while True:
        print('socket UDP in ascolto sulla porta ', server_port, 'all\'indirizzo ',server_ip)

        # Ricezione del messaggio di richiesta dal client
        request_message, client_address = server_socket.recvfrom(1024)
        print("Messaggio di richiesta ricevuto:", request_message.decode())

        # Invio di un messaggio di conferma al client
        server_socket.sendto("Conferma ricevuta".encode(), client_address)

        test(server_socket,client_address)

if __name__ == "__main__":

    start_server()
