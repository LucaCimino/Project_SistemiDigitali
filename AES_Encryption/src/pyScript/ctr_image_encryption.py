from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import time
import cv2
import numpy as np
from PIL import Image

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"
nonce = b"\x73\xfd\x21\x4d\x00\xaa\x59\xb1\xa8\x74\x86\xf2\x98\x72\xea\x73"

print("Key =",key)

# Creo il Cipher
cipher = Cipher(algorithms.AES(key), modes.CTR(nonce))
encryptor = cipher.encryptor()

# Trasformo l'immagine da cifrare in un flusso di bytes
img = cv2.imread("image.jpg")
# L'immagine viene letta in BGR, riportiamola in RGB
img_rgb = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
img_resized = cv2.resize(img_rgb, (200,150))
plaintext = bytearray(img_resized)

# Cifratura dell'immagine
start = time.time()
ct = encryptor.update(plaintext) + encryptor.finalize()
end = time.time()

print("Encryption execution time:", end - start, "s")
########################
# su laptop = 0.0005 s #
########################

# Salvo su disco l'immagine cifrata
encrypted_img_bytes = np.array(bytearray(ct))
encrypted_image = Image.frombytes('RGB',(200, 150 ), encrypted_img_bytes) # return an Image object
encrypted_image.save("encrypted_image.jpg")
print("Immagine cifrata salvata in encrypted_image.jpg")

# Decifro l'immagine
decryptor = cipher.decryptor()
start = time.time()
dt = decryptor.update(ct) + decryptor.finalize()
end = time.time()

print("Decryption execution time:", end - start, "s")
########################
# su laptop = 0.0002 s #
########################

# Salvo su disco l'immagine decifrata
decrypted_img_bytes = np.array(bytearray(dt))
decrypted_image = Image.frombytes('RGB', (200,150), decrypted_img_bytes)
decrypted_image.save("decrypted_image.jpg")
print("Immagine decifrata salvata in decrypted_image.jpg")




