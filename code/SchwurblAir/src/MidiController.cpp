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
 * @file MidiController.cpp
 *
 * @brief Handles the Midi events
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#include <Arduino.h>
#include <BLE-MIDI.h>
#include <MIDI.h>

#include "HelperFunctions.h"
#include "MidiController.h"

MidiController::MidiController() { int foo; }

void MidiController::configure(int setActivationVelocity,
                               int setSendChannelID) {
  available = false;
  activationVelocity = setActivationVelocity;
  available = true;
  sendChannelID = setSendChannelID;
}

void MidiController::sendMidiTrigger(int inControlNumber, bool isActive) {
  if (isActive) {
    // MIDI.sendNoteOn(inControlNumber, activationVelocity, sendChannelID);
  } else {
    // MIDI.sendNoteOff(inControlNumber, 0, sendChannelID);
  }
}

void MidiController::sendMidiValueChange(int inControlNumber,
                                         byte controllerValue) {
  DPRINT(inControlNumber);
  DPRINT(F(" "));
  DPRINT(controllerValue);
  DPRINTLN(F(" MIDI Sent"));
  // MIDI.sendControlChange(inControlNumber, controllerValue, sendChannelID);
}

bool MidiController::isAvailable() { return available; }
