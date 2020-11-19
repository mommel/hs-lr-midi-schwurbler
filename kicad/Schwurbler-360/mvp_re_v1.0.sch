EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 1 1
Title "Schwurbler - Schwurbler360"
Date "2020-11-10"
Rev "1.0"
Comp "Happy Shooting Community"
Comment1 "Inputs: 10 Button 9 Rotary Encoder w. Button"
Comment2 "Connection: USB"
Comment3 "MCU: Teensy LC"
Comment4 ""
$EndDescr
Wire Wire Line
	4200 7150 4700 7150
Wire Wire Line
	4700 7200 7750 7200
Connection ~ 4700 7150
Wire Wire Line
	4700 7150 4700 7200
Wire Wire Line
	4150 7250 4700 7250
Wire Wire Line
	4500 7750 4700 7750
Wire Wire Line
	4700 7250 5900 7250
Connection ~ 4700 7250
Wire Wire Line
	4700 7750 4700 7250
Wire Wire Line
	3750 7250 4150 7250
Wire Wire Line
	3750 7850 3900 7850
Connection ~ 3750 7250
Wire Wire Line
	3750 7850 3750 7250
Wire Wire Line
	5500 3250 5500 1550
Wire Wire Line
	5450 3250 5500 3250
Wire Wire Line
	5450 3250 5450 3700
Wire Wire Line
	3000 3250 3000 3700
Wire Wire Line
	3000 3700 5450 3700
Wire Wire Line
	3050 3250 3000 3250
Wire Wire Line
	2650 8500 2650 3150
Wire Wire Line
	1600 8500 2650 8500
Connection ~ 500  8100
Wire Wire Line
	500  8500 1200 8500
Wire Wire Line
	500  8100 500  8500
Connection ~ 7150 8100
Wire Wire Line
	7150 8500 7150 8100
Wire Wire Line
	7000 8500 7150 8500
Wire Wire Line
	5650 3050 5650 8500
Wire Wire Line
	5650 8500 6600 8500
$Comp
L Switch:SW_Push SW10
U 1 1 65C45DB9
P 6800 8500
F 0 "SW10" H 6800 8785 50  0000 C CNN
F 1 "SW_Push" H 6800 8700 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6800 8700 50  0001 C CNN
F 3 "~" H 6800 8700 50  0001 C CNN
	1    6800 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 7250 3750 7250
$Comp
L Switch:SW_Push SW8
U 1 1 65B367BA
P 1400 8500
F 0 "SW8" H 1400 8785 50  0000 C CNN
F 1 "SW_Push" H 1400 8700 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1400 8700 50  0001 C CNN
F 3 "~" H 1400 8700 50  0001 C CNN
	1    1400 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 8100 5600 8100
Wire Wire Line
	3700 7500 3700 7400
Connection ~ 3700 7500
Wire Wire Line
	3700 7500 5550 7500
Wire Wire Line
	4500 7950 5700 7950
Wire Wire Line
	5700 2950 5700 7950
Wire Wire Line
	650  2550 650  7650
Wire Wire Line
	650  7650 1200 7650
Wire Wire Line
	600  2450 600  7700
Wire Wire Line
	1150 7700 600  7700
Wire Wire Line
	1150 8100 1150 7700
Wire Wire Line
	1200 8100 1150 8100
Wire Wire Line
	550  2350 550  7750
Wire Wire Line
	1100 8100 1050 8100
Wire Wire Line
	1100 7750 1100 8100
Wire Wire Line
	550  7750 1100 7750
Wire Wire Line
	5900 2200 5900 7100
Wire Wire Line
	7400 6700 7400 7100
Wire Wire Line
	5900 7100 5900 7250
Connection ~ 5900 7100
Wire Wire Line
	7400 7100 5900 7100
Wire Wire Line
	5900 7250 6300 7250
Wire Wire Line
	6300 7650 6550 7650
Connection ~ 6300 7250
Wire Wire Line
	6300 7250 6300 7650
Wire Wire Line
	6550 7650 6600 7650
