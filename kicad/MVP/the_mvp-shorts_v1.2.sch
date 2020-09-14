EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Schwurbler - MVP"
Date "2020-09-10"
Rev "1.2a"
Comp "Happy Shooting Community"
Comment1 "USB - Teensy based  "
Comment2 "Teensy LC, 3.2, 4.0"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Switch:SW_Push OB1
U 1 1 5F42391D
P 1600 1450
F 0 "OB1" H 1600 1643 50  0000 C CNN
F 1 "optional monumentary switch Buttons" V 1100 600 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1600 1650 50  0001 C CNN
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
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1600 2300 50  0001 C CNN
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
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1600 2950 50  0001 C CNN
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
P 8300 3900
F 0 "B10" H 8300 4093 50  0000 C CNN
F 1 "monumentary switch Buttons" V 7750 3400 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 8300 4100 50  0001 C CNN
F 3 "~" H 8300 4100 50  0001 C CNN
	1    8300 3900
	1    0    0    -1  
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
P 8000 4150
F 0 "#PWR02" H 8000 3900 50  0001 C CNN
F 1 "GND" H 8005 3977 50  0000 C CNN
F 2 "" H 8000 4150 50  0001 C CNN
F 3 "" H 8000 4150 50  0001 C CNN
	1    8000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3900 8000 4150
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
	1800 3350 2200 3350
Wire Wire Line
	2200 900  550  900 
Wire Wire Line
	550  900  550  7350
Wire Wire Line
	1800 2750 2100 2750
Wire Wire Line
	2100 1000 650  1000
Wire Wire Line
	650  1000 650  7250
Wire Wire Line
	1800 2100 2000 2100
Wire Wire Line
	2000 1100 750  1100
Wire Wire Line
	1250 3350 1250 4700
Wire Wire Line
	1250 4700 1450 4700
Wire Wire Line
	1450 4700 1450 4900
Connection ~ 1250 4700
Wire Wire Line
	2000 1100 2000 2100
Wire Wire Line
	1250 4700 1250 6950
Wire Wire Line
	2100 1000 2100 2750
Wire Wire Line
	2200 900  2200 3350
Wire Wire Line
	1800 1450 1900 1450
Wire Wire Line
	1900 1450 1900 1150
Wire Wire Line
	1900 1150 850  1150
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
	5900 900  6800 900 
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
Wire Wire Line
	8100 3900 8000 3900
Wire Wire Line
	8800 900  7700 900 
Connection ~ 7700 900 
Wire Wire Line
	6400 2450 6450 2450
Wire Wire Line
	7300 2450 7400 2450
Wire Wire Line
	8200 2450 8300 2450
Wire Wire Line
	3500 6850 5850 6850
Wire Wire Line
	8200 1900 8400 1900
Wire Wire Line
	8200 1350 8500 1350
Wire Wire Line
	5950 6950 3400 6950
Wire Wire Line
	8400 1900 8400 2750
Wire Wire Line
	6050 7050 3300 7050
Wire Wire Line
	8500 1350 8500 2850
Wire Wire Line
	7300 1350 7600 1350
Wire Wire Line
	7300 1900 7500 1900
Wire Wire Line
	3200 7150 6150 7150
Wire Wire Line
	6250 7250 3100 7250
Wire Wire Line
	6400 1900 6550 1900
Wire Wire Line
	6400 1350 6650 1350
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
	6650 1350 6650 7650
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
	8800 900  8800 3500
Wire Wire Line
	8500 3900 8800 3900
Wire Wire Line
	8800 4550 8800 3900
Wire Wire Line
	8800 3500 8000 3500
Wire Wire Line
	8000 3500 8000 3900
Connection ~ 8000 3900
$Comp
L Teensy:Teensy-LC MCULC
U 1 1 5F86B13E
P 3150 5600
F 0 "MCULC" V 3228 4522 60  0001 R CNN
F 1 "Teensy-LC" H 3450 6750 60  0000 R CNN
F 2 "" H 3150 5050 60  0000 C CNN
F 3 "" H 3150 5050 60  0000 C CNN
	1    3150 5600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 6950 2200 6750
Wire Wire Line
	2300 6750 2300 7050
Wire Wire Line
	2400 7150 2400 6750
Wire Wire Line
	2500 7250 2500 6750
