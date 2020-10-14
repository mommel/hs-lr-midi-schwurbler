/******************************************************************************
 *            :+==+                                           -:              *
 *       -+#=+-  -=-    -*                             -@:   +W+              *
 *    -=#+-     -=-     =*         =:                 -@:   =*@-              *
 *  -#*-               -#:   :*    =--:               +#  -#-*#               *
 * -#:           :=@#=+:@+#= =*=@--= #+ ++     *W@#*++#==*@- =* *@: -=W@#*++*-*
 *  :=====**+::=*-+#:==+W* =-*@+-@#: #==-*#+*=**@-    :-:W=  #+-@===:*@-      *
 *          :#::#-     :=   -                  --      :W*   #:      --       *
 *        -=+ -=+                                            -:               *
 *       -=-+#+                                                               *
 *        --                                                                  *
 ******************************************************************************
 *                                                                            *
 * Version: Schwurbler360 1.0.0                                               *
 * Date:    Oct 10 2020                                                       *
 * Name:    Manuel Braun                                                      *
 * Email:   mommel@gmx de                                                     *
 *                                                                            *
 *****************************************************************************/
#include "main.h"
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
 * @file main.cpp
 *
 * @brief Main File of Schwurbler360
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
ButtonController* buttonController;
RotaryController* rotaryController;
MIDI_CREATE_INSTANCE(HardwareSerial, Serial2, MIDI);

void SendMidiValueChange(int inControlNumber, byte controllerValue) {
  usbMIDI.sendControlChange(inControlNumber, controllerValue, kMidiChannel);
  Serial.println((String) "Invoked Function called" + inControlNumber +
                 " val " + controllerValue);
}

void SendMidiTrigger(int inControlNumber, bool is_active) {
  if (is_active) {
    usbMIDI.sendNoteOn(inControlNumber, kOnVelocity, kMidiChannel);
  } else {
    usbMIDI.sendNoteOff(inControlNumber, 0, kMidiChannel);
  }
  if (is_active) {
    Serial.println((String) "Function sendMidiTrigger called with " +
                   inControlNumber + " ACTIVE");
  } else {
    Serial.println((String) "Function sendMidiTrigger called with " +
                   inControlNumber + " INACTIVE");
  }
}

// cppcheck-suppress unusedFunction // Function is used by arduino
void setup() {
  MIDI.begin(kMidiChannel);
  MIDI.turnThruOff();
  Serial.begin(57600);
  buttonController =
      new ButtonController(14, {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14},
                           {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14});

  for (int controllerID = 0; controllerID < buttonController->GetAmount();
       controllerID++) {
    pinMode(buttonController->GetPin(controllerID), INPUT_PULLUP);
  };
  buttonController->HandleMidiTriggerCallback(&SendMidiTrigger);

  rotaryController =
      new RotaryController(9, {23, 22, 21, 20, 19, 18, 17, 16, 15},
                           {21, 22, 23, 25, 26, 27, 28, 30, 31});
  for (int controllerID = 0; controllerID < rotaryController->GetAmount();
       controllerID++) {
    pinMode(rotaryController->GetPin(controllerID), INPUT_PULLUP);
  };
  rotaryController->HandleMidiValueChangeCallback(&SendMidiValueChange);
};

// cppcheck-suppress unusedFunction // Function is used by arduino
void loop() {
  buttonController->GetData();
  rotaryController->GetData();
  delay(2000);
  while (usbMIDI.read()) {
  }  // ignore incoming messages
}
