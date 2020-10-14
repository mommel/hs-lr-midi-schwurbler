/**
 ******************************************************************************
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
 * Version: Schwurbler - Buttoncontroller                                     *
 * Date:    Oct 14 2020                                                       *
 * Name:    Manuel Braun                                                      *
 * Email:   mommel@gmx de                                                     *
 *                                                                            *
 ******************************************************************************
 */
#include "button_controller.h"
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
 * @file ButtonController.cpp
 *
 * @brief Button Controller Class of Schwurbler
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
// namespace controller {

int ButtonController::GetAmount() { return this->kAmount_; };
int ButtonController::GetPin(int identifier) { return this->pin_[identifier]; };
void ButtonController::HandleMidiTriggerCallback(
    MidiTriggerCallbackHandler midiTriggerCallback) {
  this->midiTriggerCallback_ = midiTriggerCallback;
};
void ButtonController::GetData() {
  for (int buttonIdentifier = 0; buttonIdentifier < this->kAmount_;
       buttonIdentifier++) {
    this->button_[buttonIdentifier].update();
    if (this->button_[buttonIdentifier].fallingEdge() ||
        this->button_[buttonIdentifier].risingEdge()) {
      int midiValue = this->midiValue_[buttonIdentifier];
      bool is_active = (this->button_[buttonIdentifier].fallingEdge() &&
                        !this->button_[buttonIdentifier].risingEdge());
      this->midiTriggerCallback_(midiValue, is_active);
    }
  }
}
//}  // namespace controller
