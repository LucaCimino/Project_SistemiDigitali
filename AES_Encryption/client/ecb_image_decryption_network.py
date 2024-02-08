from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import time
from PIL import Image
import socket


##########################

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"

UDP_IP = "192.168.2.1"
UDP_PORT = 5555

IMG_WIDTH = 40
IMG_HEIGTH = 32     

##########################

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
sock.bind((UDP_IP, UDP_PORT))

# Receive cipher_image from network
cipher_image, addr = sock.recvfrom(65536)  # buffer size is 64 KiB bytes
print("Ricevuta immagine di",len(cipher_image),"bytes da",addr)

start = time.time()

cipher = Cipher(algorithms.AES(key), modes.ECB())
decryptor = cipher.decryptor()

dt = decryptor.update(cipher_image) + decryptor.finalize()
    
original_image_bytes = bytes(bytearray(dt))

end = time.time()
print("Execution time:", end - start, "s")

original_image = Image.frombytes('RGB',(IMG_WIDTH, IMG_HEIGTH), original_image_bytes)

# Salvo l'immagine su disco
original_image.save("original_image.jpg")








