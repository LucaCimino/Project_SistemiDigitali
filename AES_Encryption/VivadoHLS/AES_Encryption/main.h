#include <hls_stream.h>
#include <stdint.h>
#include <ap_int.h>

#define BLOCK_SIZE 16 // bytes

struct stream_type {
	uint8_t data;
	ap_uint<1> user;  // USER signal
	ap_uint<1> last;  // TLAST signal
};

/*
 * Funzione che implementa la cifratura con AES su uno stream di bytes singolo blocco di testo
 *
 * Input:
 *   - plaintext -> testo da cifrare
 *
 * Output:
 *   - cipher    -> testo cifrato
 *
 */

void AES_encryption(hls::stream<stream_type> &i_plaintext, hls::stream<stream_type> &cipher);
