EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Schwurbler - Schwurbler360"
Date "2020-11-20"
Rev "1.0.1"
Comp "Happy Shooting Community"
Comment1 "Inputs: 8 Button 8 Rotary Encoder, 1 Rotary Encoder w. Button"
Comment2 "Connection: USB"
Comment3 "MCU: Arduino Pro Micro"
Comment4 ""
$EndDescr
Wire Wire Line
	4500 6950 4700 6950
Connection ~ 4700 6450
Wire Wire Line
	4700 6950 4700 6450
Wire Wire Line
	3750 7050 3900 7050
Connection ~ 3750 6450
Wire Wire Line
	3750 7050 3750 6450
$Comp
L Switch:SW_Push SW7
U 1 1 65C45DB9
P 6100 7350
F 0 "SW7" H 6100 7635 50  0000 C CNN
F 1 "SW_Push" H 6100 7550 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6100 7550 50  0001 C CNN
F 3 "~" H 6100 7550 50  0001 C CNN
	1    6100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 6450 3750 6450
$Comp
L Switch:SW_Push SW3
U 1 1 65B367BA
P 1400 7350
F 0 "SW3" H 1400 7635 50  0000 C CNN
F 1 "SW_Push" H 1400 7550 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1400 7550 50  0001 C CNN
F 3 "~" H 1400 7550 50  0001 C CNN
	1    1400 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6700 3700 6600
Connection ~ 3700 6700
Wire Wire Line
	3700 6700 5550 6700
$Comp
L Switch:SW_Push SW2
U 1 1 64E12D11
P 1400 6850
F 0 "SW2" H 1400 7135 50  0000 C CNN
F 1 "SW_Push" H 1400 7050 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1400 7050 50  0001 C CNN
F 3 "~" H 1400 7050 50  0001 C CNN
	1    1400 6850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 64E12554
P 1900 7100
F 0 "SW4" H 1900 7385 50  0000 C CNN
F 1 "SW_Push" H 1900 7300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1900 7300 50  0001 C CNN
F 3 "~" H 1900 7300 50  0001 C CNN
	1    1900 7100
	1    0    0    -1  
$EndComp
Connection ~ 3500 3200
Wire Wire Line
	3600 3200 3600 3250
Wire Wire Line
	3500 3200 3600 3200
Connection ~ 3400 3200
Wire Wire Line
	3500 3200 3500 3250
Wire Wire Line
	3400 3200 3500 3200
Wire Wire Line
	3400 3250 3400 3200
Wire Wire Line
	3100 3950 3050 3950
Wire Wire Line
	5350 3950 5350 4700
Connection ~ 5350 3950
Wire Wire Line
	5300 3950 5350 3950
Connection ~ 5000 5100
Wire Wire Line
	5000 5100 5000 4650
Connection ~ 4900 5050
Wire Wire Line
	4900 5050 4900 4650
Connection ~ 4800 5000
Wire Wire Line
	4800 5000 4800 4650
Connection ~ 4700 4950
Wire Wire Line
	4700 4950 4700 4650
Connection ~ 4600 4900
Wire Wire Line
	4600 4900 4600 4650
Connection ~ 4500 4850
Wire Wire Line
	4500 4850 4500 4650
Connection ~ 4400 4800
Wire Wire Line
	4400 4800 4400 4650
Connection ~ 4300 4750
Wire Wire Line
	4300 4750 4300 4650
Connection ~ 4100 4750
Wire Wire Line
	4100 4750 4100 4650
Connection ~ 4000 4800
Wire Wire Line
	4000 4800 4000 4650
Connection ~ 3900 4850
Wire Wire Line
	3900 4850 3900 4650
Wire Wire Line
	3900 4850 3900 5500
Wire Wire Line
	3800 4900 3800 4650
Connection ~ 3800 4900
Wire Wire Line
	1900 4900 3800 4900
Wire Wire Line
	2100 4850 3900 4850
Wire Wire Line
	3800 5750 3800 4900
Connection ~ 3700 4950
Wire Wire Line
	3700 4950 3700 4650
