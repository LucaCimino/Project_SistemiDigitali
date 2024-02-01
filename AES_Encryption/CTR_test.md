- gcc gmult.c aes.c ctr_main.c -o ctr
- ./ctr plaintext.txt chiper.txt

### Test 1

Key:	        00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 
Nonce:		16 c7 22 4d 14 5a 26 75 00 00 00 00 00 00 00 00 
Out:		ce 08 c3 14 c4 27 f6 fb d7 b7 af 65 bd e4 96 c0 
Plaintext:	41 42 43 44 45 46 47 48 31 32 33 34 35 36 37 38  [ABCDEFGH12345678]
Chiper:		8f 4a 80 50 81 61 b1 b3 e6 85 9c 51 88 d2 a1 f8 


### Test 2

Key:            f3 91 02 03 04 72 bd 07 e1 aa 00 65 18 86 6e 7c 
Nonce:		05 f1 22 4d 73 5a 26 44 a8 7e c6 d5 75 71 b2 73 
Out:		ae 84 89 76 df 1c bc 04 bf d7 50 a5 f7 b4 31 c0 
Plaintext:	71 77 65 72 74 79 75 69 6f 70 61 73 64 66 67 66 [qwertyuiopasdfgf]
Chiper:		df f3 ec 04 ab 65 c9 6d d0 a7 31 d6 93 d2 56 a6 


### Test 3

Key:	        63 d3 71 e3 6b b2 12 85 e7 67 d2 ff 11 15 e3 ab 
Nonce:		73 fb 21 4d 00 aa 59 b1 a8 74 86 f2 98 72 ea 73 
Out:		a7 9e fa aa d7 85 f2 18 8c 3b b7 3f 99 29 fa 18 
Plaintext:	04 b4 56 ee 17 a6 6a be 53 28 a7 73 d6 7c d8 6a 
Chiper:		a3 2a ac 44 c0 23 98 a6 df 13 10 4c 4f 55 22 72


### Test 4

Key: 	        62 b1 74 a6 6b bf 11 62 e7 67 d2 ff 62 1f e1 90 
Nonce:		3b 8d 01 ed 53 af aa 21 72 b3 54 f7 a8 27 e0 82 
Out:		68 b6 49 8b 4d 14 63 4f ae 87 77 3a 72 68 f4 66 
Plaintext:	5b 4a 02 47 04 26 3f 1e 5d 87 74 3d 3b f5 a8 53 
Chiper:		33 fc 4b cc 49 32 5c 51 f3 00 03 07 49 9d 5c 35 