Connection ~ 6550 7650
Wire Wire Line
	6550 7750 6550 7650
Wire Wire Line
	5750 2850 5750 8150
Wire Wire Line
	5750 8150 7050 8150
Wire Wire Line
	6050 8100 6100 8100
Wire Wire Line
	6050 2550 6050 8100
Wire Wire Line
	5400 2550 6050 2550
Wire Wire Line
	6100 6000 6100 2450
Wire Wire Line
	7300 6000 6100 6000
Wire Wire Line
	5400 2450 6100 2450
Wire Wire Line
	6800 2350 6800 4600
Wire Wire Line
	5400 2350 6800 2350
Wire Wire Line
	7300 6000 7300 6100
Wire Wire Line
	5400 2250 6300 2250
Wire Wire Line
	6300 2250 6300 3100
Wire Wire Line
	5800 1550 5800 1600
Wire Wire Line
	5500 1550 5800 1550
Wire Wire Line
	3050 3150 2650 3150
Wire Wire Line
	3050 2550 650  2550
Wire Wire Line
	3050 2450 600  2450
Wire Wire Line
	3050 2350 550  2350
Connection ~ 500  7250
Wire Wire Line
	500  8100 500  7250
Wire Wire Line
	650  8100 500  8100
Wire Wire Line
	1650 7250 2500 7250
Connection ~ 1650 7250
Connection ~ 1650 7650
Wire Wire Line
	1650 7650 1650 7250
Wire Wire Line
	1650 8100 1700 8100
Connection ~ 1650 8100
Wire Wire Line
	1650 7650 1600 7650
Wire Wire Line
	1650 8100 1650 7650
Wire Wire Line
	1600 8100 1650 8100
$Comp
L Switch:SW_Push SW7
U 1 1 64E12D11
P 1400 7650
F 0 "SW7" H 1400 7935 50  0000 C CNN
F 1 "SW_Push" H 1400 7850 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1400 7850 50  0001 C CNN
F 3 "~" H 1400 7850 50  0001 C CNN
	1    1400 7650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW9
U 1 1 64E12554
P 1900 8100
F 0 "SW9" H 1900 8385 50  0000 C CNN
F 1 "SW_Push" H 1900 8300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1900 8300 50  0001 C CNN
F 3 "~" H 1900 8300 50  0001 C CNN
	1    1900 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2250 2950 3800
Wire Wire Line
	4300 3800 4300 4050
Wire Wire Line
	4300 3800 2950 3800
Wire Wire Line
	2900 2150 2900 3850
Wire Wire Line
	4900 3850 4900 4050
Wire Wire Line
	2900 3850 4900 3850
Wire Wire Line
	2850 2050 2850 3900
Wire Wire Line
	5000 3900 5000 4050
Wire Wire Line
	5000 3900 2850 3900
Wire Wire Line
	5350 4000 5350 4750
Wire Wire Line
	4100 4000 5350 4000
Wire Wire Line
	4100 4050 4100 4000
Wire Wire Line
	500  1300 500  4350
Wire Wire Line
	500  4350 500  7250
Connection ~ 500  4350
Wire Wire Line
	3050 4350 3050 4750
Connection ~ 3050 4350
Wire Wire Line
	3050 4350 500  4350
Connection ~ 3500 4000
Wire Wire Line
	3600 4000 3600 4050
Wire Wire Line
	3500 4000 3600 4000
Connection ~ 3400 4000
Wire Wire Line
	3500 4000 3500 4050
Wire Wire Line
	3400 4000 3500 4000
Wire Wire Line
	3050 4000 3050 4350
Wire Wire Line
	3400 4000 3050 4000
Wire Wire Line
	3400 4050 3400 4000
Wire Wire Line
	3100 4750 3050 4750
Wire Wire Line
	5350 4750 5350 5500
Connection ~ 5350 4750
Wire Wire Line
	5300 4750 5350 4750
Connection ~ 5000 5900
Wire Wire Line
	5000 5900 5000 5450
Connection ~ 4900 5850
Wire Wire Line
	4900 5850 4900 5450
