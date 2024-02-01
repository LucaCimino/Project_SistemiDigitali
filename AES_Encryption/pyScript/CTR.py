from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import os


key = b"\x62\xb1\x74\xa6\x6b\xbf\x11\x62\xe7\x67\xd2\xff\x62\x1f\xe1\x90"
nonce = b"\x3b\x8d\x01\xed\x53\xaf\xaa\x21\x72\xb3\x54\xf7\xa8\x27\xe0\x82"

print("Key =",key)

cipher = Cipher(algorithms.AES(key), modes.CTR(nonce))
encryptor = cipher.encryptor()
plaintext = b"\x5b\x4a\x02\x47\x04\x26\x3f\x1e\x5d\x87\x74\x3d\x3b\xf5\xa8\x53"
ct = encryptor.update(plaintext) + encryptor.finalize()

print("Chiper =", ct)

decryptor = cipher.decryptor()
dt = decryptor.update(ct) + decryptor.finalize()

print("Plaintext =", dt)

