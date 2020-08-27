EESchema Schematic File Version 4
LIBS:the_mvp_v1.1-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Schwurbler - MVP"
Date "2020-08-26"
Rev "1.1"
Comp "Happy Shooting Community"
Comment1 "USB - Teensy based  "
Comment2 "Teensy 3.5, 3.6, 4.1"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Push OB1
U 1 1 5F42391D
P 1600 1450
F 0 "OB1" H 1600 1643 50  0000 C CNN
F 1 "optional monumentary switch Buttons" V 1100 600 50  0001 C CNN
F 2 "Schwurbler:Teensy_Schwurbler_Unified_Footprint" H 1600 1650 50  0001 C CNN
F 3 "~" H 1600 1650 50  0001 C CNN
	1    1600 1450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push OB2
U 1 1 5F428B88
P 1600 2100
F 0 "OB2" H 1600 2293 50  0000 C CNN
F 1 "monumentary switch Button" H 1600 2294 50  0001 C CNN
F 2 "Schwurbler:Teensy_Schwurbler_Unified_Footprint" H 1600 2300 50  0001 C CNN
F 3 "~" H 1600 2300 50  0001 C CNN
	1    1600 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push OB4
U 1 1 5F42A78E
P 1600 3350
F 0 "OB4" H 1600 3543 50  0000 C CNN
F 1 "monumentary switch Button" H 1600 3544 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1600 3550 50  0001 C CNN
F 3 "~" H 1600 3550 50  0001 C CNN
	1    1600 3350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push OB3
U 1 1 5F42987C
P 1600 2750
F 0 "OB3" H 1600 2943 50  0000 C CNN
F 1 "monumentary switch Button" H 1600 2944 50  0001 C CNN
F 2 "Schwurbler:Teensy_Schwurbler_Unified_Footprint" H 1600 2950 50  0001 C CNN
F 3 "~" H 1600 2950 50  0001 C CNN
	1    1600 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RE3
U 1 1 5F42CE66
P 3100 2300
F 0 "RE3" H 2900 2350 50  0000 L CNN
F 1 "10k" H 2900 2250 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 2950 2460 50  0001 C CNN
F 3 "~" H 3100 2560 50  0001 C CNN
	1    3100 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RE4
U 1 1 5F42D508
P 3100 2800
F 0 "RE4" H 2900 2850 50  0000 L CNN
F 1 "10k" H 2900 2750 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 2950 2960 50  0001 C CNN
F 3 "~" H 3100 3060 50  0001 C CNN
	1    3100 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RE5
U 1 1 5F43012E
P 4550 1300
F 0 "RE5" H 4350 1350 50  0000 L CNN
F 1 "10k" H 4350 1250 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 4400 1460 50  0001 C CNN
F 3 "~" H 4550 1560 50  0001 C CNN
	1    4550 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RE6
U 1 1 5F430DDF
P 4550 1800
F 0 "RE6" H 4350 1850 50  0000 L CNN
F 1 "10k" H 4350 1750 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 4400 1960 50  0001 C CNN
F 3 "~" H 4550 2060 50  0001 C CNN
	1    4550 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RE7
U 1 1 5F4316E4
P 4550 2300
F 0 "RE7" H 4350 2350 50  0000 L CNN
F 1 "10k" H 4350 2250 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 4400 2460 50  0001 C CNN
F 3 "~" H 4550 2560 50  0001 C CNN
	1    4550 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RE8
U 1 1 5F43285B
P 4550 2800
F 0 "RE8" H 4350 2850 50  0000 L CNN
F 1 "10k" H 4350 2750 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 4400 2960 50  0001 C CNN
F 3 "~" H 4550 3060 50  0001 C CNN
	1    4550 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RE2
U 1 1 5F42C1B5
P 3100 1800
F 0 "RE2" H 2900 1850 50  0000 L CNN
F 1 "10k" H 2900 1750 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 2950 1960 50  0001 C CNN
F 3 "~" H 3100 2060 50  0001 C CNN
	1    3100 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RE9
