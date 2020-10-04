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
#include "main.h"

ButtonController::ButtonController() { available = false; }

void ButtonController::configure(MidiController *ptrMidiControl,
                                 Bounce setDigitalButtonController,
                                 int setButtonControllerPins,
                                 int setControlNumbers, int setMidiChannel) {
  midiControl = *ptrMidiControl;
  digitalButtonController[AMOUNT_OF_DIGITAL_BUTTONCONTROLLER] =
      setDigitalButtonController;
  buttonControllerPins[AMOUNT_OF_DIGITAL_BUTTONCONTROLLER] =
      setButtonControllerPins;
  controlNumbersMap[AMOUNT_OF_DIGITAL_BUTTONCONTROLLER] = setControlNumbers;
  midiChannel = setMidiChannel;

  for (int digitalControllerID = 0;
       digitalControllerID < AMOUNT_OF_DIGITAL_BUTTONCONTROLLER;
       digitalControllerID++) {
    pinMode(buttonControllerPins[digitalControllerID], INPUT_PULLUP);
  }
  available = true;
}

bool ButtonController::isAvailable() { return available; }

void ButtonController::getButtonData() {
  for (int buttonControllerId = 0;
       buttonControllerId < AMOUNT_OF_DIGITAL_BUTTONCONTROLLER;
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
