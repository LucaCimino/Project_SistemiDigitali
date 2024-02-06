from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import time
from PIL import Image

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"


# Carico l'immagine
# encrypted_image = Image.open("encrypted_image.jpg")

# Ottieni i dati dell'immagine come byte
# image_data = encrypted_image.tobytes()
# Crea un bytearray dalla data dell'immagine
# chiper = bytearray(image_data)

with open("file.bin", "rb") as file:
    chiper = file.read()



original_image_bytes = b""

start = time.time()
for i in range(0, len(chiper), 16):
    chunk = chiper[i:i+16]

    cipher = Cipher(algorithms.AES(key), modes.ECB())
    decryptor = cipher.decryptor()

    dt = decryptor.update(chunk) + decryptor.finalize()
    
    original_image_bytes = original_image_bytes + bytes(bytearray(dt))

    print("CHIPER:\t",chunk)
    print("PLAIN:\t",bytes(bytearray(dt)))
    print("")
   
end = time.time()
print("Execution time:", end - start, "s")

original_image = Image.frombytes('RGB',(8, 6 ), original_image_bytes)

# Salvo l'immagine su disco
original_image.save("original_image.jpg")








