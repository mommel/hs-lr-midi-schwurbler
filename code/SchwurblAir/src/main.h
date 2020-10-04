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
#ifndef __MAIN__
#define __MAIN__

#include <Arduino.h>

#define AMOUNT_OF_DIGITAL_BUTTONCONTROLLER 2
#define AMOUNT_OF_ROTARYCONTROLLER 2

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

#ifdef DEBSERIAL

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
#endif  // DEBSERIAL

#endif  // __MAIN__
