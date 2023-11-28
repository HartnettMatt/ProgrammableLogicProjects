#include <stdio.h>
#include <stdint.h>
#include "address_map_arm.h"

#define ARRAY_SIZE 7

/* function prototypes */
void HEX_DISP(int, int, int, int, int, int);


int main(void){

    printf("Testing HEX displays:");
    char a = '4';
    char b = '5';
    char c = '7';
    HEX_DISP(1,2,3,4,5,6);    
    return 0;
}

void HEX_DISP(int c0, int c1, int c2, int c3, int c4, int c5) {
    volatile int * HEX3_HEX0_ptr = (int *)HEX3_HEX0_BASE;
    volatile int * HEX5_HEX4_ptr = (int *)HEX5_HEX4_BASE;
    unsigned char seven_seg_decode_table[] = {
        0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07,
        0x7F, 0x67, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    unsigned int hex3_0_segs =
        (seven_seg_decode_table[c3] << 24)
        | (seven_seg_decode_table[c2] << 16)
        | (seven_seg_decode_table[c1] << 8)
        | seven_seg_decode_table[c0];
    unsigned int hex5_4_segs = (seven_seg_decode_table[c5] << 8) | seven_seg_decode_table[c4];
    *(HEX3_HEX0_ptr) = hex3_0_segs;
    *(HEX5_HEX4_ptr) = hex5_4_segs;
}

