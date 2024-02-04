# IPCore for single block (128 bit) encryption with AES CTR mode, using 128 bit keys

### ctr_main.cpp

funzione ````void single_block_CTR_encrypt(hls::stream<stream_type> &i_plaintext, hls::stream<stream_type> &cipher);``

plaintext e chiper vengono comunicati su due interfacce AXI Stream

#### Note

- plaintext DEVE essere di 128 bit (ovvero il padding, se necessario, deve essere fatto prima)

- si possono usare SOLO chiavi da 128 bit

- CHIAVE e NONCE sono cablati all'interno dell'IPCore (il nonce viene incrementato di 1 ad ogni chiamata)

#### Modifiche

- ho eliminato la funzione aes_init in aes.cpp perchè la sintesi HLS non ammette allocazione dinamica della memoria (aes_init faceva una malloc di w), e l'ho sostituita con un'allocazione statica dell'array w che serve per contenere la dimensione della chiave espansa
https://docs.xilinx.com/r/en-US/ug1399-vitis-hls/Dynamic-Memory-Usage

- a seguito di questo modifica si possono usare SOLAMENTE chiavi da 128 bit

- Ho eliminato la funzione aes_init e Nk e Nr sono definiti staticamente con una #define in aes.h pari a 4 e 10 rispettivamente 

- La funzione single_block_CTR_encrypt(plaintext, chiper) utilizza parametri NON volatile (https://docs.xilinx.com/r/en-US/ug1399-vitis-hls/Understanding-Volatile-Data)

- La moltiplicazione su campo finito di Galois viene fatta mediante algoritmo (chiamata a funzione) e non lookup table perché saturava la RAM
