# What to put where
* Bomfiles in _BOM_
* Wiring Scheme in _circuit-diagram_
* Arduino Ino or VSCode C in _code_
* Kicad Projects in _kicad_
* Eagle Projects in _eagle_
* Gerber, Etching, PCB Renders in _pcb_
* Fritzing wiring diagrams in _prototyping_

### All of those folders have subfolders
* First subfolder defines the MCU the board is based on
* Second Boardname -  best practice "connection type"-"mcu"-"special interest"


* General Assets for readme.md  in_assets_
 
# Scripts
actually there is only the board.sh a really shitty shellscript file to get started with some git changes (far from useable, just to get some help for totally git noobs) but it can generate a skeleton for a new board 