Connection ~ 4800 5800
Wire Wire Line
	4800 5800 4800 5450
Connection ~ 4700 5750
Wire Wire Line
	4700 5750 4700 5450
Connection ~ 4600 5700
Wire Wire Line
	4600 5700 4600 5450
Connection ~ 4500 5650
Wire Wire Line
	4500 5650 4500 5450
Connection ~ 4400 5600
Wire Wire Line
	4400 5600 4400 5450
Connection ~ 4300 5550
Wire Wire Line
	4300 5550 4300 5450
Connection ~ 4100 5550
Wire Wire Line
	4100 5550 4100 5450
Connection ~ 4000 5600
Wire Wire Line
	4000 5600 4000 5450
Connection ~ 3900 5650
Wire Wire Line
	3900 5650 3900 5450
Wire Wire Line
	3900 5650 3900 6300
Wire Wire Line
	3800 5700 3800 5450
Connection ~ 3800 5700
Wire Wire Line
	1900 5700 3800 5700
Wire Wire Line
	2100 5650 3900 5650
Wire Wire Line
	3800 6550 3800 5700
Connection ~ 3700 5750
Wire Wire Line
	3700 5750 3700 5450
Connection ~ 3600 5800
Wire Wire Line
	3600 5800 3600 5450
Connection ~ 3500 5850
Wire Wire Line
	3500 5850 3500 5450
Connection ~ 3400 5900
Wire Wire Line
	3400 5900 3400 5450
Wire Wire Line
	7500 5900 7500 6100
Connection ~ 7500 5900
Wire Wire Line
	6900 5900 6900 7250
Connection ~ 6900 5900
Wire Wire Line
	7500 4550 7500 5900
Wire Wire Line
	6900 5900 7500 5900
Wire Wire Line
	6000 1550 7500 1550
Connection ~ 7500 3050
Wire Wire Line
	7500 1550 7500 3050
Wire Wire Line
	6500 3050 7500 3050
Connection ~ 7500 4550
Wire Wire Line
	7500 3050 7500 4550
$Comp
L Device:R R19
U 1 1 61325473
P 4700 1450
F 0 "R19" V 4800 1550 50  0000 R CNN
F 1 "330" V 4700 1500 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4630 1450 50  0001 C CNN
F 3 "~" H 4700 1450 50  0001 C CNN
	1    4700 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 1300 5550 1300
Wire Wire Line
	900  1400 900  6100
Wire Wire Line
	3200 7150 4150 7150
Wire Wire Line
	5600 3150 5600 8100
Wire Wire Line
	5550 3350 5550 7500
Wire Wire Line
	7050 8100 7000 8100
Wire Wire Line
	7050 8150 7050 8100
Wire Wire Line
	6550 7750 7150 7750
Connection ~ 6550 7750
Wire Wire Line
	6550 8100 6600 8100
Connection ~ 6550 8100
Wire Wire Line
	6550 8100 6550 7750
Wire Wire Line
	6500 8100 6550 8100
Wire Wire Line
	5400 2850 5750 2850
Wire Wire Line
	5400 2950 5700 2950
Wire Wire Line
	5400 3050 5650 3050
Wire Wire Line
	5400 3150 5600 3150
Wire Wire Line
	7650 2750 7650 8100
Wire Wire Line
	5400 2750 7650 2750
Wire Wire Line
	7700 2650 5400 2650
Wire Wire Line
	7700 7650 7700 2650
Wire Wire Line
	7000 7650 7700 7650
Connection ~ 4200 7150
Wire Wire Line
	4200 7400 4250 7400
Connection ~ 4200 7400
Wire Wire Line
	4200 7400 4200 7150
Wire Wire Line
	4150 7400 4200 7400
Connection ~ 5200 7150
Wire Wire Line
	5200 7150 4700 7150
Wire Wire Line
	4200 7050 4200 7150
Wire Wire Line
	7750 7200 7750 1300
Wire Wire Line
	5600 1300 7750 1300
Wire Wire Line
	6000 1550 6000 1600
Wire Wire Line
	6500 3050 6500 3100
