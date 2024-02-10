#include "main.h"
#include <cstdio>

#define PARALLELISMO 450   //  450 / 6 = 75

int main()
{
	/* 4096 Byte plaintext */
	uint8_t plaintext[] = {
		0x04, 0xb4, 0x56, 0xee,
		0x17, 0xa6, 0x6a, 0xbe,
		0x53, 0x28, 0xa7, 0x73,
		0xd6, 0x7c, 0xd8, 0x6a,  // 1 blocco  = 16 Bytes
        0x33, 0xdd, 0x56, 0xee,
		0x17, 0xa6, 0x1a, 0x13,
		0x32, 0x23, 0xa7, 0x73,
		0x65, 0x1c, 0xd2, 0x41,  // 2 blocco
		0xc4, 0x74, 0x15, 0x74,
		0xa7, 0xa6, 0xc1, 0xa3,
		0x73, 0x28, 0x17, 0x76,
		0x73, 0xbc, 0x3f, 0xe1,  // 3 blocco
	    0x36, 0xc5, 0x74, 0x14,
		0xf7, 0x90, 0xac, 0xb1,
		0x02, 0x2e, 0xf6, 0x12,
		0x83, 0x6e, 0x31, 0xe6,  // 4 blocco = 64 Bytes
		0x62, 0xc2, 0x17, 0x88,
		0xa7, 0xa6, 0xc1, 0x8f,
		0x73, 0x27, 0x1a, 0x72,
		0x99, 0x92, 0x2c, 0xa7,  // 5 blocco
		0x3f, 0x03, 0xbb, 0x6b,
		0xe1, 0x0f, 0xa0, 0x02,
		0x61, 0x2c, 0x86, 0x25,
		0x86, 0x34, 0x21, 0xa1}; // 6 blocco = 96 Bytes

	/* 5376 Bytes chiper */
	hls::stream<stream_type> cipher;

	int i, j, block;
	hls::stream<stream_type> i_plaintext;
	stream_type tmp;

	for(j = 0; j < PARALLELISMO/6 ; j++)
	{
		for(i = 0; i < BLOCK_SIZE*6; i++) {
			tmp.user = 1;
			tmp.data = plaintext[i];

			if( j == (PARALLELISMO/6) - 1 && i == (BLOCK_SIZE*6)-1)
				tmp.last = 1;
			else
				tmp.last = 0;

			i_plaintext.write(tmp);
		}
	}


	AES_encryption(i_plaintext, cipher);


	for(block = 0; block < PARALLELISMO; block++)
	{
		printf(" ------ BLOCK %d -------\n", block);
		printf("Plaintext:\t");
		for (i = 0; i < 4; i++) {
			printf("%02x %02x %02x %02x ", plaintext[(block % 6)*16 + 4*i+0], plaintext[(block % 6)*16 + 4*i+1],
										   plaintext[(block % 6)*16 + 4*i+2], plaintext[(block % 6)*16 + 4*i+3]);
		}
		printf("\n");

		uint8_t output[BLOCK_SIZE];

		printf("TLAST : \t");
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
		printf("\n\n");
	}

}



