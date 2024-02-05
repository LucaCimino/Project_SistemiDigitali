import cv2
import socket
import sys
import numpy as np

if len(sys.argv) != 3:
        print("usage: serverSocket ip_server port_server")
        exit()

#indirizzo ip e porta del server
server_ip= sys.argv[1]
server_port=int(sys.argv[2])

# Creazione della socket UDP
client_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# Impostazione del timeout a 5 secondi
client_socket.settimeout(5.0)

request_message = "Inizia invio frame"

while True:
    try:
        # Invio del messaggio di richiesta al server
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

# Configurazione della finestra per la visualizzazione dei frame
cv2.namedWindow("Received Frame", cv2.WINDOW_NORMAL)

while True:
    # Ricezione del frame dal server
    data, server_address = client_socket.recvfrom(61878)  # Dimensione massima del pacchetto UDP
    frame = np.frombuffer(data, dtype=np.uint8)

    # Reshape del frame alle dimensioni originali
    rows, cols, channels = frame[:3]
    frame = frame[3:].reshape((rows, cols, channels))

    #resize alle dimensioni originali 640 X 480
    #frame = cv2.resize(frame, (640, 480))

    # Visualizzazione del frame
    cv2.imshow("Received Frame", frame)

    # Interruzione del loop se viene premuto il tasto 'q'
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Chiusura della finestra e della socket
cv2.destroyAllWindows()
client_socket.close()

