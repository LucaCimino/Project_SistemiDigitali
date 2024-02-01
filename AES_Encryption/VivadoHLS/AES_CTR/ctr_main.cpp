#include "ctr_main.h"
#include "aes.h"

#include <unistd.h>

/*
 * ATTENZIONE: plaintext DEVE essere di 128 bit (ovvero il padding, se necessario, deve essere fatto prima)
 *             si possono usare SOLO chiavi da 128 bit
 */

void single_block_CTR_encrypt(uint8_t *plaintext, uint8_t *key,
		                      uint8_t *nonce, uint8_t *chiper)
{

	/* Input:
	 *   - nonce     -> 128 bit di nonce
	 *   - key       -> 128 bit di chiave
	 *   - plaintext -> 128 bit di testo da cifrare
	 *
	 * Output:
	 *   - chiper    -> 128 bit di testo cifrato
	 */

	int i;
	uint8_t out[16];   // 128 bit E(nonce)

	uint8_t w[176];
	//uint8_t w[Nb*(Nr+1)*4]; // expanded key
	aes_key_expansion(key, w);

	// out = E_key(nonce)
	aes_cipher(nonce, out, w);

	// chiper = plaintext XOR out
	for(i = 0; i < 16 ; i++)
	{
		chiper[i] =  plaintext[i] ^ out[i];
	}

	return;
}



