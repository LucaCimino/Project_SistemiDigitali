#include "ctr_main.h"
#include "aes.h"

/*
 * ATTENZIONE: plaintext DEVE essere di 128 bit (ovvero il padding, se necessario, deve essere fatto prima)
 *             si possono usare SOLO chiavi da 128 bit
 */
void single_block_CTR_encrypt(hls::stream<stream_type> &i_plaintext, hls::stream<stream_type> &cipher)
{
	#pragma HLS INTERFACE axis port=i_plaintext
	#pragma HLS INTERFACE axis port=cipher

	#pragma HLS INTERFACE ap_ctrl_none port=return


	/* Input:
	 *   - plaintext -> 128 bit di testo da cifrare
	 *
	 * Output:
	 *   - cipher    -> 128 bit di testo cifrato
	 */


	/* 128 bit key */
	static uint8_t key[] = {
			0x63, 0xd3, 0x71, 0xe3,
			0x6b, 0xb2, 0x12, 0x85,
			0xe7, 0x67, 0xd2, 0xff,
			0x11, 0x15, 0xe3, 0xab};

	/* 128 bit nonce */
	static uint8_t nonce[] = {
			0x73, 0xfb, 0x21, 0x4d,
			0x00, 0xaa, 0x59, 0xb1,
			0xa8, 0x74, 0x86, 0xf2,
			0x98, 0x72, 0xea, 0x73};


	uint8_t plaintext[BLOCK_SIZE];
	uint8_t cipher_nonce[BLOCK_SIZE];   // 128 bit E(nonce)
	uint8_t out[BLOCK_SIZE];   		    // 128 bit di output
	int i;
	stream_type tmp;

	// Lettura del plaintext dallo stream di input
	for(i = 0; i < BLOCK_SIZE; i++) {
		tmp = i_plaintext.read();
		plaintext[i] = tmp.data;
	}

	uint8_t w[176];    // [Nb*(Nr+1)*4] expanded key

	aes_key_expansion(key, w);

	// cipher_nonce = E_key(nonce)
	aes_cipher(nonce, cipher_nonce, w);

	// out = plaintext XOR cipher_nonce
	for(i = 0; i < BLOCK_SIZE ; i++)
	{
		out[i] =  plaintext[i] ^ cipher_nonce[i];
	}

	// Scrittura sull'interfaccia AXI-Stream di output
	for(i = 0; i < BLOCK_SIZE; i++) {
		tmp.user = 1;
		tmp.data = out[i];

		if(i == BLOCK_SIZE-1)
			tmp.last = 1;
		else
			tmp.last = 0;

		cipher.write(tmp);
	}

	// Incremento il nonce di 1 per la successiva chiamata
	for(i = BLOCK_SIZE-1; i >= 0; i--)
    {
	    if(nonce[i] != 0xff)
	    {
	        nonce[i]++;
	        break;
	    }
	    else
	    {
	        nonce[i] = 0x00;
	    }
    }


	return;
}



