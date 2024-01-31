from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import os

key = b"\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f\x10\x11\x12\x13\x14\x15\x16\x17\x18\x19\x1a\x1b\x1c\x1d\x1e\x1f"
iv = os.urandom(16)

print("Key =",key)

# cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
cipher = Cipher(algorithms.AES(key), modes.ECB())
encryptor = cipher.encryptor()
plaintext = b"\x16\xc7\x22\x4d\x14\x5a\x26\x75\x00\x00\x00\x00\x00\x00\x00\x00"
ct = encryptor.update(plaintext) + encryptor.finalize()

print("Chiper =", ct)

decryptor = cipher.decryptor()
dt = decryptor.update(ct) + decryptor.finalize()

print("Plaintext =", dt)

