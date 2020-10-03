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
 * @file RotaryController.h
 *
 * @brief Handles all about the Rotary Controllers
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#pragma once
#ifndef __ROTARYCONTROLLER__
#define __ROTARYCONTROLLER__
#include <Arduino.h>

#include "MidiController.h"
#include "RotaryController.h"

/**
 * Class manages RotaryController
 * After construct needs to be configured with Informations about
 * which Pin to Listen and where to send. SendsMidi Events on getPotiData
 * triggered if the value of a rotary changed
 */
class RotaryController {
 public:
  RotaryController();

  /**
   * Configurates the Buttonhandles
   * @param MidiController pointer to initialized and configured MidiController
   * @param setAnalogPotiController Array of equalized RotaryPins
   * @param setPotiControllerPins Array of RotaryPins - will be mapped to
   * controlNumbersAnalog
   * @param setControlNumbersAnalog Array of Midi Control Ids - will be mapped
   * to potiControllerPins
   * @param setAmountOfPotiControllerInputs Reflects the amount of entries in
   * controlNumbersAnalog and potiControllerPins
   * @param setMidiSendChannel The Midichannel where the event will be sent to
   */
  void configure(MidiController *ptrMidiControl,
                 ResponsiveAnalogRead setAnalogPotiController,
                 int setPotiControllerPins, int setControlNumbersAnalog,
                 int setAmountOfPotiControllerInputs, int setMidiSendChannel);

 private:
  MidiController midiControl;
  ResponsiveAnalogRead analogPotiController[];
  int potiControllerPins[];
  int controlNumbersAnalogMap[];
  int amountOfPotiControllerInputs;
  int midiChannel;
  byte potiData[];
  byte potiDataLag[];
  bool available;

 public:
  /**
   * Itterates over all rotaries and checks for value changes.
   * Sends Midi Events
   */
  void getPotiData();

  /**
   * To check if configuration worked
   */
  bool isAvailable();
};  // class RotaryController

#endif  // __ROTARYCONTROLLER__
