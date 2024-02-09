#include "main.h"
#include "aes.h"


void AES_encryption(hls::stream<stream_type> &i_plaintext, hls::stream<stream_type> &cipher)
{
	#pragma HLS INTERFACE axis port=i_plaintext
	#pragma HLS INTERFACE axis port=cipher

	#pragma HLS INTERFACE ap_ctrl_none port=return

	/* 128 bit key */
	static uint8_t key[] = {
			0x63, 0xd3, 0x71, 0xe3,
			0x6b, 0xb2, 0x12, 0x85,
			0xe7, 0x67, 0xd2, 0xff,
			0x11, 0x15, 0xe3, 0xab};

	uint8_t plaintext[BLOCK_SIZE];      // 128 bit di input
	uint8_t out[BLOCK_SIZE];   		    // 128 bit di output
	int i, block;
	stream_type tmp;

	uint8_t w[176];    // [Nb*(Nr+1)*4] expanded key
	aes_key_expansion(key, w);

	/*
	 * Cifratura parallela di 450 blocchi
	 */
	loop: for(block = 0; block < 450; block++)
	{
	#pragma HLS unroll
		// Lettura del plaintext dallo stream di input
		for(i = 0; i < BLOCK_SIZE; i++) {
			tmp = i_plaintext.read();
			plaintext[i] = tmp.data;
		}

		// Cifratura
		aes_cipher(plaintext, out, w);

		// Scrittura sull'interfaccia AXI-Stream di output
		for(i = 0; i < BLOCK_SIZE; i++) {
			tmp.user = 1;
			tmp.data = out[i];

			if(i == BLOCK_SIZE-1 && block == 449)
				tmp.last = 1;
			else
				tmp.last = 0;

			cipher.write(tmp);
		}
	}

	return;
}



