import cv2
import numpy as np
import sys
import time
import socket

def record(frame, server_socket, client_address, WIDTH, HEIGHT):
    # ret, buffer = cv2.imencode('.jpg', frame)
    # frame = buffer.tobytes()

    print('sto registrando, scrivo un frame sul tunnel UDP')

    # resize (640,480) -> (COMPRESSED_WIDTH,COMPRESSED_HEIGHT)
    frame = cv2.resize(frame, (WIDTH, HEIGHT))

    # RGB -> YUV
    frame = cv2.cvtColor(frame, cv2.COLOR_BGR2YUV_I420)

    # Ottieni i dati del frame come bytes
    frame_data = frame.tobytes()

    # Ottieni la dimensione dei dati
    print(len(frame_data))

    # Invia il pacchetto sulla socket
    server_socket.sendto(frame_data, client_address)
    return

def test(server_socket, client_address, WIDTH, HEIGHT):

    # Inizializza la telecamera (imposta il parametro 0 se stai usando la webcam integrata)
    cap = cv2.VideoCapture(0)

    # Cattura un frame dalla telecamera
    _, oldFrame = cap.read()

    while True:
        # Cattura un frame dalla telecamera

        startTime = time.time()

        _, actualFrame = cap.read()

        record(actualFrame, server_socket, client_address, WIDTH, HEIGHT)

        endTime = time.time()
        print('time: ', endTime - startTime)

        # Interruzione del loop se viene premuto 'q'
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break

    # Rilascia la telecamera e chiudi la finestra
    cap.release()
    cv2.destroyAllWindows()
    return


def start_server():
    # Accedi al primo argomento passato da linea di comando
    if len(sys.argv) != 5:
        print("usage: serverSocket ip_server port_server larghezza altezza")
        exit()

    # indirizzo ip e porta del server
    server_ip = sys.argv[1]
    server_port = int(sys.argv[2])
    WIDTH = 240
    HEIGHT= 180

    # Creazione della socket UDP
    server_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    server_socket.bind((server_ip, server_port))

    while True:
        print('socket UDP in ascolto sulla porta ', server_port, 'all\'indirizzo ', server_ip)

        # Ricezione del messaggio di richiesta dal client
        request_message, client_address = server_socket.recvfrom(1024)
        print("Messaggio di richiesta ricevuto:", request_message.decode())

        # Invio di un messaggio di conferma al client
        server_socket.sendto("Conferma ricevuta".encode(), client_address)

        test(server_socket, client_address, WIDTH, HEIGHT)


if __name__ == "__main__":
    start_server()
