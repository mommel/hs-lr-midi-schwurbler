#ifndef _USERS_MANUELBRAUN_DOCUMENTS_SANDBOX_HS_LR_MIDI_SCHWURBLER_CODE_MVP_SRC_MAIN_H
#define _USERS_MANUELBRAUN_DOCUMENTS_SANDBOX_HS_LR_MIDI_SCHWURBLER_CODE_MVP_SRC_MAIN_H

#include <Arduino.h>

void sendMidiTrigger(int inControlNumber, bool isActive, int sendChannelID);

void sendMidiValueChange(int inControlNumber, byte controllerValue,
                         int sendChannelID);

void getPotiData();

void getButtonData();

#endif  // _USERS_MANUELBRAUN_DOCUMENTS_SANDBOX_HS_LR_MIDI_SCHWURBLER_CODE_MVP_SRC_MAIN_H
