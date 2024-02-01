#include "ctr_main.h"

int main()
{
	/* 128 bit key */
	uint8_t key[] = {
		0x62, 0xb1, 0x74, 0xa6,
		0x6b, 0xbf, 0x11, 0x62,
		0xe7, 0x67, 0xd2, 0xff,
		0x62, 0x1f, 0xe1, 0x90};

	/* 128 bit plaintext */
	uint8_t plaintext[] = {
		0x5b, 0x4a, 0x02, 0x47,
		0x04, 0x26, 0x3f, 0x1e,
		0x5d, 0x87, 0x74, 0x3d,
		0x3b, 0xf5, 0xa8, 0x53};

	/* 128 bit nonce */
	uint8_t nonce[] = {
		0x3b, 0x8d, 0x01, 0xed,
		0x53, 0xaf, 0xaa, 0x21,
		0x72, 0xb3, 0x54, 0xf7,
		0xa8, 0x27, 0xe0, 0x82};

	/* 128 bit chiper */
	uint8_t chiper[16];


	/* Input:
	 *   - nonce     -> 128 bit di nonce
	 *   - key       -> 128 bit di chiave
	 *   - plaintext -> 128 bit di testo da cifrare
	 *
	 * Output:
	 *   - chiper    -> 128 bit di testo cifrato
	 *
	 */

	single_block_CTR_encrypt(plaintext, key, nonce, chiper);

	int i;

	printf("Key:\t\t");
	for (i = 0; i < 4; i++) {
	    printf("%02x %02x %02x %02x ", key[4*i+0], key[4*i+1], key[4*i+2], key[4*i+3]);
	}
	printf("\n");

	printf("Nonce:\t\t");
	for (i = 0; i < 4; i++) {
	    printf("%02x %02x %02x %02x ", nonce[4*i+0], nonce[4*i+1], nonce[4*i+2], nonce[4*i+3]);
	}
	printf("\n");

	printf("Plaintext:\t");
    for (i = 0; i < 4; i++) {
        printf("%02x %02x %02x %02x ", plaintext[4*i+0], plaintext[4*i+1], plaintext[4*i+2], plaintext[4*i+3]);
    }
	printf("\n");

	printf("Chiper:\t\t");
	for (i = 0; i < 4; i++) {
	    printf("%02x %02x %02x %02x ", chiper[4*i+0], chiper[4*i+1], chiper[4*i+2], chiper[4*i+3]);
	}
	printf("\n");

}



