import cv2
import socket
import sys
import numpy as np
import time
import os
import signal
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes



################## Configuration ###############

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"

#################################################


if len(sys.argv) != 3:
    print("usage: clientSocket ip_server port_server")
    exit()

# indirizzo ip e porta del server
server_ip = sys.argv[1]
server_port = int(sys.argv[2])

# Creazione della socket UDP
client_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
# Impostazione del timeout a 5 secondi
client_socket.settimeout(5.0)

request_message = "Inizia invio frame"


def feedback():
    while True:
        client_socket.sendto("ack".encode(), (server_ip, server_port))
        time.sleep(1.0)


while True:
    try:
        # Invio del messaggio di richiesta al server
        print(f"invio messaggio a {server_ip} : {server_port}")
        client_socket.sendto(request_message.encode(), (server_ip, server_port))

        # Ricezione del messaggio di conferma dal server
        response_message, server_address = client_socket.recvfrom(1024)
        print("Messaggio di conferma ricevuto:", response_message.decode())

        # Se il messaggio di conferma è ricevuto, esce dal loop
        if response_message.decode() == "Conferma ricevuta":
            break

    except socket.timeout:
        # Gestione del timeout
        print("Timeout sulla ricezione della conferma. Riprovare.")

# si attiva il processo che esegue in background per dare un feedback al server.
# Chiamata a os.fork()
pid = os.fork()

if pid == 0:
    # Questo è il processo figlio
    print("Sono il processo figlio")
    feedback()
else:
    # Questo è il processo padre
    print("Sono il processo padre")


    # Configurazione della finestra per la visualizzazione dei frame
    # cv2.namedWindow("Received Frame", cv2.WINDOW_NORMAL)
    window_name = "Received Frame"
    prev_frame_received = False

    start = time.time()
    cont = 0

    while True:
        try:

            # Ricezione del frame dal server
            cipher_image, server_address = client_socket.recvfrom(64800)  # Dimensione massima del pacchetto UDP

            cipher = Cipher(algorithms.AES(key), modes.ECB())
            decryptor = cipher.decryptor()

            dt = decryptor.update(cipher_image) + decryptor.finalize()
                
            original_image_bytes = bytes(bytearray(dt))


            frame = np.frombuffer(original_image_bytes, dtype=np.uint8).reshape((270, 240))


            # Conversione YUV -> RGB
            frame_rgb = cv2.cvtColor(frame, cv2.COLOR_YUV2BGR_I420)
            frame_rgb = cv2.resize(frame_rgb, (640, 480))            

            # Visualizzazione del frame
            cv2.imshow(window_name, frame_rgb)
            prev_frame_received = True
            
            cont = cont+1

            # Interruzione del loop se viene premuto il tasto 'q'
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

        except socket.timeout:
            # Gestione del timeout
            print('Timeout, nessun frame ricevuto')

            if prev_frame_received:
                cv2.destroyWindow(window_name)
                prev_frame_received = False
            cv2.waitKey(1)
            continue
            # print("Timeout sulla ricezione della conferma. Riprovare.")
        
    end = time.time()
    print("Time:", end - start, "s")
    print("Frame ricevuti:",cont)
    print("FPS =", cont / (end - start))

    # Chiusura della finestra e della socket
    cv2.destroyAllWindows()
    os.kill(pid, signal.SIGTERM)
    client_socket.close()
