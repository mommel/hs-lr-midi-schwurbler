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
 * @file CommunicationController.h
 *
 * @brief Handles Communication events between the computer and the device
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#pragma once
#ifndef __COMMUNICATIONCONTROLLER__
#define __COMMUNICATIONCONTROLLER__
#include <Arduino.h>

/**
 * Class manages Communication with the computer
 * After construct needs to be configured with Informations StatusLed Pin
 * Handles the functioncalls triggert via callback
 */
class CommunicationController {
 public:
  CommunicationController();

 private:
  int statusLED;
  bool isConnected;

 public:
  /**
   *  Configurates Communication
   *  @param setStatusLed The pin of the StatusLed
   */
  void configure(int setStatusLed);

  /**
   *  Handles event on recieved Note
   *  @param channel Midichannel
   *  @param note Midinote
   *  @param velocity Midi Velocity
   */
  void recieveNote(byte channel, byte note, byte velocity);

  /**
   *  Handles event on recieved Note End
   *  @param channel Midichannel
   *  @param note Midinote
   *  @param velocity Midi Velocity
   */
  void recieveNoteEnd(byte channel, byte note, byte velocity);

  /**
   *  Handles event on connection change
   *  @param connectionState Connectionstatus
   */
  void onConnectionChange(bool connectionState);

  /**
   * Lets the StatusLed blink
   */
  void connectionBlink();
};  // class CommunicationController

#endif  // __COMMUNICATIONCONTROLLER__
