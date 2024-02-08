from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import time
from PIL import Image

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"


# with open("file.bin", "rb") as file:
#    cipher_image = file.read()


encrypted_image = Image.open("image40x30.jpg")
image_data = encrypted_image.tobytes()
# Crea un bytearray dalla data dell'immagine
cipher_image = bytearray(image_data)

print("Byte to decrypt =",len(cipher_image))

original_image_bytes = b""

start = time.time()
for i in range(0, len(cipher_image), 16):
    chunk = cipher_image[i:i+16]

    cipher = Cipher(algorithms.AES(key), modes.ECB())
    decryptor = cipher.decryptor()

    dt = decryptor.update(chunk) + decryptor.finalize()
    
    original_image_bytes = original_image_bytes + bytes(bytearray(dt))

    #print("CHIPER:\t",chunk)
    #print("PLAIN:\t",bytes(bytearray(dt)))
    #print("")
   
end = time.time()
print("Execution time:", end - start, "s")

original_image = Image.frombytes('RGB',(40, 30), original_image_bytes)

# Salvo l'immagine su disco
original_image.save("original_image.jpg")


##########################

start = time.time()
cipher = Cipher(algorithms.AES(key), modes.ECB())
decryptor = cipher.decryptor()
dt = decryptor.update(cipher_image) + decryptor.finalize()
original_image_bytes = bytes(bytearray(dt))
end = time.time()
print("Execution time:", end - start, "s")

original_image = Image.frombytes('RGB',(40, 30), original_image_bytes)

# Salvo l'immagine su disco
original_image.save("original_image_ECB.jpg")













