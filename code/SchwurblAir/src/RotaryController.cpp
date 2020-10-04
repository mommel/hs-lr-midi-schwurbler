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
 * @file RotaryController.cpp
 *
 * @brief Handles all about the Rotary Controllers
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#include <Arduino.h>
#include <ResponsiveAnalogRead.h>

#include "HelperFunctions.h"
#include "MidiController.h"
#include "RotaryController.h"
#include "main.h"

RotaryController::RotaryController() {}

void RotaryController::configure(MidiController *ptrMidiControl,
                                 ResponsiveAnalogRead setAnalogPotiController,
                                 int setPotiControllerPins,
                                 int setControlNumbersAnalog,
                                 int setMidiSendChannel) {
  available = false;

  midiControl = *ptrMidiControl;
  analogPotiController[AMOUNT_OF_ROTARYCONTROLLER] = setAnalogPotiController;
  potiControllerPins[AMOUNT_OF_ROTARYCONTROLLER] = setPotiControllerPins;
  controlNumbersAnalogMap[AMOUNT_OF_ROTARYCONTROLLER] = setControlNumbersAnalog;
  midiChannel = setMidiSendChannel;
  byte init = 0;
  for (int i = 0; i < AMOUNT_OF_ROTARYCONTROLLER; i++) {
    potiData[i] = init;
    potiDataLag[i] = init;
  }
  available = true;
}

bool RotaryController::isAvailable() { return false; }

void RotaryController::getPotiData() {
  for (int potiControllerID = 0; potiControllerID < AMOUNT_OF_ROTARYCONTROLLER;
       potiControllerID++) {
    analogPotiController[potiControllerID].update();
    if (analogPotiController[potiControllerID].hasChanged()) {
      potiData[potiControllerID] =
          analogPotiController[potiControllerID].getValue() >> 3;
      if (potiData[potiControllerID] != potiDataLag[potiControllerID]) {
        potiDataLag[potiControllerID] = potiData[potiControllerID];

        int controlNumber = controlNumbersAnalogMap[potiControllerID];
        int controllerValue = potiData[potiControllerID];

        midiControl.sendMidiValueChange(controlNumber, controllerValue);
      }
    }
  }
}
