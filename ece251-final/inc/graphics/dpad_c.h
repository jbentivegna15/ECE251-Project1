#define dpad_c_width 16
#define dpad_c_height 16
static SI_SEGMENT_VARIABLE(dpad_c_bits[], const uint8_t, SI_SEG_CODE) = {
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x01, 0x80, 0x03, 0xC0, 0x03, 0xC0, 0x01, 0x80, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
