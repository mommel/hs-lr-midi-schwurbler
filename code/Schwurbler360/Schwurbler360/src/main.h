#ifndef __MAIN__
#define __MAIN__

#include <Arduino.h>

#include "usb_names.h"

class RotaryController {
 public:
  RotaryController(){};

 private:
  int amount = 0;
}

class ButtonController {
 public:
  ButtonController(){};

 private:
  int _amount = 14;
  const int buttonControllerPin[_amount] = {0, 1, 2, 3,  4,  5,  6,
                                            7, 8, 9, 10, 11, 12, 14};
  const int controlNumbersDigital[_amount] = {1, 2, 3,  4,  5,  6,  7,
                                              8, 9, 10, 11, 12, 13, 14};
};

#endif  // __MAIN__
