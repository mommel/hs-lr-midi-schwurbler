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
 * Version: Schwurbler - PotiController                                     *
 * Date:    Oct 14 2020                                                       *
 * Name:    Manuel Braun                                                      *
 * Email:   mommel@gmx de                                                     *
 *                                                                            *
 *****************************************************************************/
#include "poti_controller.h"
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
 * @file poti_controller.cpp
 *
 * @brief Digital Rotary Controller Class of Schwurbler
 *
 * @author Manuel Braun
 * Contact: github.com/mommel
 */
void PotiController::setPotiValueStore(int identifier, int value){
  this->valueStore_[identifier]=value;
};
int PotiController::getPotiValueStore(int identifier){
  return this->valueStore_[identifier];
};
void PotiController::setPotiLagStore(int identifier, int value){
  this->lagStore_[identifier]=value;
};
int PotiController::getPotiLagStore(int identifier){
  return this->lagStore_[identifier];
};

int PotiController::GetAmount() { return this->kAmount_; };
int PotiController::GetPin(int identifier) { return this->pin_[identifier]; };
void PotiController::HandleMidiValueChangeCallback(
    MidiValueChangeCallbackHandler midiValueChangeCallback) {
  this->midiValueChangeCallback_ = midiValueChangeCallback;
};
void PotiController::GetData() {
  for (int potiIdentifier = 0; potiIdentifier < this->kAmount_;
       potiIdentifier++) {
    this->poti_[potiIdentifier].update();
    if (this->poti_[potiIdentifier].hasChanged()) {
      this->setPotiValueStore(potiIdentifier,
          this->poti_[potiIdentifier].getValue() >> 3;
      );
      if ( this->getPotiValueStore(potiIdentifier) != this->getPotiLagStore(potiIdentifier)) {
        this->setPotiLagStore(potiIdentifier,  this->getPotiValueStore(potiIdentifier));
        this->midiValueChangeCallback_(this->poti_[potiIdentifier], this->getPotiValueStore(potiIdentifier));                            
      }
    }  
  }
}
//}  // namespace controller