U 1 1 5F44C127
P 7300 3850
F 0 "RE9" H 7100 3900 50  0000 L CNN
F 1 "10k" H 7100 3800 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 7150 4010 50  0001 C CNN
F 3 "~" H 7300 4110 50  0001 C CNN
	1    7300 3850
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push B1
U 1 1 5F44E083
P 6200 1350
F 0 "B1" H 6200 1543 50  0000 C CNN
F 1 "monumentary switch Buttons" V 5650 850 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6200 1550 50  0001 C CNN
F 3 "~" H 6200 1550 50  0001 C CNN
	1    6200 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B2
U 1 1 5F44EBCB
P 6200 1900
F 0 "B2" H 6200 2093 50  0000 C CNN
F 1 "monumentary switch Buttons" V 5650 1400 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6200 2100 50  0001 C CNN
F 3 "~" H 6200 2100 50  0001 C CNN
	1    6200 1900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B3
U 1 1 5F44F009
P 6200 2450
F 0 "B3" H 6200 2643 50  0000 C CNN
F 1 "monumentary switch Buttons" V 5650 1950 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 6200 2650 50  0001 C CNN
F 3 "~" H 6200 2650 50  0001 C CNN
	1    6200 2450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B5
U 1 1 5F44FAD7
P 7100 1900
F 0 "B5" H 7100 2093 50  0000 C CNN
F 1 "monumentary switch Buttons" V 6550 1400 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 7100 2100 50  0001 C CNN
F 3 "~" H 7100 2100 50  0001 C CNN
	1    7100 1900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B6
U 1 1 5F450074
P 7100 2450
F 0 "B6" H 7100 2643 50  0000 C CNN
F 1 "monumentary switch Buttons" V 6550 1950 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 7100 2650 50  0001 C CNN
F 3 "~" H 7100 2650 50  0001 C CNN
	1    7100 2450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B4
U 1 1 5F44F504
P 7100 1350
F 0 "B4" H 7100 1543 50  0000 C CNN
F 1 "monumentary switch Buttons" V 6550 850 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 7100 1550 50  0001 C CNN
F 3 "~" H 7100 1550 50  0001 C CNN
	1    7100 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B7
U 1 1 5F4522A0
P 8000 1350
F 0 "B7" H 8000 1543 50  0000 C CNN
F 1 "monumentary switch Buttons" V 7450 850 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 8000 1550 50  0001 C CNN
F 3 "~" H 8000 1550 50  0001 C CNN
	1    8000 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B8
U 1 1 5F4529ED
P 8000 1900
F 0 "B8" H 8000 2093 50  0000 C CNN
F 1 "monumentary switch Buttons" V 7450 1400 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 8000 2100 50  0001 C CNN
F 3 "~" H 8000 2100 50  0001 C CNN
	1    8000 1900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B9
U 1 1 5F45302C
P 8000 2450
F 0 "B9" H 8000 2643 50  0000 C CNN
F 1 "monumentary switch Buttons" V 7450 1950 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 8000 2650 50  0001 C CNN
F 3 "~" H 8000 2650 50  0001 C CNN
	1    8000 2450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push B10
U 1 1 5F45A833
P 8600 3750
F 0 "B10" H 8600 3943 50  0000 C CNN
F 1 "monumentary switch Buttons" V 8050 3250 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 8600 3950 50  0001 C CNN
F 3 "~" H 8600 3950 50  0001 C CNN
	1    8600 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 1900 7700 1900
Wire Wire Line
	7700 1900 7700 2450
Wire Wire Line
	7800 2450 7700 2450
Wire Wire Line
	7800 1350 7700 1350
Wire Wire Line
	7700 1350 7700 1900
Connection ~ 7700 1900
Wire Wire Line
	6900 1350 6800 1350
Wire Wire Line
	6800 1350 6800 1900
Wire Wire Line
	6800 1900 6900 1900
Wire Wire Line
	6800 1900 6800 2450
Wire Wire Line
	6800 2450 6900 2450
Connection ~ 6800 1900
Wire Wire Line
	6000 2450 5900 2450
Wire Wire Line
	6000 1900 5900 1900
Wire Wire Line
	5900 1900 5900 2450
Wire Wire Line
	6000 1350 5900 1350
Wire Wire Line
	5900 1350 5900 1900
