#include <MIDI.h>
#include <ResponsiveAnalogRead.h>
#include <Bounce.h>
# define arrayCount(x) (sizeof (x) / sizeof (x)[0])

MIDI_CREATE_DEFAULT_INSTANCE();
// Dont forget the Interrupts

const int midiChannel = 3;
const int amountOfPotiControllerInputs = 10;
const int amountOfDigitalButtonController = 2; // 5;
const int cable = 0;
const int ON_VELOCITY = 99;


const int potiControllerPin[amountOfPotiControllerInputs] = {A22, A0, A1, A2, A3, A4, A5, A6, A7, A8};
const int CCID[amountOfPotiControllerInputs] = {21, 22, 23, 24, 25, 26, 27, 28, 29, 30};

const int buttonControllerPin[amountOfDigitalButtonController] = {39, 38 }; //, 37, 36, 35};
const int note[amountOfDigitalButtonController] = {60, 61}; //, 62, 63, 64, 65};
const int BOUNCE_TIME = 7; // 5 ms is usually sufficient
const boolean toggled = true;

byte potiData[amountOfPotiControllerInputs];
byte potiDataLag[amountOfPotiControllerInputs];

ResponsiveAnalogRead analogPotiController[]{
  {potiControllerPin[0],true},
  {potiControllerPin[1],true},
  {potiControllerPin[2],true},
  {potiControllerPin[3],true},
  {potiControllerPin[4],true},
  {potiControllerPin[5],true},
  {potiControllerPin[6],true},
  {potiControllerPin[7],true},
  {potiControllerPin[8],true},
  {potiControllerPin[9],true}
};

Bounce digitalButtonController[] =   {
  Bounce(buttonControllerPin[0],BOUNCE_TIME), 
  Bounce(buttonControllerPin[1], BOUNCE_TIME)/*,
  Bounce(buttonControllerPin[2], BOUNCE_TIME),
  Bounce(buttonControllerPin[3], BOUNCE_TIME),
  Bounce(buttonControllerPin[4], BOUNCE_TIME)*/
}; 


void setup()
{
    MIDI.begin(midiChannel);
    while( arrayCount(potiControllerPin) != amountOfPotiControllerInputs ){ // || arrayCount(potiControllerValues) != amountOfPotiControllerInputs){
      if( !Serial ) {
        Serial.begin(9600);
      }
      Serial.println("Error Controller Pin Values Amount mismatch");
      delay(2000);
    }
    for (int digitalControllerID = 0; digitalControllerID < amountOfDigitalButtonController; digitalControllerID++) {
      pinMode(buttonControllerPin[digitalControllerID], INPUT_PULLUP);
    }
}

void getPotiData(){  
 for ( int potiControllerID = 0; potiControllerID  < amountOfPotiControllerInputs; potiControllerID++ ) {
    analogPotiController[potiControllerID].update(); 
    if(analogPotiController[potiControllerID].hasChanged()) {
      potiData[potiControllerID] = analogPotiController[potiControllerID].getValue()>>3;
      // map(analogRead(controllerPin[ controllerID ]),0,1023,0,127);
      if (potiData[potiControllerID] != potiDataLag[potiControllerID]){
        potiDataLag[potiControllerID] = potiData[potiControllerID];
        usbMIDI.sendControlChange(CCID[potiControllerID], potiData[potiControllerID], midiChannel);
      }
    }
  }
}

void getButtonData(){
  for ( int buttonControllerId = 0; buttonControllerId < amountOfDigitalButtonController; buttonControllerId++ ) {
    digitalButtonController[buttonControllerId].update();
    if (digitalButtonController[buttonControllerId].fallingEdge()) {
      usbMIDI.sendNoteOn(note[buttonControllerId], ON_VELOCITY, midiChannel);  
    }
    // Note Off messages when each button is released
    if (digitalButtonController[buttonControllerId].risingEdge()) {
      usbMIDI.sendNoteOff(note[buttonControllerId], 0, midiChannel);  
    }
  }
}

void loop()
{
  getPotiData();
  getButtonData();       
}
