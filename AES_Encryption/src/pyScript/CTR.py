from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import os
import time

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"
nonce = b"\x73\xfd\x21\x4d\x00\xaa\x59\xb1\xa8\x74\x86\xf2\x98\x72\xea\x73"

print("Key =",key)

cipher = Cipher(algorithms.AES(key), modes.CTR(nonce))
encryptor = cipher.encryptor()
plaintext = b"\x04\xb4\x56\xee\x17\xa6\x6a\xbe\x53\x28\xa7\x73\xd6\x7c\xd8\x6a"

start = time.time()
ct = encryptor.update(plaintext) + encryptor.finalize()
end = time.time()

print("Execution time:", end - start, "s")
print("Chiper =", ct)

decryptor = cipher.decryptor()
dt = decryptor.update(ct) + decryptor.finalize()

print("Plaintext =", dt)