Connection ~ 5900 1900
$Comp
L Device:R_POT RE1
U 1 1 5F42B097
P 3100 1300
F 0 "RE1" H 2900 1350 50  0000 L CNN
F 1 "10k" H 2900 1250 50  0000 L CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09K_Single_Vertical" H 2950 1460 50  0001 C CNN
F 3 "~" H 3100 1560 50  0001 C CNN
	1    3100 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1250 1450 1250 2100
Wire Wire Line
	1250 2100 1400 2100
Wire Wire Line
	1250 1450 1400 1450
Wire Wire Line
	1250 2100 1250 2750
Wire Wire Line
	1250 2750 1400 2750
Connection ~ 1250 2100
Wire Wire Line
	1250 2750 1250 3350
Wire Wire Line
	1250 3350 1400 3350
Connection ~ 1250 2750
$Comp
L power:GND #PWR01
U 1 1 5F491BDE
P 1450 4900
F 0 "#PWR01" H 1450 4650 50  0001 C CNN
F 1 "GND" H 1455 4727 50  0000 C CNN
F 2 "" H 1450 4900 50  0001 C CNN
F 3 "" H 1450 4900 50  0001 C CNN
	1    1450 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5F4AB313
P 8300 3750
F 0 "#PWR02" H 8300 3500 50  0001 C CNN
F 1 "GND" H 8305 3577 50  0000 C CNN
F 2 "" H 8300 3750 50  0001 C CNN
F 3 "" H 8300 3750 50  0001 C CNN
	1    8300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6950 1250 6950
Connection ~ 1250 3350
Wire Wire Line
	2500 1300 2950 1300
Wire Wire Line
	2600 1800 2950 1800
Wire Wire Line
	2950 2300 2700 2300
Wire Wire Line
	2950 2800 2800 2800
Wire Wire Line
	550  900  550  7350
Wire Wire Line
	650  1000 650  7250
Wire Wire Line
	1250 3350 1250 4700
Wire Wire Line
	1250 4700 1450 4700
Wire Wire Line
	1450 4700 1450 4900
Connection ~ 1250 4700
Wire Wire Line
	1250 4700 1250 6950
Wire Wire Line
	850  1150 850  7050
Wire Wire Line
	850  7050 2300 7050
Wire Wire Line
	750  1100 750  7150
Wire Wire Line
	750  7150 2400 7150
Wire Wire Line
	650  7250 2500 7250
Wire Wire Line
	550  7350 2600 7350
Wire Wire Line
	5900 1350 5900 900 
Wire Wire Line
	6800 900  6800 1350
Connection ~ 5900 1350
Connection ~ 6800 1350
Wire Wire Line
	6800 900  7700 900 
Wire Wire Line
	7700 900  7700 1350
Connection ~ 6800 900 
Connection ~ 7700 1350
Connection ~ 7700 900 
Wire Wire Line
	6400 2450 6450 2450
Wire Wire Line
	7300 2450 7400 2450
Wire Wire Line
	8200 2450 8250 2450
Wire Wire Line
	3500 6850 5850 6850
Wire Wire Line
	8200 1900 8250 1900
Wire Wire Line
	8200 1350 8250 1350
Wire Wire Line
	5950 6950 3400 6950
Wire Wire Line
	8400 1900 8400 2750
Wire Wire Line
	6050 7050 3300 7050
Wire Wire Line
	8500 1350 8500 2850
Wire Wire Line
	7300 1350 7400 1350
Wire Wire Line
	7300 1900 7400 1900
Wire Wire Line
	3200 7150 6150 7150
Wire Wire Line
	6250 7250 3100 7250
Wire Wire Line
	6400 1900 6450 1900
Wire Wire Line
	3000 7350 6350 7350
Wire Wire Line
	2900 7450 6450 7450
Wire Wire Line
	6450 2450 6450 7450
Wire Wire Line
	2800 7550 6550 7550
Wire Wire Line
	6550 1900 6550 7550
Wire Wire Line
	2700 7650 6650 7650
Wire Wire Line
	6150 3150 7400 3150
Wire Wire Line
	6150 3150 6150 7150
Wire Wire Line
	7400 2450 7400 3150
Wire Wire Line
	6250 3250 7500 3250
Wire Wire Line
	7500 1900 7500 3250
Wire Wire Line
	6250 3250 6250 7250
