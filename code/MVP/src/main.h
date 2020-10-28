
#ifndef MVP_SRC_MAIN_H
#define MVP_SRC_MAIN_H
#include "Arduino.h"

#include "controller/button_controller.h"

#include <Bounce2.h>
#include <MIDI.h>
#include <ResponsiveAnalogRead.h>

void sendMidiTrigger(int inControlNumber, bool isActive, int sendChannelID);

void sendMidiValueChange(int inControlNumber, byte controllerValue,
                         int sendChannelID);

void getPotiData();

void getButtonData();

#endif  // MVP_SRC_MAIN_H