Connection ~ 3600 5000
Wire Wire Line
	3600 5000 3600 4650
Connection ~ 3500 5050
Wire Wire Line
	3500 5050 3500 4650
Connection ~ 3400 5100
Wire Wire Line
	3400 5100 3400 4650
Connection ~ 4200 6350
Wire Wire Line
	4200 6600 4250 6600
Connection ~ 4200 6600
Wire Wire Line
	4200 6600 4200 6350
Wire Wire Line
	4150 6600 4200 6600
Wire Wire Line
	4200 6250 4200 6350
Wire Wire Line
	6400 2900 6400 2950
Text Label 4150 3100 0    50   Italic 0
PWM
Text Label 4750 3000 0    50   Italic 0
SCL
Text Label 4850 2900 0    50   Italic 0
SDA
Text Label 5350 3350 2    50   ~ 10
5V
Wire Wire Line
	5200 4700 5350 4700
Wire Wire Line
	5200 6350 5200 4700
Text Label 3050 3350 0    50   ~ 10
GND
Wire Wire Line
	4600 6750 5500 6750
Connection ~ 4600 6750
Wire Wire Line
	4600 6600 4600 6750
Wire Wire Line
	4550 6600 4600 6600
Wire Wire Line
	3850 6750 4600 6750
Wire Wire Line
	3700 6600 3850 6600
Wire Wire Line
	3700 7150 3700 6700
Wire Wire Line
	3900 7150 3700 7150
Wire Wire Line
	3850 6950 3850 6750
Wire Wire Line
	3900 6950 3850 6950
Wire Wire Line
	2000 2900 2000 3050
Connection ~ 2500 6450
$Comp
L Device:R R8
U 1 1 5FEE64E5
P 4000 6600
F 0 "R8" V 3900 6700 50  0000 R CNN
F 1 "10k" V 4000 6700 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3930 6600 50  0001 C CNN
F 3 "~" H 4000 6600 50  0001 C CNN
	1    4000 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5FEE5936
P 4400 6600
F 0 "R12" V 4500 6700 50  0000 R CNN
F 1 "10k" V 4400 6650 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4330 6600 50  0001 C CNN
F 3 "~" H 4400 6600 50  0001 C CNN
	1    4400 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 6250 4300 6250
Connection ~ 4200 6250
Wire Wire Line
	1100 6050 1400 6050
Wire Wire Line
	1100 5900 1100 6050
Wire Wire Line
	2500 6100 2500 6450
Connection ~ 2500 6100
Wire Wire Line
	1000 6100 2500 6100
Wire Wire Line
	1000 5900 1000 6100
Wire Wire Line
	900  6150 900  5900
Wire Wire Line
	1500 4400 1500 4500
Wire Wire Line
	1400 5000 3600 5000
Wire Wire Line
	1400 5000 1400 4400
Wire Wire Line
	1600 4950 3700 4950
Wire Wire Line
	1600 4950 1600 4400
Wire Wire Line
	1900 4900 1900 2900
Wire Wire Line
	2100 4850 2100 2900
Wire Wire Line
	2400 4800 4000 4800
Wire Wire Line
	2600 4750 4100 4750
Wire Wire Line
	7500 6100 7500 5900
Wire Wire Line
	7300 6000 7300 5900
Wire Wire Line
	4800 5000 7000 5000
Wire Wire Line
	4700 4950 6800 4950
Wire Wire Line
	4300 4750 5800 4750
Wire Wire Line
	4400 4800 6000 4800
Wire Wire Line
	4500 4850 6300 4850
Wire Wire Line
	6300 4850 6300 2900
Wire Wire Line
	4600 4900 6500 4900
Wire Wire Line
	6500 4900 6500 2900
$Comp
L Switch:SW_Push SW8
U 1 1 5FBA9E9D
P 6500 7100
F 0 "SW8" H 6500 7385 50  0000 C CNN
F 1 "SW_Push" H 6500 7300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6500 7300 50  0001 C CNN
F 3 "~" H 6500 7300 50  0001 C CNN
	1    6500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6250 4200 6250