Wire Wire Line
	6350 3350 7600 3350
Wire Wire Line
	7600 1350 7600 3350
Wire Wire Line
	6350 3350 6350 7350
Wire Wire Line
	8300 2650 5850 2650
Wire Wire Line
	8300 2650 8300 2450
Wire Wire Line
	5850 2650 5850 6850
Wire Wire Line
	8400 2750 5950 2750
Wire Wire Line
	5950 2750 5950 6950
Wire Wire Line
	8500 2850 6050 2850
Wire Wire Line
	6050 2850 6050 7050
Wire Wire Line
	5650 5250 5450 5250
$Comp
L Teensy:Teensy4.1 MCU1
U 1 1 5F41DAAA
P 4350 5550
F 0 "MCU1" H 4350 8100 50  0000 L CNN
F 1 "Teensy4.1" H 4250 8000 50  0000 L CNN
F 2 "Schwurbler:Teensy_Schwurbler_Unified_Footprint" H 3950 5950 50  0001 C CNN
F 3 "" H 3950 5950 50  0001 C CNN
	1    4350 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 4450 2600 1800
Wire Wire Line
	2700 2300 2700 4450
Wire Wire Line
	2800 2800 2800 4450
Wire Wire Line
	2900 4450 2900 3100
Wire Wire Line
	3100 3300 3100 4450
Wire Wire Line
	3000 3200 3000 4450
Wire Wire Line
	3300 3850 3300 4450
Wire Wire Line
	2700 7650 2700 6650
Wire Wire Line
	2800 7550 2800 6650
Wire Wire Line
	3000 7350 3000 6650
Wire Wire Line
	2900 6650 2900 7450
Wire Wire Line
	3100 6650 3100 7250
Wire Wire Line
	3200 7150 3200 6650
Wire Wire Line
	3300 7050 3300 6650
Wire Wire Line
	3400 6950 3400 6650
Wire Wire Line
	3500 6850 3500 6650
Wire Wire Line
	2600 7350 2600 6650
Wire Wire Line
	2500 7250 2500 6650
Wire Wire Line
	2400 7150 2400 6650
Wire Wire Line
	2300 7050 2300 6650
Wire Wire Line
	2200 6650 2200 6950
Wire Wire Line
	5900 900  6800 900 
Wire Wire Line
	3200 2800 3300 2800
Wire Wire Line
	3300 2800 3300 2750
Wire Wire Line
	3300 3850 7150 3850
Wire Wire Line
	4250 3400 4250 2800
Wire Wire Line
	4250 2800 4400 2800
Wire Wire Line
	3200 3400 4250 3400
Wire Wire Line
	4150 3300 4150 2300
Wire Wire Line
	4150 2300 4400 2300
Wire Wire Line
	3100 3300 4150 3300
Wire Wire Line
	4050 3200 4050 1800
Wire Wire Line
	4050 1800 4400 1800
Wire Wire Line
	3000 3200 4050 3200
Wire Wire Line
	3950 3100 3950 1300
Wire Wire Line
	3950 1300 4400 1300
Wire Wire Line
	2900 3100 3950 3100
Wire Wire Line
	7300 3650 7300 3700
Wire Wire Line
	7300 4000 7300 4050
Wire Wire Line
	7300 4050 3700 4050
Wire Wire Line
	2400 4050 2400 4450
Wire Wire Line
	3100 1150 3400 1150
Wire Wire Line
	3100 1650 3400 1650
Wire Wire Line
	3100 1950 3700 1950
Wire Wire Line
	3100 2150 3400 2150
Wire Wire Line
	3100 2650 3400 2650
Wire Wire Line
	3100 2950 3700 2950
Wire Wire Line
	2500 1300 2500 4450
Wire Wire Line
	4550 2450 3700 2450
Wire Wire Line
	3400 1150 3400 1650
Connection ~ 3400 1150
Connection ~ 3400 1650
Wire Wire Line
	3400 1650 3400 2150
Connection ~ 3400 2150
Wire Wire Line
	3400 2150 3400 2650
Connection ~ 3400 2650
Wire Wire Line
	3400 2650 3400 3650
Connection ~ 3400 3650
Wire Wire Line
	3400 3650 7300 3650
Wire Wire Line
	3400 1650 4550 1650
