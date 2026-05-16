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
#include "main.h"
/******************************************************************************
 *                                                                            *
 * Version: 1 0 0                                                             *
 * Date:    Sep 25 2020                                                       *
 * Name:    Manuel Braun                                                      *
 * Email:   mommel@gmx de                                                     *
 *                                                                            *
 *****************************************************************************/
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

MIDI_CREATE_INSTANCE(HardwareSerial, Serial2, MIDI);
/******************************************************************************
 * General Midi Configurations                                                *
 *****************************************************************************/
const int kMidiChannel = Schwurbler_DEF_SendTo_MidiChannel;
const int kTriggerVelocity = Schwurbler_DEF_ButtonController_TriggerVelocity;
ButtonController* buttonController = new ButtonController();

void sendMidiTrigger(int inControlNumber, bool isActive, int sendChannelID) {
#ifdef LEDPIN
    digitalWrite(LEDPIN, (isActive ? LOW : HIGH));
#endif // LEDPIN
    if (isActive) {
        usbMIDI.sendNoteOn(inControlNumber, kTriggerVelocity, kMidiChannel);
    } else {
        usbMIDI.sendNoteOff(inControlNumber, 0, kMidiChannel);
    }
}

void sendMidiValueChange(int inControlNumber, byte controllerValue) {
#ifdef LEDPIN
    digitalWrite(LEDPIN, LOW);
#endif // LEDPIN
    usbMIDI.sendControlChange(inControlNumber, controllerValue, kMidiChannel);
}

#define ENC1_1 23
#define ENC1_2 22
Encoder myEnc1(ENC1_1, ENC1_2);

#define ENC2_1 21
#define ENC2_2 20
Encoder myEnc2(ENC2_1, ENC2_2);

#define ENC3_1 19
#define ENC3_2 18
Encoder myEnc3(ENC3_1, ENC3_2);

#define ENC4_1 17
#define ENC4_2 16
Encoder myEnc4(ENC4_1, ENC4_2);

long position1 = -999;
long position2 = -999;
long position3 = -999;
long position4 = -999;

elapsedMillis dbad;
uint8_t led_state=0;

void getRotaryData() {

  long newPos = myEnc1.read();
  if (newPos != position1) {
    position1 = newPos;
    Serial.print("ENC1 ");
    Serial.println(position1);
    sendMidiValueChange(21, position1);
  }

  long newPos2 = myEnc2.read();
  if (newPos2 != position2) {
    position2 = newPos2;
    Serial.print("ENC2 ");
    Serial.println(position2);
    sendMidiValueChange(22, position2);
  }

  long newPos3 = myEnc3.read();
  if (newPos3 != position3) {
    position3 = newPos3;
    Serial.print("ENC3 ");
    Serial.println(position3);
    sendMidiValueChange(23, position3);
  }

  long newPos4 = myEnc4.read();
  if (newPos4 != position4) {
    position4 = newPos4;
    Serial.print("ENC4 ");
    Serial.println(position4);
    sendMidiValueChange(24, position4);
  }



  if(dbad>999)
  {
    dbad=0;
    led_state=1-led_state;
    digitalWrite(LEDPIN,led_state);
  } // don't delay so much if you want encoder results without using interrupts...

  // With any substantial delay added, Encoder can only track
  // very slow motion.  You may uncomment this line to see
  // how badly a delay affects your encoder.
  delay(3);
}

// cppcheck-suppress unusedFunction // Function is used by arduino
void setup() {

    MIDI.begin(kMidiChannel);
    MIDI.turnThruOff();
    if (!Serial) {
      Serial.begin(56700);
    }
    Serial.println("Error Controller Pin Values Amount mismatch");

    pinMode(ENC1_1, INPUT);
    pinMode(ENC1_2, INPUT);

    pinMode(ENC2_1, INPUT);
    pinMode(ENC2_2, INPUT);

    pinMode(ENC3_1, INPUT);
    pinMode(ENC3_2, INPUT);

    pinMode(ENC4_1, INPUT);
    pinMode(ENC4_2, INPUT);

    for (int butttonIndex = 0; butttonIndex < Schwurbler_DEF_ButtonController_Amount;
         butttonIndex++) {
        pinMode(buttonController->getPin(butttonIndex), INPUT_PULLUP);
    }
    buttonController->handleMidiTriggerCallback(&sendMidiTrigger);
#ifdef LEDPIN
    pinMode(LEDPIN, OUTPUT);
#endif // LEDPIN
}

// cppcheck-suppress unusedFunction // Function is used by arduino
void loop() {
    getRotaryData();
    // buttonController->getData();
    while (usbMIDI.read()) {
    } // ignore incoming messages
}
