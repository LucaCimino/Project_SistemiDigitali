from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
import os
import time

key = b"\x63\xd3\x71\xe3\x6b\xb2\x12\x85\xe7\x67\xd2\xff\x11\x15\xe3\xab"
print("Key =",key)
print("")

cipher = Cipher(algorithms.AES(key), modes.ECB())
encryptor = cipher.encryptor()
plaintext = b"\x04\xb4\x56\xee\x17\xa6\x6a\xbe\x53\x28\xa7\x73\xd6\x7c\xd8\x6a"
print("Plaintext:\t", plaintext)
start = time.time()
ct = encryptor.update(plaintext) + encryptor.finalize()
end = time.time()
print("Chiper:\t\t", ct,)
print("Execution time:", end - start, "s")
print("")

cipher = Cipher(algorithms.AES(key), modes.ECB())
encryptor = cipher.encryptor()
plaintext = b"\x33\xdd\x56\xee\x17\xa6\x1a\x13\x32\x23\xa7\x73\x65\x1c\xd2\x41"
print("Plaintext:\t", plaintext)
ct = encryptor.update(plaintext) + encryptor.finalize()
print("Chiper:\t\t", ct)
print("")

cipher = Cipher(algorithms.AES(key), modes.ECB())
encryptor = cipher.encryptor()
plaintext = b"\xc4\x74\x15\x74\xa7\xa6\xc1\xa3\x73\x28\x17\x76\x73\xbc\x3f\xe1"
print("Plaintext:\t", plaintext)
ct = encryptor.update(plaintext) + encryptor.finalize()
print("Chiper:\t\t", ct)
print("")

cipher = Cipher(algorithms.AES(key), modes.ECB())
encryptor = cipher.encryptor()
plaintext = b"\x36\xc5\x74\x14\xf7\x90\xac\xb1\x02\x2e\xf6\x12\x83\x6e\x31\xe6"
print("Plaintext:\t", plaintext)
ct = encryptor.update(plaintext) + encryptor.finalize()
print("Chiper:\t\t", ct)
print("")

'''
decryptor = cipher.decryptor()
dt = decryptor.update(ct) + decryptor.finalize()

print("Plaintext =", dt)
'''