Wire Wire Line
	3400 1150 4550 1150
Wire Wire Line
	3400 2650 4550 2650
Wire Wire Line
	3100 1450 3700 1450
Wire Wire Line
	3400 2150 4550 2150
Wire Wire Line
	3700 1450 3700 1950
Connection ~ 3700 1450
Wire Wire Line
	3700 1450 4550 1450
Connection ~ 3700 1950
Wire Wire Line
	3700 1950 4550 1950
Wire Wire Line
	3700 1950 3700 2450
Connection ~ 3700 2450
Wire Wire Line
	3700 2450 3100 2450
Wire Wire Line
	3700 2450 3700 2950
Connection ~ 3700 2950
Wire Wire Line
	3700 2950 4550 2950
Wire Wire Line
	3700 2950 3700 4050
Connection ~ 3700 4050
Wire Wire Line
	3700 4050 2400 4050
Wire Wire Line
	8300 3750 8300 3200
Wire Wire Line
	8300 3200 8600 3200
Connection ~ 8600 3200
Wire Wire Line
	8600 3200 8600 3550
Wire Wire Line
	8600 900  8600 3200
Wire Wire Line
	8600 900  7700 900 
$Comp
L Device:CP C1
U 1 1 60386F47
P 2250 3850
F 0 "C1" H 2350 3750 50  0000 R CIN
F 1 "optional" H 2350 3950 50  0001 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P3.50mm" H 2288 3700 50  0001 C CNN
F 3 "~" H 2250 3850 50  0001 C CNN
	1    2250 3850
	-1   0    0    1   
$EndComp
Connection ~ 2400 4050
Wire Wire Line
	3200 3400 3200 4450
Wire Wire Line
	3400 4250 8000 4250
Wire Wire Line
	3400 4250 3400 4450
Wire Wire Line
	8600 3950 8600 4250
Wire Wire Line
	2400 4050 2250 4050
Wire Wire Line
	2300 4150 2300 4450
Wire Wire Line
	2250 3700 2250 3650
Connection ~ 2250 3650
Wire Wire Line
	2250 3650 3400 3650
Wire Wire Line
	2250 4000 2250 4050
Wire Wire Line
	1800 1450 1800 1150
Wire Wire Line
	1800 1150 850  1150
Wire Wire Line
	1900 1100 750  1100
Wire Wire Line
	1800 2100 1900 2100
Wire Wire Line
	1900 2100 1900 1100
Wire Wire Line
	2000 2750 2000 1000
Wire Wire Line
	2000 1000 650  1000
Wire Wire Line
	2100 3350 2100 900 
Wire Wire Line
	2100 900  550  900 
$Comp
L Device:R_Small R1
U 1 1 605CB7B4
P 1800 1600
F 0 "R1" H 1650 1550 50  0000 L CNN
F 1 " 10kOhm (optional)" H 1859 1555 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 1800 1600 50  0001 C CNN
F 3 "~" H 1800 1600 50  0001 C CNN
	1    1800 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60638397
P 1800 2250
F 0 "R2" H 1650 2200 50  0000 L CNN
F 1 " 10kOhm (optional)" H 1859 2205 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 1800 2250 50  0001 C CNN
F 3 "~" H 1800 2250 50  0001 C CNN
	1    1800 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 60638FCB
P 1800 2900
F 0 "R3" H 1650 2850 50  0000 L CNN
F 1 " 10kOhm (optional)" H 1859 2855 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 1800 2900 50  0001 C CNN
F 3 "~" H 1800 2900 50  0001 C CNN
	1    1800 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 60639469
P 1800 3500
F 0 "R4" H 1650 3450 50  0000 L CNN
F 1 " 10kOhm (optional)" H 1859 3455 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 1800 3500 50  0001 C CNN
F 3 "~" H 1800 3500 50  0001 C CNN
	1    1800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2750 2000 2750
Wire Wire Line
	1800 3350 2100 3350
Wire Wire Line
	1800 3400 1800 3350
Connection ~ 1800 3350
Wire Wire Line
	1800 2800 1800 2750
Connection ~ 1800 2750
Wire Wire Line
	1800 3000 1800 3050
Wire Wire Line
	1800 3050 2400 3050
