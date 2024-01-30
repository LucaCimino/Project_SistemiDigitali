AES
===

AES: https://amslaurea.unibo.it/7274/1/Chieco_Davide_tesi.pdf

AES algorithm implementation using C. 

Effettua la cifratura di un blocco ESATTAMENTE di 128 bit in modalità ECB
- se viene passato in input un blocco di dimensione inferiore viene completato con il padding
- se viene passato in input un blocco di dimensione superiore viene troncato

# Example

Compile the source code: 

`gcc gmult.c aes.c main.c -o aes`

And run:

```bash
./aes
Plaintext message:
00 11 22 33 44 55 66 77 88 99 aa bb cc dd ee ff
Ciphered message:
8e a2 b7 ca 51 67 45 bf ea fc 49 90 4b 49 60 89
Original message (after inv cipher):
00 11 22 33 44 55 66 77 88 99 aa bb cc dd ee ff
```

## Set PLAINTEXT and KEY in main.c
- in AES il blocco ha dimensione 128 bit
- KEY può essere di 128, 192 o 256 bit

## Frame Encryption

Dimensioni di una frame della webcam = (480, 640, 3)
- In RGB = 480 x 640 x 3 x 8 byte = 7.372.800
