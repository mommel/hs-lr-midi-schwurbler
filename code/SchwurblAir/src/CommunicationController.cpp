/**
 * Der Schwurbler
 *
 * This product includes software developed by the
 * HappyShooting Community (http://happyshooting.de/).
 *
 * LICENSE
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the (CC BY-NC-SA 4 0)
 * Creative Commons Attribution-NonCommercial-ShareAlike 4 0 International
 * as published by Creative Commons Corporation; either version 4 of the
 * License, or (at your option) any later version
 *
 * DISCLAIMER
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT IN
 * NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
 * USE OR OTHER DEALINGS IN THE SOFTWARE
 *
 * @file CommunicationController.cpp
 *
 * @brief Handles Communication events between the computer and the device
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#include <Arduino.h>

#include "CommunicationController.h"
#include "HelperFunctions.h"

CommunicationController::CommunicationController() {}

void CommunicationController::configure(int setStatusLed) {
  statusLED = setStatusLed;
}

void CommunicationController::recieveNote(byte channel, byte note,
                                          byte velocity) {
  DPRINT(F("Incoming NoteOn  from channel:"));
  DPRINT(channel);
  DPRINT(F(" note:"));
  DPRINT(note);
  DPRINT(F(" velocity:"));
  DPRINTLN(velocity);
}

void CommunicationController::recieveNoteEnd(byte channel, byte note,
                                             byte velocity) {
  DPRINT(F("Incoming NoteOff  from channel:"));
  DPRINT(channel);
  DPRINT(F(" note:"));
  DPRINT(note);
  DPRINT(F(" velocity:"));
  DPRINTLN(velocity);
}

void CommunicationController::onConnectionChange(bool connectionState) {
  isConnected = connectionState;
  if (isConnected == true) {
    DPRINTLN(F("Connected"));
  } else {
    DPRINTLN(F("Disconnected"));
  }
  connectionBlink();
}

void CommunicationController::connectionBlink() {
  for (int i = 0; i < 3; i++) {
    digitalWrite(statusLED, (isConnected ? HIGH : LOW));
    delay(200);
    digitalWrite(statusLED, (isConnected ? LOW : HIGH));
    delay((isConnected ? 200 : 400));
  }
  digitalWrite(statusLED, (isConnected ? HIGH : LOW));
}