Wire Wire Line
	5400 3350 5550 3350
Wire Wire Line
	7000 4550 7500 4550
Wire Wire Line
	6900 5200 6900 5900
Wire Wire Line
	6400 3700 6400 7250
Connection ~ 6400 7250
Wire Wire Line
	6900 7250 6400 7250
Wire Wire Line
	6400 7250 6300 7250
Text Label 4300 3800 0    50   Italic 0
PWM
Wire Wire Line
	3050 2250 2950 2250
Wire Wire Line
	2900 2150 3050 2150
Wire Wire Line
	2850 2050 3050 2050
Text Label 4900 3850 0    50   Italic 0
SCL
Text Label 5000 3950 0    50   Italic 0
SDA
Wire Wire Line
	2850 1950 3050 1950
Wire Wire Line
	2850 1400 2850 1950
Wire Wire Line
	2900 1850 3050 1850
Wire Wire Line
	2900 1450 2900 1850
Wire Wire Line
	5600 1300 5600 2150
Wire Wire Line
	5400 2150 5600 2150
Text Label 5350 4050 0    50   ~ 10
5V
Wire Wire Line
	5200 7150 5250 7150
Wire Wire Line
	5200 5500 5350 5500
Wire Wire Line
	5200 7150 5200 5500
Wire Wire Line
	2500 2200 2500 5850
Connection ~ 4150 7250
Wire Wire Line
	4150 7250 4150 7150
Text Label 3050 4050 2    50   ~ 10
GND
Wire Wire Line
	5500 3450 5500 7550
Wire Wire Line
	4600 7550 5500 7550
Connection ~ 4600 7550
Wire Wire Line
	4600 7400 4600 7550
Wire Wire Line
	4550 7400 4600 7400
Wire Wire Line
	3850 7550 4600 7550
Wire Wire Line
	3700 7400 3850 7400
Wire Wire Line
	3700 7950 3700 7500
Wire Wire Line
	3900 7950 3700 7950
Wire Wire Line
	3850 7750 3850 7550
Wire Wire Line
	3900 7750 3850 7750
Wire Wire Line
	4550 1450 4400 1450
Wire Wire Line
	5450 1450 5450 1650
Wire Wire Line
	4850 1450 5450 1450
Wire Wire Line
	3900 1450 3900 1300
Wire Wire Line
	4100 1450 3900 1450
Connection ~ 3900 1300
Wire Wire Line
	5400 1650 5450 1650
Wire Wire Line
	500  1300 3900 1300
Wire Wire Line
	5550 1300 5550 1950
Wire Wire Line
	500  7250 1650 7250
Wire Wire Line
	5400 1950 5550 1950
$Comp
L Device:LED D1
U 1 1 6124C676
P 4250 1450
F 0 "D1" H 4150 1550 50  0000 C CNN
F 1 "LED" H 4300 1550 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 4250 1450 50  0001 C CNN
F 3 "~" H 4250 1450 50  0001 C CNN
	1    4250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1400 900  1400
Wire Wire Line
	1600 1450 2900 1450
Wire Wire Line
	1600 4600 1600 1450
Wire Wire Line
	1100 3050 1100 4550
Wire Wire Line
	1100 4550 1100 5850
Connection ~ 1100 4550
Wire Wire Line
	1400 4550 1100 4550
Wire Wire Line
	2950 1500 2950 1750
Wire Wire Line
	2100 1500 2950 1500
Wire Wire Line
	2100 3100 2100 1500
Connection ~ 1100 3050
Wire Wire Line
	1900 3050 1900 3100
Wire Wire Line
	1900 3050 1100 3050
Wire Wire Line
	1100 1550 1100 3050
Wire Wire Line
	3000 1550 3000 1650
Wire Wire Line
	2600 1550 3000 1550
Wire Wire Line
	2600 1600 2600 1550
Wire Wire Line
	2400 1550 2400 1600
Wire Wire Line
	2400 1550 1100 1550
Wire Wire Line
	2000 3700 2000 5850
Wire Wire Line
	2000 5850 2500 5850
