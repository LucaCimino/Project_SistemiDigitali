#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>




int main()
{
    int i;

    uint8_t a = 0x8d;
    uint8_t b = 0x51;

    uint8_t c = a^b;

    printf("%02x XOR %02x = %02x\n", a, b, c);
    
    
}
