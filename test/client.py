import cv2
import socket
import sys
import numpy as np
import time
import os
import signal
from multiprocessing import Process

if len(sys.argv) != 5:
    print("usage: serverSocket ip_server port_server larghezza altezza")
    exit()

# indirizzo ip e porta del server
server_ip = sys.argv[1]
server_port = int(sys.argv[2])
WIDTH = int(sys.argv[3])
HEIGHT= int(sys.argv[4])

# Creazione della socket UDP
client_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
# Impostazione del timeout a 5 secondi


while True:
    try:
        # Invio del messaggio di richiesta al server
        print(f"invio messaggio a {server_ip} : {server_port}")
        client_socket.sendto("eccomi".encode(), (server_ip, server_port))

        # Ricezione del messaggio di conferma dal server
        response_message, server_address = client_socket.recvfrom(1024)
        print("Messaggio di conferma ricevuto:", response_message.decode())

        # Se il messaggio di conferma è ricevuto, esce dal loop
        if response_message.decode() == "Conferma ricevuta":
            break

    except socket.timeout:
        # Gestione del timeout
        print("Timeout sulla ricezione della conferma. Riprovare.")

while True:
    try:
        # Ricezione del frame dal server
        data, server_address = client_socket.recvfrom(int(WIDTH*HEIGHT*1.5))  # Dimensione massima del pacchetto UDP
        print('ricevuti ', int(WIDTH*HEIGHT*1.5))
        frame = np.frombuffer(data, dtype=np.uint8).reshape((int(HEIGHT*1.5), WIDTH))

        # Conversione YUV -> RGB
        frame_rgb = cv2.cvtColor(frame, cv2.COLOR_YUV2BGR_I420)
        print('dimensione prima del resize', frame_rgb.shape)
        frame_rgb = cv2.resize(frame_rgb, (640, 480))
        print('dimensione dopo il resize', frame_rgb.shape)

        # Visualizzazione del frame
        cv2.imshow("received frame", frame_rgb)

        # Interruzione del loop se viene premuto il tasto 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    except socket.timeout:
        # Gestione del timeout
        print('Timeout, nessun frame ricevuto')
        cv2.waitKey(1)
        continue

    # Chiusura della finestra e della socket
cv2.destroyAllWindows()
client_socket.close()