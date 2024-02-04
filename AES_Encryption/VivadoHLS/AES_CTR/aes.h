#include <stdint.h>
#include <stdlib.h>


/*
 * Number of columns (32-bit words) comprising the State. For this
 * standard, Nb = 4.
 */
#define Nb 4

/*
 * Number of 32-bit words comprising the Cipher Key. For this
 * standard, Nk = 4, 6, or 8.
 */
#define Nk 4

/*
 * Number of rounds, which is a function of  Nk  and  Nb (which is
 * fixed). For this standard, Nr = 10, 12, or 14.
 */
#define Nr 10


uint8_t *aes_init(size_t key_size);

void aes_key_expansion(uint8_t *key, uint8_t *w);

void aes_cipher(uint8_t *in, uint8_t *out, uint8_t *w);
