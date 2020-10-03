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
 * @file ButtonController.cpp
 *
 * @brief Handles all about the Pushbuttons
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#include <Arduino.h>

#include "ButtonController.h"
#include "HelperFunctions.h"
#include "MidiController.h"

ButtonController::ButtonController(){};
void ButtonController::configure(MidiController *ptrMidiControl,
                                 Bounce setDigitalButtonController,
                                 int setButtonControllerPins,
                                 int setControlNumbers,
                                 int setAmountOfDigitalButtonController,
                                 int setMidiChannel) {
  available = false;

  midiControl = *ptrMidiControl;
  digitalButtonController[setAmountOfDigitalButtonController] =
      setDigitalButtonController;
  buttonControllerPins[setAmountOfDigitalButtonController] =
      setButtonControllerPins;
  controlNumbersMap[setAmountOfDigitalButtonController] = setControlNumbers;
  midiChannel = setMidiChannel;
  amountOfDigitalButtonController = setAmountOfDigitalButtonController;

  for (int digitalControllerID = 0;
       digitalControllerID < amountOfDigitalButtonController;
       digitalControllerID++) {
    pinMode(buttonControllerPins[digitalControllerID], INPUT_PULLUP);
  }

  available = true;
}

bool ButtonController::isAvailable() { return available; };

void ButtonController::getButtonData() {
  for (int buttonControllerId = 0;
       buttonControllerId < amountOfDigitalButtonController;
       buttonControllerId++) {
    digitalButtonController[buttonControllerId].update();

    if (digitalButtonController[buttonControllerId].fallingEdge()) {
      // On Button push > FallingEdge
      // Pin pulled to gnd
      midiControl.sendMidiTrigger(buttonControllerId, true);
    }
    if (digitalButtonController[buttonControllerId].risingEdge()) {
      // On Button release > RisingEdge
      // Pin rising up again thru Internal pullup
      midiControl.sendMidiTrigger(buttonControllerId, false);
    }
  }
}