Connection ~ 2400 3050
Wire Wire Line
	1800 2150 1800 2100
Connection ~ 1800 2100
Wire Wire Line
	1800 2350 1800 2400
Wire Wire Line
	1800 2400 2400 2400
Connection ~ 2400 2400
Wire Wire Line
	2400 2400 2400 3050
Wire Wire Line
	1800 1700 1800 1750
Wire Wire Line
	1800 1750 2400 1750
Wire Wire Line
	2400 1750 2400 2400
Wire Wire Line
	1800 1500 1800 1450
Connection ~ 1800 1450
Wire Wire Line
	1800 3600 1800 3650
Wire Wire Line
	1800 3650 2000 3650
Wire Wire Line
	2400 3050 2400 3550
Wire Wire Line
	2100 3650 2100 4150
Wire Wire Line
	2100 3650 2250 3650
Wire Wire Line
	2100 4150 2300 4150
Wire Wire Line
	2000 3550 2400 3550
Connection ~ 2400 3550
Wire Wire Line
	2000 3550 2000 3650
Wire Wire Line
	2400 3550 2400 4050
$Comp
L Device:R_Small R5
U 1 1 60902855
P 6450 1200
F 0 "R5" H 6500 1150 50  0000 L CNN
F 1 " 10kOhm (optional)" H 6509 1155 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6450 1200 50  0001 C CNN
F 3 "~" H 6450 1200 50  0001 C CNN
	1    6450 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 60904B12
P 6450 1750
F 0 "R6" H 6600 1700 50  0000 R CNN
F 1 " 10kOhm (optional)" H 6509 1705 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6450 1750 50  0001 C CNN
F 3 "~" H 6450 1750 50  0001 C CNN
	1    6450 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1850 6450 1900
Connection ~ 6450 1900
Wire Wire Line
	6450 1900 6550 1900
Wire Wire Line
	6400 1350 6450 1350
Wire Wire Line
	6450 1300 6450 1350
Connection ~ 6450 1350
Wire Wire Line
	6450 1350 6650 1350
Wire Wire Line
	6650 1350 6650 7650
$Comp
L Device:R_Small R7
U 1 1 609F1CA9
P 6450 2300
F 0 "R7" H 6600 2250 50  0000 R CNN
F 1 " 10kOhm (optional)" H 6509 2255 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 6450 2300 50  0001 C CNN
F 3 "~" H 6450 2300 50  0001 C CNN
	1    6450 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2450 6450 2400
Connection ~ 6450 2450
Wire Wire Line
	6450 1050 6450 1100
Wire Wire Line
	6450 1650 6450 1600
Wire Wire Line
	6450 2200 6450 2150
$Comp
L Device:R_Small R8
U 1 1 60A3DA60
P 7400 1200
F 0 "R8" H 7450 1150 50  0000 L CNN
F 1 " 10kOhm (optional)" H 7459 1155 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 7400 1200 50  0001 C CNN
F 3 "~" H 7400 1200 50  0001 C CNN
	1    7400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 60A3E1B3
P 7400 1750
F 0 "R9" H 7450 1700 50  0000 L CNN
F 1 " 10kOhm (optional)" H 7459 1705 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 7400 1750 50  0001 C CNN
F 3 "~" H 7400 1750 50  0001 C CNN
	1    7400 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 60A3EB13
P 7400 2300
F 0 "R10" H 7450 2250 50  0000 L CNN
F 1 " 10kOhm (optional)" H 7459 2255 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 7400 2300 50  0001 C CNN
F 3 "~" H 7400 2300 50  0001 C CNN
	1    7400 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1850 7400 1900
Connection ~ 7400 1900
Wire Wire Line
	7400 1900 7500 1900
Wire Wire Line
	7400 2450 7400 2400
Connection ~ 7400 2450
Wire Wire Line
	7400 1300 7400 1350
Connection ~ 7400 1350
Wire Wire Line
	7400 1350 7600 1350
Wire Wire Line
	7400 1600 7400 1650
Wire Wire Line
	7400 1100 7400 1050
Wire Wire Line
	7400 2150 7400 2200
