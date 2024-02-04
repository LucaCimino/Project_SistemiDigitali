#include <hls_stream.h>
#include <stdint.h>
#include <ap_int.h>

#define BLOCK_SIZE 16 //bytes

struct stream_type {
	uint8_t data;
	ap_uint<1> user;  // USER signal
	ap_uint<1> last;  // TLAST signal
};

/*
 * Funzione che implementa la cifratura con AES in modalità CTR su un singolo blocco di testo
 *
 * Input:
 *   - plaintext -> 128 bit di testo da cifrare
 *
 * Output:
 *   - cipher    -> 128 bit di testo cifrato
 *
 */

void single_block_CTR_encrypt(hls::stream<stream_type> &i_plaintext, hls::stream<stream_type> &cipher);
