# Der Schwurbler MVP Version

**Release Package**    
[> Download Release Package](https://github.com/mommel/hs-lr-midi-schwurbler/releases/tag/v1.0.0)


**Quickstart Guide**
[> Download Quickstart Guide - PDF](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/quickstartguide/MVP/de/Der%20Schwurbler%20MVP%20-%20Schnellstart.pdf)

[> Download Fix für die Rev 1.1 Platine - PDF](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/quickstartguide/MVP/SchwurbelFix-MVP1.1.pdf)

**BOM**    
[> Download BOM - PDF](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/bom/MVP/bom.pdf)   


**Midi2LR Profile für Lightroom 10**    
[> Download](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/midi2lr-profiles/MVP/Der%20Schwurbler%20MVP%20-%20Midi2LR%20Profiles%20v2.zip)


-----------    
![Die bestückte Schwurbler MVP Platine](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/Der-Schwurbler-MVP-Platine-01.jpg)

**BOM für die Pre-Release Version**  

1x Platine - MVP Limited Edition -- 
(Gerber.zip ist im Release Paket enthalten)

1x TEENSY LC (Teensy 3.2 oder 4.1 Boards sind auch kompatible.) -- 
[Muster](https://www.antratek.de/teensy-lc)     

2x Stiftleisten gerade (optional)

2x Buchsenleisten (optional für steckbare Version)  

9x Drehpotentiometer, Mono, 10 kOhm, linear (Höhe je nach Gehäuse) -- 
[Muster](https://www.reichelt.de/drehpotentiometer-mono-10-kohm-linear-6-mm-rk09k113-lin10k-p73815.html?&GROUP=B254&START=0&SORT=-rank&OFFSET=16&nbc=1)     

14x Kurzhubtaster 6x6mm, 12V, vertikal (Höhe je nach Gehäuse) -- 
[Muster](https://www.reichelt.de/kurzhubtaster-6x6mm-hoehe-4-3mm-12v-vertikal-taster-3301-p27892.html?&GROUP=C223&START=0&SORT=-rank&OFFSET=16&nbc=1)      
   
1x LED 5mm (optional)    

1x Widerstand für LED 470 Ohm (optional)     
     
.

**Erforderliche Software**  

Teensy First Use -- [Installing the Teensy Loader](https://www.pjrc.com/teensy/first_use.html)   


Schwurbler MVP Firmware -- [Download](https://github.com/mommel/hs-lr-midi-schwurbler/releases/tag/v1.0.0)    


MIDI2LR Software --
[Download](https://github.com/rsjaffe/MIDI2LR)   

Midi2LR Profile -- 
[Download](https://github.com/mommel/hs-lr-midi-schwurbler/tree/master/midi2lr-profiles/MVP)     

    
![Teile für den Schwurbler MVP Limited Edition](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/Der-Schwurbler-MVP-Parts-01.jpg)  


**Der Schwurbler MVP im 3d-Druck Gehäuse**  

![Der Schwurbler MVP im 3d-Druck Gehäuse](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/Der-Schwurbler-MVP-Case-01.jpg)


***


***    


# ... und so hat alles angefangen:    


## Erste Vorschläge für die MVP Version

**Funktionalität:**  

* Bewertung per Quickbutton (Modi)
* Farbe per Quickbutton (Modi)
* Ein/Auszoomen per extra  Poti
* Mode/ReglerMapping Change per Quickbuttons (Modi) oder per Rotary + Mode Anzeige
* Adhoc Entwickeln per Quickbutton (modi)
* Ein Display hinzufügen um den aktuellen Modus anzuzeigen?
* Zuücksetzen von Schnellaktionen per zusätzlichem Button


**Umfrageergebnisse zur Zahl und Art der Regler:**
* Drehpoti vs Drehwinkelgeber -- 1/1 (2 Antworten)
* Knöpfe -- 12  (Einstimmig 3 Antworten)
* Schieberegler -- keine/8/2/Enthaltungen (4 Antworten)
* Drehregler -- 0/4/8/12 (4 Antworten)
* Case -- keins/3D Case/Holz/Plexiglas (4 Antworten)


***

## Erste Designvorschläge

Prototype 1 und 2 (3D Renderings)  
[https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/schwurbler_v1.png](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/schwurbler_v1.png)  
[https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/schwurbler_ii_v2.jpg](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/schwurbler_ii_v2.jpg)


Schwurbler MTC   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/design-drafts/design-drafts/SchwurblerV1.png

Schwurbler R1  
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-R1.png

Schwurbler R2   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-R2.png

 … Fader Version …

Schwurbler F1   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-F1.png

Schwurbler F2   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-F2.png

 … die X Serie …

Schwurbler X1  
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-X1.png

Schwurbler X2   
https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-X2.png

**Umfrageergebnisse zum Design:**

* Schwurbler X1 - 1 Stimme
* Schwurbler X2 - 3 Stimmen


***

## Layout der MVP Version

      
  
8 Drehregler mit je 4 Tastern  
1 Tastenblock mit 9 Tasten   
1 Zentraler Drehregler  
1 Taster zur Auswahl des Belegungs-Modus der Bedienelemente
  
![Interface Layout - Schwurbler X2](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/design-drafts/Interface-Schwurbler-X2.png)

![PCB Rendering - Schwurbler X2](https://raw.githubusercontent.com/mommel/hs-lr-midi-schwurbler/master/pcb/teensy-based/usb-teensy_LC_41-theMVP/Render/front_with_LC.jpg)

Auf der Platine besteht optional die Möglichkeit alle Buttons und Poti als externe Elemente ein zu löten. Zusätzlich gibt es Anschlüsse für eine Status LED. Und, falls die analogen Potis Störungen haben können Kodensatoren zur Stromglättung hinzugefügt werden.

## Tutorial 01 - Bestückung
[![](http://img.youtube.com/vi/eH0KHRkc_u4/0.jpg)](http://www.youtube.com/watch?v=eH0KHRkc_u4 "Tutorial 01 - Bestückung")

## Gehäuse Prototyp 01
![Erster 3d-Print für ein Gehäuse](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/MVP-3d-Print-v1.jpg)

## Gehäuse Prototyp 02
![Gehäuse Prototyp - Rendering ](https://github.com/mommel/hs-lr-midi-schwurbler/blob/master/images-wiki/mvp-version_designx2_v2%20copy.png)

***

_[ > English Version](mvp.en.md)_