$Comp
L Switch:SW_Push SW1
U 1 1 5FBAA91E
P 900 7100
F 0 "SW1" H 900 7385 50  0000 C CNN
F 1 "SW_Push" H 900 7300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 900 7300 50  0001 C CNN
F 3 "~" H 900 7300 50  0001 C CNN
	1    900  7100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5FBA8C47
P 5650 7100
F 0 "SW5" H 5650 7385 50  0000 C CNN
F 1 "SW_Push" H 5650 7294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 5650 7300 50  0001 C CNN
F 3 "~" H 5650 7300 50  0001 C CNN
	1    5650 7100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5FBA821B
P 6100 6850
F 0 "SW6" H 6100 7135 50  0000 C CNN
F 1 "SW_Push" H 6100 7044 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6100 7050 50  0001 C CNN
F 3 "~" H 6100 7050 50  0001 C CNN
	1    6100 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch RE5
U 1 1 5FFEA425
P 4200 7050
F 0 "RE5" H 4250 7300 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 4245 7280 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 4050 7210 50  0001 C CNN
F 3 "~" H 4200 7310 50  0001 C CNN
	1    4200 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FB71914
P 3500 5650
F 0 "R2" H 3600 5500 50  0000 R CNN
F 1 "10k" V 3500 5700 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3430 5650 50  0001 C CNN
F 3 "~" H 3500 5650 50  0001 C CNN
	1    3500 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 5FB42907
P 4600 5900
F 0 "R14" H 4650 5750 50  0000 R CNN
F 1 "10k" V 4600 5950 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4530 5900 50  0001 C CNN
F 3 "~" H 4600 5900 50  0001 C CNN
	1    4600 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 5100 5000 5750
$Comp
L Device:Rotary_Encoder RE9
U 1 1 5FE07C34
P 7400 5600
F 0 "RE9" H 7200 5850 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 7445 5830 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 7250 5760 50  0001 C CNN
F 3 "~" H 7400 5860 50  0001 C CNN
	1    7400 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder RE8
U 1 1 5FE05E7E
P 6900 4100
F 0 "RE8" H 6700 4350 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 6945 4330 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 6750 4260 50  0001 C CNN
F 3 "~" H 6900 4360 50  0001 C CNN
	1    6900 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 5000 4700 4950
Wire Wire Line
	4800 5250 4800 5000
Wire Wire Line
	4900 5500 4900 5050
Wire Wire Line
	4900 6250 5000 6250
Connection ~ 4900 6250
Wire Wire Line
	4900 5800 4900 6250
Wire Wire Line
	4800 6250 4900 6250
Connection ~ 4800 6250
Wire Wire Line
	4800 5550 4800 6250
Wire Wire Line
	4700 6250 4800 6250
Connection ~ 4700 6250
Wire Wire Line
	4700 5300 4700 6250
Wire Wire Line
	5000 6250 5000 6050
Wire Wire Line
	4600 6250 4700 6250
Wire Wire Line
	4600 5750 4600 4900
Wire Wire Line
	4500 4850 4500 5500
Wire Wire Line
	4400 4800 4400 5250
Wire Wire Line
	4300 4750 4300 5000
Connection ~ 4600 6250
Wire Wire Line
	4600 6050 4600 6250
Wire Wire Line
	4500 6250 4600 6250
Connection ~ 4500 6250
Wire Wire Line
	4500 5800 4500 6250
Wire Wire Line
	4400 6250 4500 6250
Connection ~ 4400 6250
Wire Wire Line
	4400 5550 4400 6250
Wire Wire Line
	4300 5300 4300 6250
Wire Wire Line
	4300 6250 4400 6250
$Comp
L Device:Rotary_Encoder RE7
U 1 1 5FCD3DBA
P 6400 2600
F 0 "RE7" H 6200 2850 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 6445 2830 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 6250 2760 50  0001 C CNN
F 3 "~" H 6400 2860 50  0001 C CNN
	1    6400 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder RE6
