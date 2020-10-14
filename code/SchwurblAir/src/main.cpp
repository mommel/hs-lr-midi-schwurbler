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
 * @brief Main File of SchwurblAir
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
ButtonController* buttonController;
PotiController* potiController;
BLEMIDI_CREATE_INSTANCE("SchwurblAir", MIDI);


/******************************************************************************
 * BLE Callback Handler                                                           *
 *****************************************************************************/
void OnBLEConnect() { bleCom->onConnectionChange(true); }
void OnBLEDisconnect() { bleCom->onConnectionChange(false); }
void OnNoteRecieve(byte channel, byte note, byte velocity) {
  bleCom->recieveNote(channel, note, velocity);
}
void OnNoteRecieveEnd(byte channel, byte note, byte velocity) {
  bleCom->recieveNoteEnd(channel, note, velocity);
}

// cppcheck-suppress unusedFunction // Function is used by arduino
void setup() {
  MIDI.begin(kMidiChannel);
  BLEMIDI.setHandleConnected(OnBLEConnect);
  BLEMIDI.setHandleDisconnected(OnBLEDisconnect);
  MIDI.setHandleNoteOn(OnNoteRecieve);
  MIDI.setHandleNoteOff(OnNoteRecieveEnd);

}

// cppcheck-suppress unusedFunction // Function is used by arduino
void loop() {
  potiController->getData();
  buttonController->getData();
  while (MIDI.read()) {
  }  // ignore incoming messages
}
