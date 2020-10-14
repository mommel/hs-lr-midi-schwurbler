/* !highlight cpp
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
#ifndef SCHWURBLER360_CONTROLLER_BUTTONCONTROLLER_H_
#define SCHWURBLER360_CONTROLLER_BUTTONCONTROLLER_H_

#include <Bounce2.h>

#include "Arduino.h"

// namespace controller {

/* !highlight cpp
 * Definiton of Callback Midi Trigger Callback
 * @param[int] MidiKey to be sent to
 * @param[bool] Trigger active or stop
 */
typedef void (*MidiTriggerCallbackHandler)(int, bool);

/**
 * Class manages Pushbuttons
 * After construct needs to be configured with Informations about
 * which Pin to Listen and where to send. SendsMidi Events on getData
 * triggered if status changed
 */
class ButtonController {
 public:

  /* !highlight cpp
   * Buttoncontroller constructor
   * @param amount amount of Buttons the controller should be able to handle
   * @param pinList List of pin numbers matches Button by Button e.g. {1, 2, 3}
   * @param midiValueList List of Midivalues matches Button by Button e.g. {21,
   * 22, 23} Hint on Buttonmapping:
   * First Entry of pinList will be matched to first entry of
   * midiValueList etc.
   *
   * Based on pinlist a debounced Array will be created in _button
   */
  ButtonController(int amount, std::initializer_list<int> pinList,
                   std::initializer_list<int> midiValueList)
      : kAmount_(amount) {
    this->pin_ = new int[amount];
    int counter = 0;
    for (int e : pinList) {
      this->pin_[counter] = e;
      ++counter;
    }
    this->midiValue_ = new int[amount];
    counter = 0;
    for (int e : midiValueList) {
      this->midiValue_[counter] = e;
      ++counter;
    }
    // TODO(mommel): With this block I'n pretty unhappy as it might leak - START
    Bounce bouncer[amount];
    counter = 0;
    for (int e : pinList) {
      bouncer[counter] = Bounce(e, this->kBounceTime_);
      ++counter;
    }
    this->button_ = &bouncer[amount];
    // TODO(mommel): With this block I'n pretty unhappy as it might leak - END
    this->midiTriggerCallback_ = NULL;
  };
  ButtonController(const ButtonController& obj);
  ~ButtonController() {
    delete[] this->button_;
    delete[] this->pin_;
    delete[] this->midiValue_;
  };

 private:
  const int kAmount_;
  int* pin_;
  int* midiValue_;
  Bounce* button_;
  MidiTriggerCallbackHandler midiTriggerCallback_;

  /**
   * Defined time to be set as debounce value
   */
  const int kBounceTime_ = 7;

 public:
  ButtonController& operator=(const ButtonController& t);
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
   * void *(int inControlNumber, bool isActive)
   * pointer to a function
   */
  void HandleMidiTriggerCallback(
      MidiTriggerCallbackHandler midiTriggerCallback);

  /**
   * Itterates over all buttons and checks for status changes.
   * uses callback function change
   */
  void GetData();
};
//}  // namespace controller
#endif  // SCHWURBLER360_CONTROLLER_BUTTONCONTROLLER_H_
