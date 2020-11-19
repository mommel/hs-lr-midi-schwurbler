
#ifndef MVP_SRC_MAIN_H
#define MVP_SRC_MAIN_H
#include "Arduino.h"

#define arrayCount(x) (sizeof(x) / sizeof(x)[0])
#define ENCODER_DO_NOT_USE_INTERRUPTS
#include <SchwurblerController.h>
#include <ButtonController.h>
#include <Encoder.h>
#include <MIDI.h>

void sendMidiTrigger(int inControlNumber, bool isActive, int sendChannelID);

void sendMidiValueChange(int inControlNumber, byte controllerValue,
                         int sendChannelID);

#endif  // MVP_SRC_MAIN_H