Connection ~ 2000 5850
Connection ~ 1100 5850
Wire Wire Line
	5400 3450 5500 3450
Wire Wire Line
	7000 4550 7000 4600
Connection ~ 5900 7250
Wire Wire Line
	7650 8100 7550 8100
Wire Wire Line
	1400 4600 1400 4550
Wire Wire Line
	2950 1750 3050 1750
Wire Wire Line
	3000 1650 3050 1650
Wire Wire Line
	2500 5850 2500 6900
Connection ~ 1500 5850
Wire Wire Line
	1100 5850 1100 6100
Wire Wire Line
	1500 5850 1100 5850
Connection ~ 2500 7250
Wire Wire Line
	7150 7750 7150 8100
$Comp
L Device:R R3
U 1 1 5FEE64E5
P 4000 7400
F 0 "R3" V 3900 7500 50  0000 R CNN
F 1 "10k" V 4000 7500 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3930 7400 50  0001 C CNN
F 3 "~" H 4000 7400 50  0001 C CNN
	1    4000 7400
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5FEE5936
P 4400 7400
F 0 "R7" V 4500 7500 50  0000 R CNN
F 1 "10k" V 4400 7450 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4330 7400 50  0001 C CNN
F 3 "~" H 4400 7400 50  0001 C CNN
	1    4400 7400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 7050 4300 7050
Connection ~ 4200 7050
Wire Wire Line
	3100 6850 3100 5850
Wire Wire Line
	1100 6850 3100 6850
Wire Wire Line
	1100 6700 1100 6850
Wire Wire Line
	2500 6900 2500 7250
Connection ~ 2500 6900
Wire Wire Line
	1000 6900 2500 6900
Wire Wire Line
	1000 6700 1000 6900
Wire Wire Line
	900  6950 900  6700
Wire Wire Line
	3150 6950 900  6950
Wire Wire Line
	3150 5900 3150 6950
Connection ~ 2500 5850
Wire Wire Line
	1500 5850 2000 5850
Wire Wire Line
	1500 5200 1500 5850
Wire Wire Line
	1400 5800 3600 5800
Wire Wire Line
	1400 5800 1400 5200
Wire Wire Line
	1600 5750 3700 5750
Wire Wire Line
	1600 5750 1600 5200
Wire Wire Line
	1900 5700 1900 3700
Wire Wire Line
	2100 5650 2100 3700
Wire Wire Line
	2400 5600 4000 5600
Wire Wire Line
	2400 5600 2400 2200
Wire Wire Line
	2600 2200 2600 5550
Wire Wire Line
	2600 5550 4100 5550
$Comp
L Interface_Expansion:MCP23017_SS U1
U 1 1 5FAF2E35
P 4200 4750
F 0 "U1" V 3650 5200 50  0000 C CNN
F 1 "MCP23017_SS" V 4200 4700 50  0000 C CNN
F 2 "Package_SO:SOIC-28W_7.5x17.9mm_P1.27mm" H 4400 3750 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4400 3650 50  0001 L CNN
	1    4200 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 5900 5350 6900
Wire Wire Line
	7500 6900 7500 6700
Wire Wire Line
	5350 6900 7500 6900
Wire Wire Line
	5400 5850 5400 6800
Wire Wire Line
	7300 6800 7300 6700
Wire Wire Line
	5400 6800 7300 6800
Wire Wire Line
	4800 5800 7000 5800
Wire Wire Line
	4700 5750 6800 5750
Wire Wire Line
	6800 5750 6800 5200
Wire Wire Line
	4300 5550 5800 5550
Wire Wire Line
	5800 2200 5800 5550
Wire Wire Line
	4400 5600 6000 5600
Wire Wire Line
	6000 2200 6000 5600
Wire Wire Line
	4500 5650 6300 5650
Wire Wire Line
	6300 5650 6300 3700
Wire Wire Line
	4600 5700 6500 5700
Wire Wire Line
	6500 5700 6500 3700
