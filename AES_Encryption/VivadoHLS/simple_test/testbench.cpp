#include "ctr_main.h"


int main()
{
	/* 128 bit key */
	uint8_t key[] = {
		0x00, 0x01, 0x02, 0x03,
		0x04, 0x05, 0x06, 0x07,
		0x08, 0x09, 0x0a, 0x0b,
		0x0c, 0x0d, 0x0e, 0x0f};

	/* 128 bit plaintext */
	uint8_t plaintext[] = {
		0x01, 0x02, 0x03, 0x04,
		0x05, 0x06, 0x07, 0x08,
		0x09, 0x0a, 0x0b, 0x0c,
		0x0d, 0x0e, 0x0f, 0x10};

	uint8_t chiper[16];


	encrypt(plaintext, key, chiper);

	int i;

	printf("Plaintext:\t");
    for (i = 0; i < 4; i++) {
        printf("%02x %02x %02x %02x ", plaintext[4*i+0], plaintext[4*i+1], plaintext[4*i+2], plaintext[4*i+3]);
    }
	printf("\n");

	printf("Key:\t\t");
	for (i = 0; i < 4; i++) {
	    printf("%02x %02x %02x %02x ", key[4*i+0], key[4*i+1], key[4*i+2], key[4*i+3]);
	}
	printf("\n");

	printf("Chiper:\t\t");
	for (i = 0; i < 4; i++) {
	    printf("%02x %02x %02x %02x ", chiper[4*i+0], chiper[4*i+1], chiper[4*i+2], chiper[4*i+3]);
	}
	printf("\n");

}



