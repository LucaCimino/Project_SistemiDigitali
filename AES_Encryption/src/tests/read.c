#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#include <fcntl.h>
#include <unistd.h>

int main()
{
    int bytes, i;
    int input_file, output_file;

    uint8_t in[16]; // 128 bit

    input_file = open("prova.txt", O_RDONLY);

    bytes = read(input_file, in, 16);

    printf("Letti %d bytes\n", bytes);

    printf("in[0] = %02x\n", in[0]);
    printf("in[1] = %02x\n", in[1]);
    printf("in[15] = %02x\n", in[15]);
    

    for(i = 0; i < 4; i++) {
        printf("%02x %02x %02x %02x ", in[4*i+0], in[4*i+1], in[4*i+2], in[4*i+3]);
    }
}