U 1 1 5FCC03BD
P 5900 1000
F 0 "RE6" H 5700 1250 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 5945 1230 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 5750 1160 50  0001 C CNN
F 3 "~" H 5900 1260 50  0001 C CNN
	1    5900 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 4750 4100 5000
Wire Wire Line
	3400 5100 3400 5750
Wire Wire Line
	3500 5050 3500 5500
$Comp
L Device:Rotary_Encoder RE4
U 1 1 5FBBD386
P 2500 1000
F 0 "RE4" H 2300 750 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 2545 1230 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 2350 1160 50  0001 C CNN
F 3 "~" H 2500 1260 50  0001 C CNN
	1    2500 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder RE3
U 1 1 5FBB80FB
P 2000 2600
F 0 "RE3" H 1800 2350 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 2045 2830 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 1850 2760 50  0001 C CNN
F 3 "~" H 2000 2860 50  0001 C CNN
	1    2000 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 5250 3600 5000
Wire Wire Line
	3700 5000 3700 4950
Wire Wire Line
	4000 5250 4000 4800
Wire Wire Line
	4100 6250 4000 6250
Connection ~ 4100 6250
Wire Wire Line
	4100 5300 4100 6250
Wire Wire Line
	4000 6250 3900 6250
Connection ~ 4000 6250
Wire Wire Line
	4000 5550 4000 6250
Wire Wire Line
	3900 6250 3800 6250
Connection ~ 3900 6250
Wire Wire Line
	3900 5800 3900 6250
Wire Wire Line
	3800 6250 3700 6250
Connection ~ 3800 6250
Wire Wire Line
	3800 6050 3800 6250
Wire Wire Line
	3700 6250 3600 6250
Connection ~ 3700 6250
Wire Wire Line
	3700 5300 3700 6250
Wire Wire Line
	3600 6250 3500 6250
Connection ~ 3600 6250
Wire Wire Line
	3600 5550 3600 6250
Wire Wire Line
	3500 6250 3400 6250
Connection ~ 3500 6250
Wire Wire Line
	3500 5800 3500 6250
Wire Wire Line
	3400 6250 3400 6050
$Comp
L Device:R R1
U 1 1 5FB71ED6
P 3400 5900
F 0 "R1" H 3500 5750 50  0000 R CNN
F 1 "10k" V 3400 5950 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3330 5900 50  0001 C CNN
F 3 "~" H 3400 5900 50  0001 C CNN
	1    3400 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5FB714E1
P 3600 5400
F 0 "R3" H 3700 5250 50  0000 R CNN
F 1 "10k" V 3600 5450 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3530 5400 50  0001 C CNN
F 3 "~" H 3600 5400 50  0001 C CNN
	1    3600 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5FB70E0E
P 3700 5150
F 0 "R4" H 3750 5000 50  0000 R CNN
F 1 "10k" V 3700 5200 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3630 5150 50  0001 C CNN
F 3 "~" H 3700 5150 50  0001 C CNN
	1    3700 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5FB709C6
P 3800 5900
F 0 "R5" H 3900 5750 50  0000 R CNN
F 1 "10k" V 3800 5950 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 5900 50  0001 C CNN
F 3 "~" H 3800 5900 50  0001 C CNN
	1    3800 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5FB705BD
P 3900 5650
F 0 "R6" H 4000 5500 50  0000 R CNN
F 1 "10k" V 3900 5700 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3830 5650 50  0001 C CNN
F 3 "~" H 3900 5650 50  0001 C CNN
	1    3900 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5FB70079
P 4000 5400
F 0 "R7" H 4100 5250 50  0000 R CNN
F 1 "10k" V 4000 5450 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3930 5400 50  0001 C CNN
F 3 "~" H 4000 5400 50  0001 C CNN
	1    4000 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5FB6FACC
P 4100 5150
F 0 "R9" H 4150 5000 50  0000 R CNN
F 1 "10k" V 4100 5200 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4030 5150 50  0001 C CNN
F 3 "~" H 4100 5150 50  0001 C CNN
	1    4100 5150
	-1   0    0    1   
