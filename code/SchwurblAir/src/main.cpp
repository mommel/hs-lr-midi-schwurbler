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
 * Version: SchwurblAir 1.0.0                                                 *
 * Date:    Sep 25 2020                                                       *
 * Name:    Manuel Braun                                                      *
 * Email:   mommel@gmx de                                                     *
 *                                                                            *
 *****************************************************************************/
#include <Arduino.h>
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
 * @brief Main File of SchwurblAir
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#include <BLE-MIDI.h>
#include <Bounce2.h>
#include <ResponsiveAnalogRead.h>
#include <hardware/ESP32.h>

#include <cstdlib>

#include "ButtonController.h"
#include "CommunicationController.h"
#include "HelperFunctions.h"
#include "MidiController.h"
#include "RotaryController.h"
#include "main.h"

BLEMIDI_CREATE_INSTANCE("SchwurblAir", MIDI);
// BLEMIDI_CREATE_DEFAULT_ESP32_INSTANCE();

/******************************************************************************
 * General BLE Configurations                                                 *
 *****************************************************************************/
unsigned long startTime;
bool isConnected = false;

/******************************************************************************
 * General Midi Configurations                                                *
 *****************************************************************************/
const int midiChannel = 7;
const int amountOfPotiControllerInputs = 2;
const int amountOfDigitalButtonController = 2;
const int cable = 0;
int activationVelocity = 99;
const boolean toggled = true;
const int statusLED = 9;
const int bounceTime = 7;

/******************************************************************************
 * Controller - Pin Mapping                                                   *
 *****************************************************************************/
const int potiControllerPins[amountOfPotiControllerInputs] = {32, 33};
const int buttonControllerPins[amountOfDigitalButtonController] = {2, 15};

const int controlNumbersAnalog[amountOfPotiControllerInputs] = {21, 22};
const int controlNumbersDigital[amountOfDigitalButtonController] = {1, 2};

byte potiData[amountOfPotiControllerInputs];
byte potiDataLag[amountOfPotiControllerInputs];

ResponsiveAnalogRead analogPotiController[]{
    {potiControllerPins[0], true}, {potiControllerPins[1], true},
    {potiControllerPins[2], true}, {potiControllerPins[3], true},
    {potiControllerPins[4], true}, {potiControllerPins[5], true},
    {potiControllerPins[6], true}, {potiControllerPins[7], true},
    {potiControllerPins[8], true}};

Bounce digitalButtonController[] = {
    Bounce(buttonControllerPins[0], bounceTime),
    Bounce(buttonControllerPins[1], bounceTime),
    Bounce(buttonControllerPins[2], bounceTime),
    Bounce(buttonControllerPins[3], bounceTime),
    Bounce(buttonControllerPins[4], bounceTime),
    Bounce(buttonControllerPins[5], bounceTime),
    Bounce(buttonControllerPins[6], bounceTime),
    Bounce(buttonControllerPins[7], bounceTime),
    Bounce(buttonControllerPins[8], bounceTime),
    Bounce(buttonControllerPins[9], bounceTime),
    Bounce(buttonControllerPins[10], bounceTime),
    Bounce(buttonControllerPins[11], bounceTime),
    Bounce(buttonControllerPins[12], bounceTime),
    Bounce(buttonControllerPins[13], bounceTime)};

/******************************************************************************
 * Init Subclasses                                                            *
 *****************************************************************************/
ButtonController* buttonInputs = new ButtonController();
RotaryController* rotaryInputs = new RotaryController();
MidiController* midiCntrl = new MidiController();
CommunicationController* bleCom = new CommunicationController();

/******************************************************************************
 * Callback Handler                                                           *
 *****************************************************************************/
void OnBLEConnect() { bleCom->onConnectionChange(true); }
void OnBLEDisconnect() { bleCom->onConnectionChange(false); }
#ifdef DEBSERIAL
void OnNoteRecieve(byte channel, byte note, byte velocity) {
  bleCom->recieveNote(channel, note, velocity);
}
void OnNoteRecieveEnd(byte channel, byte note, byte velocity) {
  bleCom->recieveNoteEnd(channel, note, velocity);
}
#endif  // DEBSERIAL

// cppcheck-suppress unusedFunction // Function is used by arduino
void setup() {
  startTime = millis();
#ifdef DEBSERIAL
  Serial.begin(115200);
  while (!Serial) {
    ;
  }
#endif  // DEBSERIAL
  DPRINTLN("Booting");
  pinMode(statusLED, OUTPUT);
  DPRINT("LEDPIN ");
  DPRINTLN(statusLED);

  MIDI.begin(midiChannel);

  BLEMIDI.setHandleConnected(OnBLEConnect);
  BLEMIDI.setHandleDisconnected(OnBLEDisconnect);

#ifdef DEBSERIAL
  MIDI.setHandleNoteOn(OnNoteRecieve);
  MIDI.setHandleNoteOff(OnNoteRecieveEnd);
#endif  // DEBSERIAL

  midiCntrl->configure(activationVelocity, midiChannel);

  if (ARRAY_COUNT(digitalButtonController) != amountOfDigitalButtonController &&
      ARRAY_COUNT(buttonControllerPins) != amountOfDigitalButtonController) {
    throw "Configuration malformed -  The amount of given Pins has to match with the amount of given Controlnumbers";
  }
  buttonInputs->configure(midiCntrl, *digitalButtonController,
                          *buttonControllerPins, *controlNumbersDigital,
                          amountOfDigitalButtonController, midiChannel);

  if (ARRAY_COUNT(analogPotiController) != amountOfPotiControllerInputs ||
      ARRAY_COUNT(potiControllerPins) != amountOfPotiControllerInputs) {
    throw "Configuration malformed -  The amount of given Pins has to match with the amount of given Controlnumbers";
  }
  rotaryInputs->configure(midiCntrl, *analogPotiController, *potiControllerPins,
                          *controlNumbersAnalog, amountOfPotiControllerInputs,
                          midiChannel);

  DPRINTLN(F("Ready"));
  while (!midiCntrl->isAvailable() || !buttonInputs->isAvailable() ||
         !rotaryInputs->isAvailable()) {
    DPRINTLN(F("Controller not available"));
    delay(2000);
  }
}

// cppcheck-suppress unusedFunction // Function is used by arduino
void loop() {
  rotaryInputs->getPotiData();
  buttonInputs->getButtonData();

  while (MIDI.read()) {
  }  // ignore incoming messages
}
