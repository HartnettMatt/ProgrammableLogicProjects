#include "address_map_arm.h"

extern volatile int key_dir;
extern volatile int pattern;
extern volatile int hex0;
extern volatile int hex1;
extern volatile int hex2;
extern volatile int hex3;
extern volatile int hex4;
extern volatile int hex5;
/*****************************************************************************
 * Interval timer interrupt service routine
 *
 * Shifts a PATTERN being displayed on the LED lights. The shift direction
 * is determined by the external variable key_dir.
 *
******************************************************************************/
/* function prototypes */
void HEX_DISP(int, int, int, int, int, int);

void interval_timer_ISR()
{
    volatile int * interval_timer_ptr = (int *)TIMER_BASE;

    *(interval_timer_ptr) = 0; // Clear the interrupt

    HEX_DISP(hex0, hex1, hex2, hex3, hex4, hex5);
    if(key_dir == 0){
      if(hex0 < 9){
        hex0 = hex0 + 1;
      } else {
        hex0 = 0;
        if(hex1 < 9){
          hex1 = hex1 + 1;
        } else {
          hex1 = 0;
          if(hex2 < 9){
            hex2 = hex2 + 1;
          } else {
            hex2 = 0;
            if(hex3 < 5){
              hex3 = hex3 + 1;
            } else {
              hex3 = 0;
              if(hex4 < 9){
                hex4 = hex4 + 1;
              } else {
                hex4 = 0;
                if(hex5 < 5){
                  hex5 = hex5 + 1;
                } else {
                  hex5 = 0;
                }
              }
            }
          }
        }
      }
    }

    return;
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