$EndComp
Connection ~ 4300 6250
$Comp
L Device:R R13
U 1 1 5FB425D0
P 4500 5650
F 0 "R13" H 4550 5500 50  0000 R CNN
F 1 "10k" V 4500 5700 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4430 5650 50  0001 C CNN
F 3 "~" H 4500 5650 50  0001 C CNN
	1    4500 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5FB41F27
P 4400 5400
F 0 "R11" H 4450 5250 50  0000 R CNN
F 1 "10k" V 4400 5450 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4330 5400 50  0001 C CNN
F 3 "~" H 4400 5400 50  0001 C CNN
	1    4400 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5FB41C1A
P 4300 5150
F 0 "R10" H 4350 5000 50  0000 R CNN
F 1 "10k" V 4300 5200 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4230 5150 50  0001 C CNN
F 3 "~" H 4300 5150 50  0001 C CNN
	1    4300 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 5FB419B5
P 4700 5150
F 0 "R15" H 4800 5000 50  0000 R CNN
F 1 "10k" V 4700 5200 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4630 5150 50  0001 C CNN
F 3 "~" H 4700 5150 50  0001 C CNN
	1    4700 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5FB416E7
P 4800 5400
F 0 "R16" H 4850 5250 50  0000 R CNN
F 1 "10k" V 4800 5450 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4730 5400 50  0001 C CNN
F 3 "~" H 4800 5400 50  0001 C CNN
	1    4800 5400
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5FB41386
P 4900 5650
F 0 "R17" H 4950 5500 50  0000 R CNN
F 1 "10k" V 4900 5700 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4830 5650 50  0001 C CNN
F 3 "~" H 4900 5650 50  0001 C CNN
	1    4900 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 5FB40D5B
P 5000 5900
F 0 "R18" H 5050 5750 50  0000 R CNN
F 1 "10k" V 5000 5950 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4930 5900 50  0001 C CNN
F 3 "~" H 5000 5900 50  0001 C CNN
	1    5000 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:Rotary_Encoder RE1
U 1 1 5FAFBD97
P 1000 5600
F 0 "RE1" H 800 5350 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 1045 5830 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 850 5760 50  0001 C CNN
F 3 "~" H 1000 5860 50  0001 C CNN
	1    1000 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Rotary_Encoder RE2
U 1 1 5FAFB09D
P 1500 4100
F 0 "RE2" H 1300 3850 50  0000 L CNN
F 1 "Rotary_Encoder_Switch" V 1545 4330 50  0001 L CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm_CircularMountingHoles" H 1350 4260 50  0001 C CNN
F 3 "~" H 1500 4360 50  0001 C CNN
	1    1500 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7000 4400 7000 5000
$Comp
L Schwurbler:Arduino_Pro_Micro_5V MCU1
U 1 1 5FB8C7FB
P 3800 1350
F 0 "MCU1" H 3500 1350 60  0000 C CNN
F 1 "ProMicro" V 4200 650 60  0000 C CNN
F 2 "promicro:ProMicro" H 4650 1350 60  0000 C CNN
F 3 "" H 3900 300 60  0000 C CNN
	1    3800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6850 1150 6850
Wire Wire Line
	3750 6450 4700 6450
Wire Wire Line
	5000 3250 5000 2900
Wire Wire Line
	5000 2900 3200 2900
Wire Wire Line
	4300 3100 4300 3250
Wire Wire Line
	4900 3000 4900 3250
Wire Wire Line
	3350 1800 3150 1800
Wire Wire Line
	2650 2100 3350 2100
Wire Wire Line
	3350 2200 2700 2200
Wire Wire Line
	3350 2300 2750 2300
Wire Wire Line
	3350 2400 2800 2400
Wire Wire Line
	5550 2500 5550 6700
Wire Wire Line
	5550 2500 5100 2500
Wire Wire Line
	5500 2600 5500 6750
Wire Wire Line
	5500 2600 5100 2600
Wire Wire Line
	2850 2500 3350 2500
Wire Wire Line
	4600 7150 4600 7300
Wire Wire Line
	4600 7150 4500 7150
