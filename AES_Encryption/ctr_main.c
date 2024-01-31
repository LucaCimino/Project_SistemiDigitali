#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

#include "aes.h"

#define DEBUG 1


void increment(uint8_t *nonce);

int main(int argc, char **argv) 
{
	if(argc != 3)
	{
		printf("Errore, Usage: ./ctr input_file output_file\n");
		exit(1);
	}

	uint8_t i;
	int bytes;
	int input_file, output_file;

	/* 128 bit key */
	/* uint8_t key[] = {
		0x00, 0x01, 0x02, 0x03, 
		0x04, 0x05, 0x06, 0x07, 
		0x08, 0x09, 0x0a, 0x0b, 
		0x0c, 0x0d, 0x0e, 0x0f}; */
	
	/* 192 bit key */
	/* uint8_t key[] = {
		0x00, 0x01, 0x02, 0x03,
		0x04, 0x05, 0x06, 0x07,
		0x08, 0x09, 0x0a, 0x0b,
		0x0c, 0x0d, 0x0e, 0x0f,
		0x10, 0x11, 0x12, 0x13,
		0x14, 0x15, 0x16, 0x17}; */
	
	/* 256 bit key */
	uint8_t key[] = {
		0x00, 0x01, 0x02, 0x03,
		0x04, 0x05, 0x06, 0x07,
		0x08, 0x09, 0x0a, 0x0b,
		0x0c, 0x0d, 0x0e, 0x0f,
		0x10, 0x11, 0x12, 0x13,
		0x14, 0x15, 0x16, 0x17,
		0x18, 0x19, 0x1a, 0x1b,
		0x1c, 0x1d, 0x1e, 0x1f};

	
	uint8_t in[16]; 	// 128 bit
	uint8_t out[16]; 
	uint8_t chiper[16];    

	uint8_t *w; // expanded key
	w = aes_init(sizeof(key));
	aes_key_expansion(key, w);


	printf("Key:\n");
    for (i = 0; i < 8; i++) {
        printf("%02x %02x %02x %02x ", key[4*i+0], key[4*i+1], key[4*i+2], key[4*i+3]);
    }
	printf("\n");
	
	// ---------------------------- CTR -----------------------------

	/* 
		Nonce deve essere casuale e imprevedibile
		Mettere gli ultimi 64 bit a 0
	*/
	uint8_t nonce[] = {
		0x16, 0xc7, 0x22, 0x4d,
		0x14, 0x5a, 0x26, 0x75,
		0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00};


	input_file = open(argv[1], O_RDONLY);
	output_file = open(argv[2], O_WRONLY | O_CREAT, 0664);
	

	while((bytes = read(input_file, in, 16)) > 0)
	{
		#ifdef DEBUG
			printf("Nonce:\t");
			for (i = 0; i < 4; i++) 
				printf("%02x %02x %02x %02x ", nonce[4*i+0], nonce[4*i+1], nonce[4*i+2], nonce[4*i+3]);
			printf("\n");
		#endif

		aes_cipher(nonce, out, w);

		#ifdef DEBUG
			printf("Out:\t");
			for (i = 0; i < 4; i++) 
				printf("%02x %02x %02x %02x ", out[4*i+0], out[4*i+1], out[4*i+2], out[4*i+3]);
			printf("\n");
		#endif

		/*
			All'ultima iterazione bytes può essere minore di 16
			I bytes letti sono da in[0] fino a in[bytes-1] compreso
		*/
		for(i = 0; i < bytes ; i--)
		{
			chiper[i] =  in[i] ^ out[i];
		}

		write(output_file, chiper, bytes);

		#ifdef DEBUG
			printf("Plaintext:\t");
			for (i = 0; i < bytes; i++) 
				printf("%02x ", in[i]);
			printf("\n");

			printf("Chiper:\t");
			for (i = 0; i < bytes; i++) 
				printf("%02x ", chiper[i]);
			printf("\n");

			printf("\n");
		#endif

		increment(nonce);
	}

	free(w);

	return 0;
}




/*
	Increment Nonce stored as uint8_t[16]
*/
void increment(uint8_t *nonce)
{
    int i;

    for(i = 15; i >= 0; i--)
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


