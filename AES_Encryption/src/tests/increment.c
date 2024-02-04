#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>


void increment(uint8_t *nonce);

int main()
{
    int i;
    uint8_t nonce[] = {
		0x16, 0xff, 0x22, 0x4d,
		0x14, 0x5a, 0x26, 0x75,
		0x00, 0x12, 0x99, 0xff,
		0xff, 0xfe, 0xff, 0xff};

    for(i = 0; i < 4; i++) {
        printf("%02x %02x %02x %02x ", nonce[4*i+0], nonce[4*i+1], nonce[4*i+2], nonce[4*i+3]);
    }
    printf("\n");

    increment(nonce);

    for(i = 0; i < 4; i++) {
        printf("%02x %02x %02x %02x ", nonce[4*i+0], nonce[4*i+1], nonce[4*i+2], nonce[4*i+3]);
    }
    printf("\n");

    increment(nonce);

    for(i = 0; i < 4; i++) {
        printf("%02x %02x %02x %02x ", nonce[4*i+0], nonce[4*i+1], nonce[4*i+2], nonce[4*i+3]);
    }
    printf("\n");

    increment(nonce);

    for(i = 0; i < 4; i++) {
        printf("%02x %02x %02x %02x ", nonce[4*i+0], nonce[4*i+1], nonce[4*i+2], nonce[4*i+3]);
    }
    printf("\n");
    
}


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
