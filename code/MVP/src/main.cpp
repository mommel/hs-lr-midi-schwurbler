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
 *****************************************************************************/
#include <Arduino.h>

#include "main.h"
/******************************************************************************
 *                                                                            *
 * Version: 1 0 0                                                             *
 * Date:    Sep 25 2020                                                       *
 * Name:    Manuel Braun                                                      *
 * Email:   mommel@gmx de                                                     *
 *                                                                            *
 *****************************************************************************/
#include <Bounce2.h>
#include <MIDI.h>
#include <ResponsiveAnalogRead.h>
/******************************************************************************
 *                                                                            *
 *   This program is free software; you can redistribute it and/or modify     *
 *   it under the terms of the (CC BY-NC-SA 4 0)                              *
 *   Creative Commons Attribution-NonCommercial-ShareAlike 4 0 International  *
 *   as published by Creative Commons Corporation; either version 4 of the    *
 *   License, or (at your option) any later version                           *
 *                                                                            *
 *****************************************************************************/
/******************************************************************************
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,            *
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF         *
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT IN   *
 * NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,   *
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR      *
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE  *
 * USE OR OTHER DEALINGS IN THE SOFTWARE                                      *
 *****************************************************************************/
#define arrayCount(x) (sizeof(x) / sizeof(x)[0])

MIDI_CREATE_INSTANCE(HardwareSerial, Serial2, MIDI);
/******************************************************************************
 * General Midi Configurations                                                *
 *****************************************************************************/
const int midiChannel = 7;
const int amountOfPotiControllerInputs = 9;
const int amountOfDigitalButtonController = 14;
const int cable = 0;
const int ON_VELOCITY = 99;
const int BOUNCE_TIME = 7;
const boolean toggled = true;

/******************************************************************************
 * Controller - Pin Mapping                                                   *
 *****************************************************************************/
const int potiControllerPin[amountOfPotiControllerInputs] = {A9, A8, A7, A6, A5,
                                                             A4, A3, A2, A1};
const int buttonControllerPin[amountOfDigitalButtonController] = {
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14};
const int controlNumbersAnalog[amountOfPotiControllerInputs] = {
    21, 22, 23, 25, 26, 27, 28, 30, 31};
const int controlNumbersDigital[amountOfDigitalButtonController] = {
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14};

byte potiData[amountOfPotiControllerInputs];
byte potiDataLag[amountOfPotiControllerInputs];

ResponsiveAnalogRead analogPotiController[]{
    {potiControllerPin[0], true}, {potiControllerPin[1], true},
    {potiControllerPin[2], true}, {potiControllerPin[3], true},
    {potiControllerPin[4], true}, {potiControllerPin[5], true},
    {potiControllerPin[6], true}, {potiControllerPin[7], true},
    {potiControllerPin[8], true}};

Bounce digitalButtonController[] = {
    Bounce(buttonControllerPin[0], BOUNCE_TIME),
    Bounce(buttonControllerPin[1], BOUNCE_TIME),
    Bounce(buttonControllerPin[2], BOUNCE_TIME),
    Bounce(buttonControllerPin[3], BOUNCE_TIME),
    Bounce(buttonControllerPin[4], BOUNCE_TIME),
    Bounce(buttonControllerPin[5], BOUNCE_TIME),
    Bounce(buttonControllerPin[6], BOUNCE_TIME),
    Bounce(buttonControllerPin[7], BOUNCE_TIME),
    Bounce(buttonControllerPin[8], BOUNCE_TIME),
    Bounce(buttonControllerPin[9], BOUNCE_TIME),
    Bounce(buttonControllerPin[10], BOUNCE_TIME),
    Bounce(buttonControllerPin[11], BOUNCE_TIME),
    Bounce(buttonControllerPin[12], BOUNCE_TIME),
    Bounce(buttonControllerPin[13], BOUNCE_TIME)};

void sendMidiTrigger(int inControlNumber, bool isActive, int sendChannelID) {
#ifdef LEDPIN
  digitalWrite(LEDPIN, (isActive ? LOW : HIGH));
#endif  // LEDPIN
  if (isActive) {
    usbMIDI.sendNoteOn(inControlNumber, ON_VELOCITY, sendChannelID);
  } else {
    usbMIDI.sendNoteOff(inControlNumber, 0, sendChannelID);
  }
}

void sendMidiValueChange(int inControlNumber, byte controllerValue,
                         int sendChannelID) {
#ifdef LEDPIN
  digitalWrite(LEDPIN, LOW);
#endif  // LEDPIN
  usbMIDI.sendControlChange(inControlNumber, controllerValue, sendChannelID);
}

void getPotiData() {
  for (int potiControllerID = 0;
       potiControllerID < amountOfPotiControllerInputs; potiControllerID++) {
    analogPotiController[potiControllerID].update();
    if (analogPotiController[potiControllerID].hasChanged()) {
      potiData[potiControllerID] =
          analogPotiController[potiControllerID].getValue() >> 3;
      if (potiData[potiControllerID] != potiDataLag[potiControllerID]) {
        potiDataLag[potiControllerID] = potiData[potiControllerID];
        sendMidiValueChange(controlNumbersAnalog[potiControllerID],
                            potiData[potiControllerID], midiChannel);
      } else {
#ifdef LEDPIN
        digitalWrite(LEDPIN, HIGH);
#endif  // LEDPIN
      }
    }
  }
}

void getButtonData() {
  for (int buttonControllerId = 0;
       buttonControllerId < amountOfDigitalButtonController;
       buttonControllerId++) {
    digitalButtonController[buttonControllerId].update();
    if (digitalButtonController[buttonControllerId]
            .fallingEdge() ||  // On Button push > FallingEdge
                               // Pin pulled to gnd
        digitalButtonController[buttonControllerId]
            .risingEdge()) {  // On Button release > RisingEdge
                              // Pin rising up again thru Internal pullup
      sendMidiTrigger(
          controlNumbersDigital[buttonControllerId],
          (digitalButtonController[buttonControllerId].fallingEdge() &&
           !digitalButtonController[buttonControllerId].risingEdge()),
          midiChannel);
    }
  }
}

// cppcheck-suppress unusedFunction // Function is used by arduino
void setup() {
  MIDI.begin(midiChannel);
  MIDI.turnThruOff();

  while (arrayCount(potiControllerPin) != amountOfPotiControllerInputs ||
         arrayCount(controlNumbersAnalog) != amountOfPotiControllerInputs ||
         arrayCount(buttonControllerPin) != amountOfDigitalButtonController ||
         arrayCount(controlNumbersDigital) != amountOfDigitalButtonController) {
    if (!Serial) {
      Serial.begin(9600);
    }
    Serial.println("Error Controller Pin Values Amount mismatch");
    delay(2000);
  }

  for (int digitalControllerID = 0;
       digitalControllerID < amountOfDigitalButtonController;
       digitalControllerID++) {
    pinMode(buttonControllerPin[digitalControllerID], INPUT_PULLUP);
  }

#ifdef LEDPIN
  pinMode(LEDPIN, OUTPUT);
#endif  // LEDPIN
}

// cppcheck-suppress unusedFunction // Function is used by arduino
void loop() {
  getPotiData();
  getButtonData();
  while (usbMIDI.read()) {
  }  // ignore incoming messages
}