$Comp
L Switch:SW_Push SW6
U 1 1 5FBA9E9D
P 7350 8100
F 0 "SW6" H 7350 8385 50  0000 C CNN
F 1 "SW_Push" H 7350 8300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 7350 8300 50  0001 C CNN
F 3 "~" H 7350 8300 50  0001 C CNN
	1    7350 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7050 4200 7050
$Comp
L Switch:SW_Push SW2
U 1 1 5FBAD9B7
P 1400 8100
F 0 "SW2" H 1400 8385 50  0000 C CNN
F 1 "SW_Push" H 1400 8300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1400 8300 50  0001 C CNN
F 3 "~" H 1400 8300 50  0001 C CNN
	1    1400 8100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FBAA91E
P 850 8100
F 0 "SW1" H 850 8385 50  0000 C CNN
F 1 "SW_Push" H 850 8300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 850 8300 50  0001 C CNN
F 3 "~" H 850 8300 50  0001 C CNN
	1    850  8100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5FBA934C
P 6800 8100
F 0 "SW5" H 6800 8385 50  0000 C CNN
F 1 "SW_Push" H 6800 8294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6800 8300 50  0001 C CNN
F 3 "~" H 6800 8300 50  0001 C CNN
	1    6800 8100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5FBA8C47
P 6300 8100
F 0 "SW3" H 6300 8385 50  0000 C CNN
F 1 "SW_Push" H 6300 8294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6300 8300 50  0001 C CNN
F 3 "~" H 6300 8300 50  0001 C CNN
	1    6300 8100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5FBA821B
P 6800 7650
F 0 "SW4" H 6800 7935 50  0000 C CNN
F 1 "SW_Push" H 6800 7844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6800 7850 50  0001 C CNN
F 3 "~" H 6800 7850 50  0001 C CNN
	1    6800 7650
	1    0    0    -1  
$EndComp
$Comp
L Teensy:Teensy-LC MCU1
U 1 1 5FB1E5C1
P 4250 2600
F 0 "MCU1" H 5150 1500 60  0000 C CNN
F 1 "Teensy-LC" H 4300 2750 60  0000 C CNN
F 2 "teensy:Teensy30_31_32_LC" H 4275 1469 60  0001 C CNN
F 3 "" H 4250 2050 60  0000 C CNN
	1    4250 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch RE5
U 1 1 5FFEA425
P 4200 7850
F 0 "RE5" H 4250 8100 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 4245 8080 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 4050 8010 50  0001 C CNN
F 3 "~" H 4200 8110 50  0001 C CNN
	1    4200 7850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FB71914
P 3500 6450
F 0 "R2" H 3600 6300 50  0000 R CNN
F 1 "10k" V 3500 6500 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3430 6450 50  0001 C CNN
F 3 "~" H 3500 6450 50  0001 C CNN
	1    3500 6450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5FB42907
P 4600 6700
F 0 "R14" H 4650 6550 50  0000 R CNN
F 1 "10k" V 4600 6750 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4530 6700 50  0001 C CNN
F 3 "~" H 4600 6700 50  0001 C CNN
	1    4600 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 5900 5000 6550
Wire Wire Line
	5350 5900 5000 5900
Wire Wire Line
	5400 5850 4900 5850
$Comp
L Device:Rotary_Encoder_Switch RE9
U 1 1 5FE07C34
P 7400 6400
F 0 "RE9" H 7200 6650 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 7445 6630 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 7250 6560 50  0001 C CNN
F 3 "~" H 7400 6660 50  0001 C CNN
	1    7400 6400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch RE8
U 1 1 5FE05E7E
P 6900 4900
F 0 "RE8" H 6700 5150 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 6945 5130 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 6750 5060 50  0001 C CNN
F 3 "~" H 6900 5160 50  0001 C CNN
	1    6900 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 5800 4700 5750
Wire Wire Line
	4800 6050 4800 5800
Wire Wire Line
	4900 6300 4900 5850
Wire Wire Line
	4900 7050 5000 7050
Connection ~ 4900 7050
Wire Wire Line
	4900 6600 4900 7050
Wire Wire Line
	4800 7050 4900 7050
