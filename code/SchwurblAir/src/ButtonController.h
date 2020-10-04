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
 * @file ButtonController.h
 *
 * @brief Handles all about the Pushbuttons
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#pragma once
#ifndef __BUTTONCONTROLLER__
#define __BUTTONCONTROLLER__
#include <Arduino.h>
#include <Bounce2.h>

#include "MidiController.h"
#include "main.h"

/**
 * Class manages Pushbuttons
 * After construct needs to be configured with Informations about
 * which Pin to Listen and where to send. SendsMidi Events on getButtonData
 * triggered if status of a button changed
 */
class ButtonController {
 public:
  ButtonController();
  /**
   * Configurates the Buttonhandles
   * @param MidiController pointer to initialized and configured MidiController
   * @param setDigitalButtonController Debounced Array of ButtonPins
   * @param setButtonControllerPins Array of ButtonPins - will be mapped to
   * controlNumbers
   * @param setControlNumbers Array of Midi Control Ids - will be mapped to
   * buttonControllerPins
   * The amount of entries incontrolNumbers and buttonControllerPins must match
   * @param setMidiChannel The Midichannel where the event will be sent to
   */
  void configure(MidiController *ptrMidiControl,
                 Bounce setDigitalButtonController, int setButtonControllerPins,
                 int setControlNumbers, int setMidiChannel);

 private:
  bool available;
  MidiController midiControl;
  Bounce digitalButtonController[AMOUNT_OF_DIGITAL_BUTTONCONTROLLER];
  int buttonControllerPins[];
  int controlNumbersMap[];
  int midiChannel;

 public:
  /**
   * Itterates over all buttons and checks for status changes.
   * Sends Midi Events
   */
  void getButtonData();

  /**
   * To check if configuration worked
   */
  bool isAvailable();
};  // class ButtonController

#endif  // __BUTTONCONTROLLER__