Wire Wire Line
	2600 7350 2600 6750
Wire Wire Line
	2700 7650 2700 6750
Wire Wire Line
	2800 6750 2800 7550
Wire Wire Line
	2900 7450 2900 6750
Wire Wire Line
	3000 7350 3000 6750
Wire Wire Line
	3100 7250 3100 6750
Wire Wire Line
	3200 7150 3200 6750
Wire Wire Line
	3300 7050 3300 6750
Wire Wire Line
	3400 6950 3400 6750
Wire Wire Line
	3500 6850 3500 6750
Wire Wire Line
	4100 4250 4100 4400
Wire Wire Line
	4000 4400 4000 3850
Wire Wire Line
	2500 1300 2500 3350
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
Wire Wire Line
	7300 3700 7300 3650
Wire Wire Line
	4000 3850 7150 3850
Wire Wire Line
	4550 1450 4850 1450
Wire Wire Line
	4850 1450 4850 1950
Connection ~ 4550 1450
Wire Wire Line
	4550 2950 4850 2950
Connection ~ 4550 2950
Connection ~ 4850 2950
Wire Wire Line
	4550 2450 4850 2450
Connection ~ 4550 2450
Connection ~ 4850 2450
Wire Wire Line
	4850 2450 4850 2950
Wire Wire Line
	4550 1950 4850 1950
Connection ~ 4550 1950
Connection ~ 4850 1950
Wire Wire Line
	4850 1950 4850 2450
Wire Wire Line
	3100 2450 4550 2450
Wire Wire Line
	3100 2950 4550 2950
Wire Wire Line
	3100 1450 4550 1450
Wire Wire Line
	3100 1950 4550 1950
Wire Wire Line
	4550 2650 5000 2650
Connection ~ 4550 2650
Wire Wire Line
	5000 2650 5000 2150
Wire Wire Line
	4550 2150 5000 2150
Connection ~ 4550 2150
Connection ~ 5000 2150
Wire Wire Line
	5000 2150 5000 1650
Wire Wire Line
	4550 1650 5000 1650
Connection ~ 4550 1650
Connection ~ 5000 1650
Wire Wire Line
	5000 1650 5000 1150
Wire Wire Line
	4550 1150 5000 1150
Connection ~ 4550 1150
Wire Wire Line
	3100 1150 4550 1150
Wire Wire Line
	3100 1650 4550 1650
Wire Wire Line
	3100 2650 4550 2650
Wire Wire Line
	3100 2150 4550 2150
Wire Wire Line
	3600 1300 4400 1300
Wire Wire Line
	3600 1300 3600 4400
Wire Wire Line
	3700 1800 4400 1800
Wire Wire Line
	3700 1800 3700 4400
Wire Wire Line
	3800 2300 4400 2300
Wire Wire Line
	3800 2300 3800 4400
Wire Wire Line
	3900 2800 4400 2800
Wire Wire Line
	3900 2800 3900 4400
Wire Wire Line
	2800 2800 2800 3050
Wire Wire Line
	3500 3050 2800 3050
Wire Wire Line
	3500 3050 3500 4400
Wire Wire Line
	3400 3150 2700 3150
Wire Wire Line
	2700 2300 2700 3150
Wire Wire Line
	3400 3150 3400 4400
Wire Wire Line
	3300 3250 2600 3250
Wire Wire Line
	2600 3250 2600 1800
Wire Wire Line
	3300 3250 3300 4400
Wire Wire Line
	3200 3350 2500 3350
Wire Wire Line
	3200 3350 3200 4400
Wire Wire Line
	3000 3650 3000 4400
Wire Wire Line
	5000 3650 5000 2650
Connection ~ 5000 3650
Wire Wire Line
	5000 3650 3000 3650
Connection ~ 5000 2650
Wire Wire Line
	5000 3650 7300 3650
Wire Wire Line
	3100 4050 4850 4050
Wire Wire Line
	7300 4050 7300 4000
Wire Wire Line
	3100 4050 3100 4400
Wire Wire Line
	4850 2950 4850 4050
Connection ~ 4850 4050
Wire Wire Line
	4850 4050 7300 4050
Wire Wire Line
	7300 4250 7300 4550
Wire Wire Line
	7300 4550 8800 4550
Wire Wire Line
	4100 4250 7300 4250
$EndSCHEMATC
