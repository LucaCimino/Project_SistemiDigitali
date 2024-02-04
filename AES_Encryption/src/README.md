AES
===
Repository: https://github.com/dhuertas/AES

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


# CTR Mode

Compile source code:

`gcc gmult.c aes.c ctr_main.c -o ctr`

### Test CTR Mode

- Key       = 00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f
- Plaintext = A1b2C3d4E5f6G7H8

Nonce:		    16 c7 22 4d 14 5a 26 75 00 00 00 00 00 00 00 00 
Out [ E(nonce) ] :  20 c8 1d f0 36 18 62 77 b1 96 4e 20 ea 51 c0 39 
Plaintext:	    41 31 62 32 43 33 64 34 45 35 66 36 47 37 48 38 
Chiper:		    61 f9 7f c2 75 2b 06 43 f4 a3 28 16 ad 66 88 01  



## Frame Encryption

Dimensioni di una frame della webcam = (480, 640, 3)
- In RGB = 480 x 640 x 3 x 8 byte = 7.372.800


### Utility

Write binary file in bash: ```echo -n -e \\x01\\x02\\x56\\xee > myfile```
