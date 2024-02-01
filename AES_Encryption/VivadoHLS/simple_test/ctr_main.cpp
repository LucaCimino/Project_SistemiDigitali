#include "ctr_main.h"

void encrypt(volatile uint8_t *plaintext, volatile uint8_t *key, volatile uint8_t *chiper)
{
	int i;

	for(i = 0; i < 16 ; i++)
	{
		chiper[i] =  plaintext[i] ^ key[i];
	}

	return;
}