Connection ~ 4800 7050
Wire Wire Line
	4800 6350 4800 7050
Wire Wire Line
	4700 7050 4800 7050
Connection ~ 4700 7050
Wire Wire Line
	4700 6100 4700 7050
Wire Wire Line
	5000 7050 5000 6850
Wire Wire Line
	4600 7050 4700 7050
Wire Wire Line
	4600 6550 4600 5700
Wire Wire Line
	4500 5650 4500 6300
Wire Wire Line
	4400 5600 4400 6050
Wire Wire Line
	4300 5550 4300 5800
Connection ~ 4600 7050
Wire Wire Line
	4600 6850 4600 7050
Wire Wire Line
	4500 7050 4600 7050
Connection ~ 4500 7050
Wire Wire Line
	4500 6600 4500 7050
Wire Wire Line
	4400 7050 4500 7050
Connection ~ 4400 7050
Wire Wire Line
	4400 6350 4400 7050
Wire Wire Line
	4300 6100 4300 7050
Wire Wire Line
	4300 7050 4400 7050
$Comp
L Device:Rotary_Encoder_Switch RE7
U 1 1 5FCD3DBA
P 6400 3400
F 0 "RE7" H 6200 3650 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 6445 3630 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 6250 3560 50  0001 C CNN
F 3 "~" H 6400 3660 50  0001 C CNN
	1    6400 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch RE6
U 1 1 5FCC03BD
P 5900 1900
F 0 "RE6" H 5700 2150 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 5945 2130 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 5750 2060 50  0001 C CNN
F 3 "~" H 5900 2160 50  0001 C CNN
	1    5900 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 5550 4100 5800
Wire Wire Line
	3400 5900 3400 6550
Wire Wire Line
	3400 5900 3150 5900
Wire Wire Line
	3500 5850 3500 6300
Wire Wire Line
	3100 5850 3500 5850
$Comp
L Device:Rotary_Encoder_Switch RE4
U 1 1 5FBBD386
P 2500 1900
F 0 "RE4" H 2300 1650 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 2545 2130 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 2350 2060 50  0001 C CNN
F 3 "~" H 2500 2160 50  0001 C CNN
	1    2500 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch RE3
U 1 1 5FBB80FB
P 2000 3400
F 0 "RE3" H 1800 3150 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 2045 3630 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 1850 3560 50  0001 C CNN
F 3 "~" H 2000 3660 50  0001 C CNN
	1    2000 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 6050 3600 5800
Wire Wire Line
	3700 5800 3700 5750
Wire Wire Line
	4000 6050 4000 5600
Wire Wire Line
	4100 7050 4000 7050
Connection ~ 4100 7050
Wire Wire Line
	4100 6100 4100 7050
Wire Wire Line
	4000 7050 3900 7050
Connection ~ 4000 7050
Wire Wire Line
	4000 6350 4000 7050
Wire Wire Line
	3900 7050 3800 7050
Connection ~ 3900 7050
Wire Wire Line
	3900 6600 3900 7050
Wire Wire Line
	3800 7050 3700 7050
Connection ~ 3800 7050
Wire Wire Line
	3800 6850 3800 7050
Wire Wire Line
	3700 7050 3600 7050
Connection ~ 3700 7050
Wire Wire Line
	3700 6100 3700 7050
Wire Wire Line
	3600 7050 3500 7050
Connection ~ 3600 7050
Wire Wire Line
	3600 6350 3600 7050
Wire Wire Line
	3500 7050 3400 7050
Connection ~ 3500 7050
Wire Wire Line
	3500 6600 3500 7050
Wire Wire Line
	3400 7050 3400 6850
$Comp
L Device:R R1
U 1 1 5FB71ED6
P 3400 6700
F 0 "R1" H 3500 6550 50  0000 R CNN
F 1 "10k" V 3400 6750 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3330 6700 50  0001 C CNN
F 3 "~" H 3400 6700 50  0001 C CNN
	1    3400 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5FB714E1
