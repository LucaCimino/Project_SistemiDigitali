import cv2
import socket
import sys
import numpy as np
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import time


################## Configuration ###############

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"

UDP_IP = "192.168.2.1"
UDP_PORT = 5555

################################################


# Creazione della socket UDP
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
sock.bind((UDP_IP, UDP_PORT))


while True:
    # Receive cipher_image from network
    cipher_image, addr = sock.recvfrom(65536)  # buffer size is 64 KiB bytes

    cipher = Cipher(algorithms.AES(key), modes.ECB())
    decryptor = cipher.decryptor()

    dt = decryptor.update(cipher_image) + decryptor.finalize()
        
    original_image_bytes = bytes(bytearray(dt))

    # L'immagine ricevuta è in formato YUV 4:2:0 con dimensioni 270x240
    frame = np.frombuffer(original_image_bytes, dtype=np.uint8).reshape((270, 240))

    # Conversione YUV -> RGB
    frame_rgb = cv2.cvtColor(frame, cv2.COLOR_YUV2BGR_I420)
    frame_rgb = cv2.resize(frame_rgb, (640, 480))

    # Visualizzazione del frame
    cv2.imshow("received frame", frame_rgb)

    # Interruzione del loop se viene premuto il tasto 'q'
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break


# Chiusura della finestra e della socket
cv2.destroyAllWindows()
sock.close()

