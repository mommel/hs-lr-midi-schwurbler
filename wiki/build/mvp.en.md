# Schwurbler MVP Edition

**Release Package**    
[> Download Release Package](https://github.com/mommel/hs-lr-midi-schwurbler/releases/tag/v1.0.0)


**Quickstart Guide**
[> Download Quickstart Guide - PDF](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/quickstartguide/MVP/de/Der%20Schwurbler%20MVP%20-%20Schnellstart.pdf)

[> Download Fix for the Rev 1.1 PCB - PDF](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/quickstartguide/MVP/SchwurbelFix-MVP1.1.pdf)

**BOM**    
[> Download BOM - PDF](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/bom/MVP/bom.pdf)   


**Midi2LR Profile für Lightroom 10**    
[> Download](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/midi2lr-profiles/MVP/Der%20Schwurbler%20MVP%20-%20Midi2LR%20Profiles%20v2.zip)


-----------    
![The Schwurbler MVP PCB](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/Der-Schwurbler-MVP-Platine-01.jpg)

**BOM for the Schwurbler MVP version**  

1x Circuit Board - MVP Limited Edition -- 
(Gerber.zip is included in the Release Package)

1x TEENSY LC (Teensy 3.2 or 4.1 boards are also compatible.) -- 
[Sample](https://www.antratek.de/teensy-lc)     

2x Pin Headers ( straight, optional)

2x Female Connectors (optional for pluggable version)  

9x Rotary Potentiometer, mono, 10 kOhm, linear (height depending on housing) -- 
[Sample](https://www.reichelt.de/drehpotentiometer-mono-10-kohm-linear-6-mm-rk09k113-lin10k-p73815.html?&GROUP=B254&START=0&SORT=-rank&OFFSET=16&nbc=1)     

14x Micro Buttons 6x6mm, 12V, vertical (height depending on housing) -- 
[Sample](https://www.reichelt.de/kurzhubtaster-6x6mm-hoehe-4-3mm-12v-vertikal-taster-3301-p27892.html?&GROUP=C223&START=0&SORT=-rank&OFFSET=16&nbc=1)      
   
1x LED 5mm (optional)    

1x resistor for LED 470 Ohm (optional)
     
.

**Required Software**

Teensy First Use -- [Installing the Teensy Loader](https://www.pjrc.com/teensy/first_use.html)   


Schwurbler MVP Firmware -- [Download](https://github.com/mommel/hs-lr-midi-schwurbler/releases/tag/v1.0.0)    


MIDI2LR Software --
[Download](https://github.com/rsjaffe/MIDI2LR)   

Midi2LR Profile -- 
[Download](https://github.com/mommel/hs-lr-midi-schwurbler/tree/master/midi2lr-profiles/MVP)     

    
![Parts for the Schwurbler MVP Limited Edition](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/Der-Schwurbler-MVP-Parts-01.jpg)


**The Schwurbler MVP in its 3d-Printed Case**  

![The Schwurbler MVP in its 3d-Printed Case](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/Der-Schwurbler-MVP-Case-01.jpg)


***


***    


# ... and this is how it all started:    


## First suggestions for the MVP version

**Functionality:**  

* Selection per Quickbutton (Modes)
* Color by Quickbutton (Modes)
* Zoom in/out by extra potentiometer
* Mode/controller mapping change via Quickbuttons (modes) or via Rotary + Mode display
* Adhoc development via Quickbutton (modes)
* Add a display to show the current mode?
* Reset quick actions by additional button


**Survey results on the number and type of controllers:**
* Rotary potentiometer vs. rotary encoder -- 1/1 (2 answers)
* Buttons -- 12 (Unanimously 3 answers)
* Slider -- none / 8/2 / abstentions (4 answers)
* Knob -- 0/4/8/12 (4 answers)
* Case -- none/3D Case/Wood/Plexiglas (4 answers)


***

## First design suggestions

Prototype 1 and 2 (3D renderings)  
[https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/schwurbler_v1.png](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/schwurbler_v1.png)  
[https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/schwurbler_ii_v2.jpg](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/schwurbler_ii_v2.jpg)


Schwurbler MTC   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/design-drafts/design-drafts/SchwurblerV1.png

Schwurbler R1  
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-R1.png

Schwurbler R2   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-R2.png

 ... Fader Version ...

Schwurbler F1   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-F1.png

Schwurbler F2   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-F2.png

 ... the X series ...

Schwurbler X1  
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-X1.png

Schwurbler X2   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-X2.png

**Survey results on design:**

* Schwurbler X1 - 1 vote
* Schwurbler X2 - 3 votes


***

## Layout of the MVP version

      
  
8 rotary knobs with 4 buttons each  
1 keypad with 9 keys   
1 Central control knob  
1 button for selecting the assignment mode of the control elements
  


 

![Interface Layout - Schwurbler X2](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-X2.png)

![PCB Rendering - Schwurbler X2](https://raw.githubusercontent.com/mommel/hs-lr-midi-schwurbler/master/pcb/MVP/teensy-based/usb-teensy_LC_41-theMVP/Render/front_with_LC.jpg)

On the board you have the option to solder all buttons and potis as external elements. Additionally there are connectors for a status LED. And, if the analog potentiometers have disturbances, capacitors can be added for current smoothing.

## Tutorial 01 - Assembly
[![](http://img.youtube.com/vi/eH0KHRkc_u4/0.jpg)](http://www.youtube.com/watch?v=eH0KHRkc_u4 "Tutorial 01 - Mounting")

## Housing prototype 01
![First 3d-Print for a housing](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/MVP-3d-Print-v1.jpg)

## Housing prototype 02
![The Schwurbler Housing Prototype - Rendering ](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/mvp-version_designx2_v2%20copy.png)

***

_[ > Deutsche Version](mvp.de.md)_