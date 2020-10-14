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
 * @brief Handles all about the Pushbuttons
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#pragma once
#ifndef SCHWURBLER360_CONTROLLER_ROTARYCONTROLLER_H_
#define SCHWURBLER360_CONTROLLER_ROTARYCONTROLLER_H_

// namespace controller {

#include <RotaryEncoder.h>

#include "Arduino.h"

/**
 * Definiton of Callback Value Change Callback
 * @param int MidiKey to be sent to
 * @param byte MidiValue
 */
typedef void (*MidiValueChangeCallbackHandler)(int, byte);

/**
 * Class manages RotaryController
 * After construct needs to be configured with Informations about
 * which Pin to Listen and where to send. SendsMidi Events on getData
 * triggered if status changed
 */
class RotaryController {
 public:
  /**
   * RotaryController constructor
   * @param amount amount of Buttons the controller should be able to handle
   * @param pinList List of pin numbers matches Button by Button e.g. {1, 2, 3}
   * @param midiValueList List of Midivalues matches Button by Button e.g. {21,
   * 22, 23} Hint on Buttonmapping:
   * First Entry of pinList will be matched to first entry of
   * midiValueList etc.
   *
   */
  RotaryController(int amount, std::initializer_list<int> pinList,
                   std::initializer_list<int> midiValueList)
      : kAmount_(amount) {
    this->pin_ = new int[amount];
    int counter = 0;
    for (int pin : pinList) {
      this->pin_[counter] = pin;
      ++counter;
    }
    this->midiValue_ = new int[amount];
    counter = 0;
    for (int e : midiValueList) {
      this->midiValue_[counter] = e;
      ++counter;
    }
    this->midiValueChangeCallback_ = NULL;
  };
  RotaryController(const RotaryController& obj);
  ~RotaryController(){};

 private:
  const int kAmount_;
  int* pin_;
  int* midiValue_;
  MidiValueChangeCallbackHandler midiValueChangeCallback_;

 public:
  RotaryController& operator=(const RotaryController& t);
  /**
   * Returns Buttons amount of controller
   */
  int GetAmount();

  /**
   * Returns the Pin matching to Button
   * @param identifier Identfies a button
   */
  int GetPin(int identifier);

  /**
   * Sets the callbackfunction to be called while getData
   * @param midiTriggerCallback
   * void *(int MidiKey, byte Midivalue);
   * pointer to a function
   */
  void HandleMidiValueChangeCallback(
      MidiValueChangeCallbackHandler midiValueChangeCallback);

  /**
   * Itterates over all buttons and checks for status changes.
   * uses callback function change
   */
  void GetData();
};
//}  // namespace controller
#endif  // SCHWURBLER360_CONTROLLER_ROTARYCONTROLLER_H_
