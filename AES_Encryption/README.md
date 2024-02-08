# AES Source code

Il codice sorgente C che implementa l'algoritmo AES è stato preso dal repository https://github.com/dhuertas/AES

Tale codice implementa la cifratura di un blocco di plaintext di 128 bit usando una chiave di lunghezza variabile (128, 192 o 256 bit). Sia il plaintex che la chiave sono configurabili in ```src/main.c```

Nota:
- se il blocco di plaintext  è inferiore a 128 bit viene completato con il padding
- se il blocco di plaintext è superiore a 128 viene troncato

#### Usage

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

## Modalità ECB

#### Test

```
Key:             63 d3 71 e3 6b b2 12 85 e7 67 d2 ff 11 15 e3 ab
```

```
Plaintext:       04 b4 56 ee 17 a6 6a be 53 28 a7 73 d6 7c d8 6a
Cipher:          91 19 b8 ea 48 1c ab 35 82 27 43 68 de 16 fc f9
```

```
Plaintext:	 33 dd 56 ee 17 a6 1a 13 32 23 a7 73 65 1c d2 41
Chiper:		 1a fe 92 29 1d 80 84 23 0f 17 72 b2 76 0b 96 c7
```

```
Plaintext:	 c4 74 15 74 a7 a6 c1 a3 73 28 17 76 73 bc 3f e1
Chiper:		 0c 58 be 33 ee 60 49 3b a0 f9 b9 e8 86 8a 3a 1d
```

```
Plaintext:	 36 c5 74 14 f7 90 ac b1 02 2e f6 12 83 6e 31 e6
Chiper:		 08 1d e4 06 92 9b 29 41 31 b3 ab a5 5c 3e ac 86 
```


## Modalità CTR

Usando il codice precedente ho implementato la modalità di cifratura CTR

#### Usage

Compile source code:

`gcc gmult.c aes.c ctr_main.c -o ctr`

And run

`./ctr input_file.txt output_file.txt`

input_file viene cifrato AES in modalità CTR e il testo cifrato viene salvato in output_file.

#### Utility

Write binary file in bash: ```echo -n -e \\x01\\x02\\x56\\xee > myfile```


#### Doc

Una descrizione dettagliata dell'algoritmo AES si trova a https://amslaurea.unibo.it/7274/1/Chieco_Davide_tesi.pdf


## Test

Di seguito si riportano diversi test eseguiti con diverse combinazione di plaintext, key e nonce. Tutti i test svolti producono lo stesso output sia per l'implementazione c in `ctr_main`, sia per il modulo cryptography di Python in `src/pyScript/CTR.py` e sia per il codice HLS.

#### Test 1
```
Key:	        00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 
Nonce:		16 c7 22 4d 14 5a 26 75 00 00 00 00 00 00 00 00 
Out:		ce 08 c3 14 c4 27 f6 fb d7 b7 af 65 bd e4 96 c0 
Plaintext:	41 42 43 44 45 46 47 48 31 32 33 34 35 36 37 38  [ABCDEFGH12345678]
Chiper:		8f 4a 80 50 81 61 b1 b3 e6 85 9c 51 88 d2 a1 f8 
```

#### Test 2
```
Key:            f3 91 02 03 04 72 bd 07 e1 aa 00 65 18 86 6e 7c 
Nonce:		05 f1 22 4d 73 5a 26 44 a8 7e c6 d5 75 71 b2 73 
Out:		ae 84 89 76 df 1c bc 04 bf d7 50 a5 f7 b4 31 c0 
Plaintext:	71 77 65 72 74 79 75 69 6f 70 61 73 64 66 67 66 [qwertyuiopasdfgf]
Chiper:		df f3 ec 04 ab 65 c9 6d d0 a7 31 d6 93 d2 56 a6 
```

#### Test 3
```
Key:	        63 d3 71 e3 6b b2 12 85 e7 67 d2 ff 11 15 e3 ab 
Nonce:		73 fb 21 4d 00 aa 59 b1 a8 74 86 f2 98 72 ea 73 
Out:		a7 9e fa aa d7 85 f2 18 8c 3b b7 3f 99 29 fa 18 
Plaintext:	04 b4 56 ee 17 a6 6a be 53 28 a7 73 d6 7c d8 6a 
Chiper:		a3 2a ac 44 c0 23 98 a6 df 13 10 4c 4f 55 22 72
```

#### Test 4
```
Key: 	        62 b1 74 a6 6b bf 11 62 e7 67 d2 ff 62 1f e1 90 
Nonce:		3b 8d 01 ed 53 af aa 21 72 b3 54 f7 a8 27 e0 82 
Out:		68 b6 49 8b 4d 14 63 4f ae 87 77 3a 72 68 f4 66 
Plaintext:	5b 4a 02 47 04 26 3f 1e 5d 87 74 3d 3b f5 a8 53 
Chiper:		33 fc 4b cc 49 32 5c 51 f3 00 03 07 49 9d 5c 35 
```




# VivadoHLS

La top function `void single_block_AES_encrypt(hls::stream<stream_type> &i_plaintext, hls::stream<stream_type> &cipher)` implementa un IPCore che cifra un singolo blocco di plaintext da 128 con AES in modalità ECB usando una chiave da 128 bit.

- plaintext e chiper vengono comunicati su due interfacce AXI Stream

- La chiave è cablata all'interno dell'IPCore e non può essere modificata a meno di non rigenerare l'IPCore

- plaintext deve essere necessariamente da 128 bit. Se necessario occorre fare il padding prima di inviarlo all'IPCore.



#### Modifiche apportate al sorgente C

- ho eliminato la funzione aes_init in aes.cpp perchè la sintesi HLS non ammette allocazione dinamica della memoria (aes_init faceva una malloc di w), e l'ho sostituita con un'allocazione statica dell'array w che serve per contenere la dimensione della chiave espansa (https://docs.xilinx.com/r/en-US/ug1399-vitis-hls/Dynamic-Memory-Usage). A seguito di questa modifica si possono usare SOLAMENTE chiavi da 128 bit

- Ho eliminato la funzione aes_init e Nk e Nr sono definiti staticamente con una #define in aes.h pari a 4 e 10 rispettivamente 

- La funzione single_block_CTR_encrypt(plaintext, chiper) utilizza parametri NON volatile (https://docs.xilinx.com/r/en-US/ug1399-vitis-hls/Understanding-Volatile-Data)

- La moltiplicazione su campo finito di Galois viene fatta mediante algoritmo (chiamata a funzione) e non lookup table perché saturava la RAM



# Pynq Execution

1. Importare sulla pynq l'immagine da cifrare

2. Avviare il client remoto src/client/ecb_image_decryption_network.py

3. eseguire il notebook

4. Verificare l'immagine arrivata (original_image.jpg)


### Test

- Cifratura immagine 40x30 pixel RGB in 0.16717195510864258 s

