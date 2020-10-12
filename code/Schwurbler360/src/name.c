// This code is only supported by Teensy 32 bit MCUs and is used to
// define the name of the MIDI device
#ifdef TEENSY
#include "usb_names.h"

#define MIDI_NAME                                                       \
        {                                                               \
                'S','c','h','w','u','r','b', 'l', 'e', 'r', '3','6','0' \
        }
#define MIDI_NAME_LEN  13

#define MANUFACTURER_NAME                                               \
        {                                                               \
                'H','a','p','p','y',' ',                                \
                'S','h','o','o','t','i', 'n', 'g'                       \
        }
#define MANUFACTURER_NAME_LEN 14

#define SERIAL_NUMBER                                                   \
	{                                                               \
		'3', '6', '0', '-', 'V', '2', '0', '0', '0', '0'        \
	}
#define SERIAL_NUMBER_LEN 10

struct usb_string_descriptor_struct usb_string_product_name = {
        2 + MIDI_NAME_LEN * 2,
        3,
        MIDI_NAME
};
struct usb_string_descriptor_struct usb_string_manufacturer_name = {
	2 + MANUFACTURER_NAME_LEN * 2,
	3,
	MANUFACTURER_NAME};

struct usb_string_descriptor_struct usb_string_serial_number = {
	2 + SERIAL_NUMBER_LEN * 2,
	3,
	SERIAL_NUMBER};
#endif