Wire Wire Line
	5900 6450 5900 6850
Connection ~ 5900 6850
Wire Wire Line
	5900 6850 5900 7100
Wire Wire Line
	5850 7100 5900 7100
Connection ~ 5900 7100
Wire Wire Line
	5900 7100 5900 7350
Wire Wire Line
	6300 7100 5900 7100
Wire Wire Line
	6350 7350 6300 7350
Wire Wire Line
	6350 7350 6350 7400
Wire Wire Line
	5450 7100 5300 7100
Wire Wire Line
	1100 7100 1150 7100
Wire Wire Line
	1150 7100 1150 7350
Wire Wire Line
	1150 7350 1200 7350
Connection ~ 1150 7100
Wire Wire Line
	5100 1600 5700 1600
Wire Wire Line
	5700 1600 5700 2950
Connection ~ 5700 1600
Wire Wire Line
	5700 1600 5900 1600
Wire Wire Line
	6900 4400 6900 4500
Wire Wire Line
	6400 2950 5700 2950
Connection ~ 5700 2950
Wire Wire Line
	4700 6450 5900 6450
Connection ~ 2500 1700
Wire Wire Line
	2500 1700 3350 1700
Wire Wire Line
	1150 7100 1150 6850
Wire Wire Line
	1150 6450 1150 6850
Wire Wire Line
	1150 6450 2500 6450
Connection ~ 1150 6850
Wire Wire Line
	1150 7100 1700 7100
Wire Wire Line
	650  7100 700  7100
Wire Wire Line
	6700 6300 5650 6300
Wire Wire Line
	4200 6350 5200 6350
Wire Wire Line
	6700 6300 6700 7100
Wire Wire Line
	6650 6850 6650 6350
Wire Wire Line
	5600 6350 6650 6350
Wire Wire Line
	6300 6850 6650 6850
$Comp
L Interface_Expansion:MCP23017_SP IC1
U 1 1 61E1C4AA
P 4200 3950
F 0 "IC1" V 4100 3850 50  0000 L CNN
F 1 "MCP23017_SP" V 4250 3850 50  0000 L CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4400 2950 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 4400 2850 50  0001 L CNN
	1    4200 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1700 2500 3050
Wire Wire Line
	3050 3200 3050 3950
Wire Wire Line
	5300 7100 5300 7350
Wire Wire Line
	2800 7350 5300 7350
Wire Wire Line
	2800 2400 2800 7350
Wire Wire Line
	2850 7300 4600 7300
Wire Wire Line
	2850 7300 2850 2500
Wire Wire Line
	1500 4500 2500 4500
Connection ~ 2500 4500
Wire Wire Line
	2000 3050 2500 3050
Connection ~ 2500 3050
Wire Wire Line
	2500 3050 2500 4500
Wire Wire Line
	2500 4500 2500 6100
Wire Wire Line
	2300 1500 3350 1500
Wire Wire Line
	3350 1600 2350 1600
Wire Wire Line
	650  7400 650  7100
Wire Wire Line
	1600 6850 2300 6850
Wire Wire Line
	2300 1500 2300 6850
Wire Wire Line
	2100 7100 2350 7100
Wire Wire Line
	1400 5050 1400 6050
Wire Wire Line
	1450 5100 1450 6150
Wire Wire Line
	1450 6150 900  6150
Wire Wire Line
	1400 5050 3500 5050
Wire Wire Line
	1450 5100 3400 5100
Wire Wire Line
	7000 6000 7300 6000
Wire Wire Line
	4900 5050 7000 5050
Wire Wire Line
	5000 5100 6800 5100
Wire Wire Line
	7400 6250 5700 6250
Wire Wire Line
	7400 5900 7400 6250
Text Label 5300 1600 0    50   ~ 0
GND
Text Label 2750 1700 0    50   ~ 0
GND
Text Label 2750 1500 0    50   ~ 0
Push_2
Text Label 2750 1600 0    50   ~ 0
Push_4
Text Label 2650 2100 0    50   ~ 0
Push_1
Text Label 2700 2200 0    50   ~ 0
Push_3
Wire Wire Line
	2750 7400 6350 7400
