import cv2
import socket
import pickle
import struct
import sys

if len(sys.argv) != 3:
        print("usage: serverSocket ip_server port_server")

server_ip= sys.argv[1]
server_port=int(sys.argv[2])

# Indirizzo IP e porta del server

# Creazione della socket
client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client_socket.connect((server_ip, server_port))

# Ricezione e visualizzazione dei frame
while True:
    # Ricezione della dimensione del messaggio
    message_size_data = client_socket.recv(8)
    if not message_size_data:
        print('dimensione non ricevuta')
        break
    message_size = struct.unpack("L", message_size_data)[0]

    # Ricezione del frame serializzato
    frame_data = b""
    while len(frame_data) < message_size:
        remaining_size = message_size - len(frame_data)
        frame_data += client_socket.recv(4096 if remaining_size > 4096 else remaining_size)

    # Deserializzazione del frame
    frame = pickle.loads(frame_data)

    # Visualizzazione del frame
    cv2.imshow("Received Frame", frame)

    # Interruzione del loop se viene premuto il tasto 'q'
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# Chiusura della socket
client_socket.close()
cv2.destroyAllWindows()
