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
 * @file MidiController.h
 *
 * @brief Handles the Midi events
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#pragma once
#ifndef __MIDICONTROLLER__
#define __MIDICONTROLLER__
#include <Arduino.h>
#include <BLE-MIDI.h>
#include <MIDI.h>

/**
 * Class manages Midi events
 * After construct needs to be configured with Informations the Velocity value
 * that gets used on button click and Midichannel to sent to
 */
class MidiController {
 public:
  MidiController();

 private:
  bool available;
  int activationVelocity;
  int sendChannelID;

 public:
  /**
   *  Configurates the Midicontroller
   *  @param setActivationVelocit Midi Velocity that gets sent on buttonpress
   *  @param setSendChannelID Midichannel
   */
  void configure(int setActivationVelocit, int setSendChannelID);

  /**
   *  The trigger event to send a Midi event with a status
   *  Used for exakt states (on/off)
   *  @param inControlNumber Midi Control Numer to send to
   *  @param isActive Represents if event start = true or ends = false
   */
  void sendMidiTrigger(int inControlNumber, bool isActive);

  /**
   *  The trigger event to send a Midi event with a value
   *  Used for values (0-127)
   *  @param inControlNumber Midi Control Numer to send to
   *  @param controllerValue Represents if the value to send
   */
  void sendMidiValueChange(int inControlNumber, byte controllerValue);
  bool isAvailable();
};  // class MidiController

#endif  // __MIDICONTROLLER__