Wire Wire Line
	2650 2100 2650 7400
Wire Wire Line
	650  7400 2650 7400
Wire Wire Line
	1600 7350 2700 7350
Wire Wire Line
	2700 7350 2700 2200
Wire Wire Line
	2750 2300 2750 7400
Text Label 2750 2300 0    50   ~ 0
Push_7
Text Label 2800 2400 0    50   ~ 0
Push_5
Text Label 2850 2500 0    50   ~ 0
RE_Push
Wire Wire Line
	3300 2600 3300 3100
Wire Wire Line
	3300 2600 3350 2600
Wire Wire Line
	3300 3100 4300 3100
Wire Wire Line
	3250 2000 3350 2000
Wire Wire Line
	3250 2000 3250 3000
Wire Wire Line
	4900 3000 3250 3000
Wire Wire Line
	3200 1900 3200 2900
Wire Wire Line
	3200 1900 3350 1900
Wire Wire Line
	3150 1800 3150 3200
Connection ~ 3150 3200
Wire Wire Line
	3150 3200 3400 3200
Wire Wire Line
	3050 3200 3150 3200
Wire Wire Line
	5100 2300 5650 2300
Wire Wire Line
	5650 2300 5650 6300
Wire Wire Line
	5100 2400 5600 2400
Wire Wire Line
	5600 2400 5600 6350
Wire Wire Line
	5250 1800 5100 1800
Wire Wire Line
	4100 3200 5250 3200
Wire Wire Line
	4100 3200 4100 3250
Wire Wire Line
	5350 3200 5350 3950
Connection ~ 5250 3200
Wire Wire Line
	5250 3200 5350 3200
Wire Wire Line
	5250 1800 5250 3200
Text Label 5650 2300 2    50   ~ 0
Push_8
Text Label 5600 2400 2    50   ~ 0
Push_6
Text Label 5550 2500 2    50   ~ 0
RE5_CLK
Text Label 5500 2600 2    50   ~ 0
RE5_DT
Text Label 5800 1400 2    50   ~ 0
RE6_CLK
Text Label 6000 1400 0    50   ~ 0
RE6_DT
Text Label 6300 3400 1    50   ~ 0
RE7_CLK
Text Label 6500 3400 1    50   ~ 0
RE7_DT
Text Label 6800 4900 1    50   ~ 0
RE8_CLK
Text Label 7000 4950 1    50   ~ 0
RE8_DT
Wire Wire Line
	6800 5100 6800 6100
Wire Wire Line
	6800 6100 7500 6100
Text Label 6800 6050 1    50   ~ 0
RE9_CLK
Wire Wire Line
	6800 4950 6800 4400
Wire Wire Line
	6900 4500 5700 4500
Wire Wire Line
	5700 2950 5700 4500
Connection ~ 5700 4500
Wire Wire Line
	5700 4500 5700 6250
Text Label 7000 5950 1    50   ~ 0
RE9_DT
Wire Wire Line
	7000 5050 7000 6000
Text Label 2400 1400 2    50   ~ 0
RE4_CLK
Wire Wire Line
	2350 1600 2350 7100
Wire Wire Line
	2400 1300 2400 4800
Wire Wire Line
	2500 1300 2500 1700
Wire Wire Line
	2600 1300 2600 4750
Wire Wire Line
	5800 1300 5800 4750
Wire Wire Line
	5900 1300 5900 1600
Wire Wire Line
	6000 1300 6000 4800
Text Label 2600 1400 0    50   ~ 0
RE4_DT
Text Label 1900 3600 1    50   ~ 0
RE3_CLK
Text Label 2100 3600 1    50   ~ 0
RE3_DT
Text Label 1400 4900 1    50   ~ 0
RE2_CLK
Text Label 1600 4900 1    50   ~ 0
RE2_DT
Text Label 900  6000 2    50   ~ 0
RE1_CLK
Text Label 1100 6000 0    50   ~ 0
RE1_DT
$EndSCHEMATC
