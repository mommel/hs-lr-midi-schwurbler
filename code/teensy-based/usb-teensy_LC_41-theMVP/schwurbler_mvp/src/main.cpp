// This code includes ESP32 parts which are YAGNI by now, but it's already checked
// in to help with the implementation

#include <Arduino.h>
#include <MIDI.h>
#include <Bounce2.h>
#define arrayCount(x) (sizeof (x) / sizeof (x)[0])

#ifdef TEENSY

#include <ResponsiveAnalogRead.h>
MIDI_CREATE_INSTANCE(HardwareSerial, Serial2, MIDI);

#endif

#ifdef ESP32 // YAGNI - I KNOW

// rtpMIDI
// #include <AppleMIDI.h>
// APPLEMIDI_CREATE_DEFAULTSESSION_ESP32_INSTANCE();

#endif

const int midiChannel = 3;
const int amountOfPotiControllerInputs = 9;
const int amountOfDigitalButtonController = 14;
const int cable = 0;
const int ON_VELOCITY = 99;

#ifdef TEENSY
  const int potiControllerPin[amountOfPotiControllerInputs] = {A9, A8, A7, A6, A5, A4, A3, A2, A1};
  const int buttonControllerPin[amountOfDigitalButtonController] = {0, 1, 2, 3, 4, 5, 6 ,7,8, 9, 10, 11, 12, 14}; 
#endif

#ifdef ESP32
  // YES I KNOW ITS YAGNI - not definded yet
  const int potiControllerPin[amountOfPotiControllerInputs] = {/*A9, A8, A7, A6, A5, A4, A3,*/ A2, A1};
  const int buttonControllerPin[amountOfDigitalButtonController] = {0, 1 /*, 2, 3, 4, 5, 6 ,7,8, 9, 10, 11, 12, 14*/}; 
#endif

const int controlNumbersAnalog[amountOfPotiControllerInputs] = {21, 22, 23, 24, 25, 26, 27, 28, 29};
const int controlNumbersDigital[amountOfDigitalButtonController] = {60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73};
const int BOUNCE_TIME = 7;
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
  {potiControllerPin[8],true}
};

Bounce digitalButtonController[] =   {
  Bounce(buttonControllerPin[0],BOUNCE_TIME), 
  Bounce(buttonControllerPin[1], BOUNCE_TIME),
  Bounce(buttonControllerPin[2], BOUNCE_TIME),
  Bounce(buttonControllerPin[3], BOUNCE_TIME),
  Bounce(buttonControllerPin[4], BOUNCE_TIME),
  Bounce(buttonControllerPin[5], BOUNCE_TIME),
  Bounce(buttonControllerPin[6], BOUNCE_TIME),
  Bounce(buttonControllerPin[7], BOUNCE_TIME),
  Bounce(buttonControllerPin[8], BOUNCE_TIME),
  Bounce(buttonControllerPin[9], BOUNCE_TIME),
  Bounce(buttonControllerPin[10], BOUNCE_TIME),
  Bounce(buttonControllerPin[11], BOUNCE_TIME),
  Bounce(buttonControllerPin[12], BOUNCE_TIME),
  Bounce(buttonControllerPin[13], BOUNCE_TIME)
}; 


void setup()
{
    MIDI.begin(midiChannel);
    while( 
      arrayCount(potiControllerPin) != amountOfPotiControllerInputs || \
      arrayCount(controlNumbersAnalog) != amountOfPotiControllerInputs || \
      arrayCount(buttonControllerPin) != amountOfDigitalButtonController || \
      arrayCount(controlNumbersDigital) != amountOfDigitalButtonController
    ){
      if( !Serial ) {
        Serial.begin(9600);
      }
      Serial.println("Error Controller Pin Values Amount mismatch");
      delay(2000);
    }
    for (int digitalControllerID = 0; digitalControllerID < amountOfDigitalButtonController; digitalControllerID++) {
      pinMode(buttonControllerPin[digitalControllerID], INPUT_PULLUP);
    }
    #ifdef LEDPIN
    pinMode(LEDPIN, OUTPUT);
    #endif
}

void sendMidiTrigger( int inControlNumber, boolean active = false, int sendChannelID = midiChannel) {
  #ifdef LEDPIN
  digitalWrite( LEDPIN, (active ? HIGH : LOW) );
  #endif
  #ifdef TEENSY
    usbMIDI.sendControlChange( inControlNumber, (active ? ON_VELOCITY : 0 ), sendChannelID );
  #else
    // YAGNI - Send WIFI/BT HERE
  #endif
}

void sendMidiValueChange( int inControlNumber, byte controllerValue, int sendChannelID = midiChannel) {
  #ifdef TEENSY
    usbMIDI.sendControlChange( inControlNumber, controllerValue, sendChannelID );
  #else
    // YAGNI - Send WIFI/BT HERE
  #endif
}

#ifdef SIMULATE
void runSimulationData() {
  for ( int potiControllerID = 0; potiControllerID  < amountOfPotiControllerInputs; potiControllerID++ ) {
    for ( uint32_t simVal = 0; simVal <= 102; simVal += 10 ) {
      sendMidiValueChange(controlNumbersAnalog[potiControllerID], simVal);
      delay (200);
    }
    delay(2000);
  }
  for ( int buttonControllerId = 0; buttonControllerId < amountOfDigitalButtonController; buttonControllerId++ ) {
    sendMidiTrigger(controlNumbersDigital[buttonControllerId], true);
    delay(600);
    sendMidiTrigger(controlNumbersDigital[buttonControllerId]);
    delay(1200);
  }
}
#endif

void getPotiData(){  
 for ( int potiControllerID = 0; potiControllerID  < amountOfPotiControllerInputs; potiControllerID++ ) {
    analogPotiController[potiControllerID].update(); 
    if(analogPotiController[potiControllerID].hasChanged()) {
      potiData[potiControllerID] = analogPotiController[potiControllerID].getValue()>>3;
      if (potiData[potiControllerID] != potiDataLag[potiControllerID]){
        potiDataLag[potiControllerID] = potiData[potiControllerID];
        sendMidiValueChange(controlNumbersAnalog[potiControllerID], potiData[potiControllerID]);
      }
    }
  }
}

void getButtonData(){
  for ( int buttonControllerId = 0; buttonControllerId < amountOfDigitalButtonController; buttonControllerId++ ) {
    digitalButtonController[buttonControllerId].update();
    if (digitalButtonController[buttonControllerId].fallingEdge()) {
      sendMidiTrigger(controlNumbersDigital[buttonControllerId], true);
    }
    if (digitalButtonController[buttonControllerId].risingEdge()) {
      sendMidiTrigger(controlNumbersDigital[buttonControllerId]);
    }
  }
}

void loop()
{
  #ifdef SIMULATE
    runSimulationData();
  #else
    getPotiData();
    getButtonData();
  #endif
}