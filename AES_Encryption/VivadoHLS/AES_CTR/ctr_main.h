#include "ap_int.h"
#include <unistd.h>

/*
 * Funzione che implementa la cifratura con AES in modalità CTR su un singolo blocco di testo
 *
 * Input:
 *   - nonce     -> 128 bit di nonce
 *   - key       -> 128 bit di chiave
 *   - plaintext -> 128 bit di testo da cifrare
 *
 * Output:
 *   - chiper    -> 128 bit di testo cifrato
 *
 */

void single_block_CTR_encrypt(uint8_t *plaintext, uint8_t *key,
		                      uint8_t *nonce, uint8_t *chiper);
