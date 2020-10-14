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
 * @file main.h
 *
 * @brief Main Header of SchwurblAir
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
#pragma once
#ifndef SCHWURBLAIR_MAIN_H__
#define SCHWURBLAIR_MAIN_H__

#include "Arduino.h"
#include "controller/button_controller.h"
#include "controller/poti_controller.h"
#include <BLE-MIDI.h>
// cppcheck-suppress build/include_subdir
#include <hardware/ESP32.h>

const int kOnVelocity = 99;
const int kMidiChannel =7;

/******************************************************************************
 * General BLE Configurations                                                 *
 *****************************************************************************/
unsigned long startTime;
bool isConnected = false;

/******************************************************************************
 * General Midi Configurations                                                *
 *****************************************************************************/
const int kMidiChannel = 7;
const int kCable = 0;
int activationVelocity = 99;
boolean toggled = true;
const int kStatusLED = 9;
const int kBounceTime = 7;

/**
 * Exception gets thrown on configuration errors
 */
void throwConfigurationException();

/**
 * Callback
 * Gets called via Callback on Blutooth Connects
 */
void OnBLEConnect();

/**
 * Callback
 * Gets called via Callback on Blutooth Disconnect
 */
void OnBLEDisconnect();

/**
 * Callback
 * Gets called when revcieving a Midi Event
 */
void OnNoteRecieve(byte channel, byte note, byte velocity);

/**
 * Callback
 * Gets called when revcieving a Midi Event End
 */
void OnNoteRecieveEnd(byte channel, byte note, byte velocity);

#endif  // SCHWURBLAIR_MAIN_H__