P 3600 6200
F 0 "R4" H 3700 6050 50  0000 R CNN
F 1 "10k" V 3600 6250 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3530 6200 50  0001 C CNN
F 3 "~" H 3600 6200 50  0001 C CNN
	1    3600 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5FB70E0E
P 3700 5950
F 0 "R5" H 3750 5800 50  0000 R CNN
F 1 "10k" V 3700 6000 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3630 5950 50  0001 C CNN
F 3 "~" H 3700 5950 50  0001 C CNN
	1    3700 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5FB709C6
P 3800 6700
F 0 "R6" H 3900 6550 50  0000 R CNN
F 1 "10k" V 3800 6750 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3730 6700 50  0001 C CNN
F 3 "~" H 3800 6700 50  0001 C CNN
	1    3800 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5FB705BD
P 3900 6450
F 0 "R8" H 4000 6300 50  0000 R CNN
F 1 "10k" V 3900 6500 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3830 6450 50  0001 C CNN
F 3 "~" H 3900 6450 50  0001 C CNN
	1    3900 6450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5FB70079
P 4000 6200
F 0 "R9" H 4100 6050 50  0000 R CNN
F 1 "10k" V 4000 6250 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3930 6200 50  0001 C CNN
F 3 "~" H 4000 6200 50  0001 C CNN
	1    4000 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5FB6FACC
P 4100 5950
F 0 "R10" H 4150 5800 50  0000 R CNN
F 1 "10k" V 4100 6000 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4030 5950 50  0001 C CNN
F 3 "~" H 4100 5950 50  0001 C CNN
	1    4100 5950
	-1   0    0    1   
$EndComp
Connection ~ 4300 7050
$Comp
L Device:R R13
U 1 1 5FB425D0
P 4500 6450
F 0 "R13" H 4550 6300 50  0000 R CNN
F 1 "10k" V 4500 6500 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4430 6450 50  0001 C CNN
F 3 "~" H 4500 6450 50  0001 C CNN
	1    4500 6450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5FB41F27
P 4400 6200
F 0 "R12" H 4450 6050 50  0000 R CNN
F 1 "10k" V 4400 6250 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4330 6200 50  0001 C CNN
F 3 "~" H 4400 6200 50  0001 C CNN
	1    4400 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5FB41C1A
P 4300 5950
F 0 "R11" H 4350 5800 50  0000 R CNN
F 1 "10k" V 4300 6000 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4230 5950 50  0001 C CNN
F 3 "~" H 4300 5950 50  0001 C CNN
	1    4300 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5FB419B5
P 4700 5950
F 0 "R15" H 4800 5800 50  0000 R CNN
F 1 "10k" V 4700 6000 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4630 5950 50  0001 C CNN
F 3 "~" H 4700 5950 50  0001 C CNN
	1    4700 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5FB416E7
P 4800 6200
F 0 "R16" H 4850 6050 50  0000 R CNN
F 1 "10k" V 4800 6250 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4730 6200 50  0001 C CNN
F 3 "~" H 4800 6200 50  0001 C CNN
	1    4800 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5FB41386
P 4900 6450
F 0 "R17" H 4950 6300 50  0000 R CNN
F 1 "10k" V 4900 6500 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4830 6450 50  0001 C CNN
F 3 "~" H 4900 6450 50  0001 C CNN
	1    4900 6450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 5FB40D5B
P 5000 6700
F 0 "R18" H 5050 6550 50  0000 R CNN
F 1 "10k" V 5000 6750 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4930 6700 50  0001 C CNN
F 3 "~" H 5000 6700 50  0001 C CNN
	1    5000 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch RE1
U 1 1 5FAFBD97
P 1000 6400
F 0 "RE1" H 800 6150 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 1045 6630 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 850 6560 50  0001 C CNN
F 3 "~" H 1000 6660 50  0001 C CNN
	1    1000 6400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch RE2
U 1 1 5FAFB09D
P 1500 4900
F 0 "RE2" H 1300 4650 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 1545 5130 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 1350 5060 50  0001 C CNN
F 3 "~" H 1500 5160 50  0001 C CNN
	1    1500 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 5200 7000 5800
$EndSCHEMATC