$Comp
L Device:R_Small R11
U 1 1 60A8F3B2
P 8250 1200
F 0 "R11" H 8300 1150 50  0000 L CNN
F 1 " 10kOhm (optional)" H 8309 1155 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8250 1200 50  0001 C CNN
F 3 "~" H 8250 1200 50  0001 C CNN
	1    8250 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 60A8FA48
P 8250 1750
F 0 "R12" H 8300 1700 50  0000 L CNN
F 1 " 10kOhm (optional)" H 8309 1705 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8250 1750 50  0001 C CNN
F 3 "~" H 8250 1750 50  0001 C CNN
	1    8250 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 60A8FE68
P 8250 2300
F 0 "R13" H 8300 2250 50  0000 L CNN
F 1 " 10kOhm (optional)" H 8309 2255 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8250 2300 50  0001 C CNN
F 3 "~" H 8250 2300 50  0001 C CNN
	1    8250 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2400 8250 2450
Connection ~ 8250 2450
Wire Wire Line
	8250 2450 8300 2450
Wire Wire Line
	8250 2200 8250 2150
Wire Wire Line
	8250 2150 7400 2150
Connection ~ 7400 2150
Wire Wire Line
	7400 1600 8250 1600
Wire Wire Line
	8250 1600 8250 1650
Connection ~ 7400 1600
Wire Wire Line
	7400 1050 8250 1050
Wire Wire Line
	8250 1050 8250 1100
Connection ~ 7400 1050
Wire Wire Line
	8250 1300 8250 1350
Connection ~ 8250 1350
Wire Wire Line
	8250 1350 8500 1350
Wire Wire Line
	8250 1850 8250 1900
Connection ~ 8250 1900
Wire Wire Line
	8250 1900 8400 1900
$Comp
L Device:R_Small R14
U 1 1 60AE6FBD
P 8000 4100
F 0 "R14" H 8050 4050 50  0000 L CNN
F 1 " 10kOhm (optional)" H 8059 4055 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8000 4100 50  0001 C CNN
F 3 "~" H 8000 4100 50  0001 C CNN
	1    8000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4200 8000 4250
Connection ~ 8000 4250
Wire Wire Line
	8000 4250 8600 4250
Wire Wire Line
	7300 4050 7750 4050
Wire Wire Line
	7750 4050 7750 3950
Wire Wire Line
	7750 3950 8000 3950
Wire Wire Line
	8000 3950 8000 4000
Connection ~ 7300 4050
Wire Wire Line
	7750 3950 7750 3000
Wire Wire Line
	7750 3000 8900 3000
Wire Wire Line
	8900 3000 8900 2150
Wire Wire Line
	8900 2150 8250 2150
Connection ~ 7750 3950
Connection ~ 8250 2150
Wire Wire Line
	6450 2150 7400 2150
Wire Wire Line
	6450 1600 7400 1600
Wire Wire Line
	6450 1050 7400 1050
Wire Wire Line
	8250 1050 8900 1050
Wire Wire Line
	8900 1050 8900 1600
Connection ~ 8250 1050
Connection ~ 8900 2150
Wire Wire Line
	8250 1600 8900 1600
Connection ~ 8250 1600
Connection ~ 8900 1600
Wire Wire Line
	8900 1600 8900 2150
$Comp
L Device:LED D1
U 1 1 60B76935
P 5200 1300
F 0 "D1" V 5147 1378 50  0000 L CNN
F 1 "LED" V 5238 1378 50  0000 L CNN
F 2 "LED_THT:LED_D5.0mm" H 5200 1300 50  0001 C CNN
F 3 "~" H 5200 1300 50  0001 C CNN
	1    5200 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	5200 4350 3500 4350
Wire Wire Line
	3500 4350 3500 4450
$Comp
L Device:R_Small R15
U 1 1 60C25CB2
P 5200 1650
F 0 "R15" H 5250 1600 50  0000 L CNN
F 1 " 470Ohm (optional)" H 5259 1605 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 5200 1650 50  0001 C CNN
F 3 "~" H 5200 1650 50  0001 C CNN
	1    5200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1450 5200 1550
Wire Wire Line
	5200 1750 5200 4350
Connection ~ 5900 900 
Wire Wire Line
	5200 900  5900 900 
Wire Wire Line
	5200 1150 5200 900 
$EndSCHEMATC
