from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import time
from PIL import Image
import socket

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"


# Receive cipher image from network

UDP_IP = "192.168.2.1"
UDP_PORT = 5555

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) 
sock.bind((UDP_IP, UDP_PORT))
 

cipher_image, addr = sock.recvfrom(65536)  # buffer size is 64 KiB bytes

print("Ricevuta immagine di",len(cipher_image),"bytes da",addr)


original_image_bytes = b""

start = time.time()
for i in range(0, len(cipher_image), 16):
    chunk = cipher_image[i:i+16]

    cipher = Cipher(algorithms.AES(key), modes.ECB())
    decryptor = cipher.decryptor()

    dt = decryptor.update(chunk) + decryptor.finalize()
    
    original_image_bytes = original_image_bytes + bytes(bytearray(dt))

    print("CHIPER:\t",chunk)
    print("PLAIN:\t",bytes(bytearray(dt)))
    print("")
   
end = time.time()
print("Execution time:", end - start, "s")

original_image = Image.frombytes('RGB',(40,30 ), original_image_bytes)

# Salvo l'immagine su disco
original_image.save("original_image.jpg")








