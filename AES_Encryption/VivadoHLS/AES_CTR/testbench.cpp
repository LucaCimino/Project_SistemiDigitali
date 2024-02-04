#include "ctr_main.h"
#include <cstdio>

int main()
{

	/* 128 bit plaintext */
	uint8_t plaintext[] = {
		0x04, 0xb4, 0x56, 0xee,
		0x17, 0xa6, 0x6a, 0xbe,
		0x53, 0x28, 0xa7, 0x73,
		0xd6, 0x7c, 0xd8, 0x6a};

	/* 128 bit chiper */
	hls::stream<stream_type> cipher;


	/* Input:
	 *   - plaintext -> 128 bit di testo da cifrare
	 *
	 * Output:
	 *   - cipher    -> 128 bit di testo cifrato
	 *
	 */

	int i;
	hls::stream<stream_type> i_plaintext;
	stream_type tmp;

	for(i = 0; i < BLOCK_SIZE; i++) {
		tmp.user = 1;
		tmp.data = plaintext[i];

		if(i == BLOCK_SIZE-1)
			tmp.last = 1;
		else
			tmp.last = 0;

		i_plaintext.write(tmp);
	}


	single_block_CTR_encrypt(i_plaintext, cipher);

	printf("Plaintext:\t");
    for (i = 0; i < 4; i++) {
        printf("%02x %02x %02x %02x ", plaintext[4*i+0], plaintext[4*i+1], plaintext[4*i+2], plaintext[4*i+3]);
    }
	printf("\n");

	uint8_t output[BLOCK_SIZE];

	printf("TLAST : ");
	for(i = 0; i < BLOCK_SIZE; i++) {
		tmp = cipher.read();
		output[i] = tmp.data;
		printf("%d ", (int)tmp.last);
	}
	printf("\n");

	printf("Cipher:\t\t");
	for (i = 0; i < 4; i++) {
	    printf("%02x %02x %02x %02x ", output[4*i+0], output[4*i+1], output[4*i+2], output[4*i+3]);
	}
	printf("\n");

	printf("---------------\n");

	for(i = 0; i < BLOCK_SIZE; i++) {
		tmp.user = 1;
		tmp.data = plaintext[i];

		if(i == BLOCK_SIZE-1)
			tmp.last = 1;
		else
			tmp.last = 0;

		i_plaintext.write(tmp);
	}

	// 2 iterazione
	single_block_CTR_encrypt(i_plaintext, cipher);

	printf("Plaintext:\t");
	for (i = 0; i < 4; i++) {
	    printf("%02x %02x %02x %02x ", plaintext[4*i+0], plaintext[4*i+1], plaintext[4*i+2], plaintext[4*i+3]);
	}
	printf("\n");

	for(i = 0; i < BLOCK_SIZE; i++) {
		tmp = cipher.read();
		output[i] = tmp.data;
	}

	printf("Cipher:\t\t");
	for (i = 0; i < 4; i++) {
	    printf("%02x %02x %02x %02x ", output[4*i+0], output[4*i+1], output[4*i+2], output[4*i+3]);
	}
	printf("\n");

}



