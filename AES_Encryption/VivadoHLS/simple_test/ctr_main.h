#include "ap_int.h"
#include <unistd.h>

/*
 * Funzione che dati due dati a 128 bit: plaintext e chiave
 * restuisce un chiper da 128 bit dato dallo XOR tra plaintext e chiave
 */

void encrypt(volatile uint8_t *plaintext, volatile uint8_t *key, volatile uint8_t *chiper);
