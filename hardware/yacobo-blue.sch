EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BluePill:BluePill_STM32F103C U1
U 1 1 614D131D
P 4150 3250
F 0 "U1" H 4150 4525 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 4150 4434 50  0000 C CNN
F 2 "BluePill:BluePill_STM32F103C" H 1600 17150 50  0001 C CNN
F 3 "" H 1600 17150 50  0001 C CNN
	1    4150 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x16 J2
U 1 1 614D2AC1
P 6250 2300
F 0 "J2" H 6330 2292 50  0000 L CNN
F 1 "columns" H 6330 2201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 6250 2300 50  0001 C CNN
F 3 "~" H 6250 2300 50  0001 C CNN
	1    6250 2300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 614D7C81
P 6250 3600
F 0 "J3" H 6330 3592 50  0000 L CNN
F 1 "rows" H 6330 3501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 6330 3455 50  0001 L CNN
F 3 "~" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 614D8BAD
P 6250 4400
F 0 "J4" H 6330 4392 50  0000 L CNN
F 1 "leds" H 6330 4301 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6250 4400 50  0001 C CNN
F 3 "~" H 6250 4400 50  0001 C CNN
	1    6250 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 614F087C
P 1800 2100
F 0 "J1" H 1857 2567 50  0000 C CNN
F 1 "USB_B" H 1857 2476 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 1950 2050 50  0001 C CNN
F 3 " ~" H 1950 2050 50  0001 C CNN
	1    1800 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 614F32BC
P 2250 1800
F 0 "#PWR0101" H 2250 1650 50  0001 C CNN
F 1 "+5V" H 2265 1973 50  0000 C CNN
F 2 "" H 2250 1800 50  0001 C CNN
F 3 "" H 2250 1800 50  0001 C CNN
	1    2250 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R0
U 1 1 614F4CCA
P 2850 1800
F 0 "R0" H 2920 1846 50  0000 L CNN
F 1 "1.8k" H 2920 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2780 1800 50  0001 C CNN
F 3 "~" H 2850 1800 50  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 614F5854
P 2450 2200
F 0 "R2" V 2350 2200 50  0000 C CNN
F 1 "22" V 2250 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2380 2200 50  0001 C CNN
F 3 "~" H 2450 2200 50  0001 C CNN
	1    2450 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 614F988D
P 2450 2100
F 0 "R1" V 2657 2100 50  0000 C CNN
F 1 "22" V 2566 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2380 2100 50  0001 C CNN
F 3 "~" H 2450 2100 50  0001 C CNN
	1    2450 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 2200 2300 2200
Wire Wire Line
	2100 2100 2300 2100
Wire Wire Line
	2100 1900 2250 1900
Wire Wire Line
	2250 1900 2250 1800
$Comp
L power:GND #PWR0103
U 1 1 6150AF17
P 1800 2850
F 0 "#PWR0103" H 1800 2600 50  0001 C CNN
F 1 "GND" H 1805 2677 50  0000 C CNN
F 2 "" H 1800 2850 50  0001 C CNN
F 3 "" H 1800 2850 50  0001 C CNN
	1    1800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2500 1700 2700
Wire Wire Line
	1700 2700 1800 2700
Wire Wire Line
	1800 2700 1800 2850
Wire Wire Line
	1800 2500 1800 2700
Connection ~ 1800 2700
$Comp
L power:GND #PWR0104
U 1 1 6150C427
P 3000 4100
F 0 "#PWR0104" H 3000 3850 50  0001 C CNN
F 1 "GND" H 3005 3927 50  0000 C CNN
F 2 "" H 3000 4100 50  0001 C CNN
F 3 "" H 3000 4100 50  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4100 3000 4000
Wire Wire Line
	3000 4000 3650 4000
Wire Wire Line
	2600 2100 2850 2100
Wire Wire Line
	2850 2100 2850 1950
$Comp
L power:+5V #PWR0106
U 1 1 6151CC2B
P 3000 3850
F 0 "#PWR0106" H 3000 3700 50  0001 C CNN
F 1 "+5V" H 3015 4023 50  0000 C CNN
F 2 "" H 3000 3850 50  0001 C CNN
F 3 "" H 3000 3850 50  0001 C CNN
	1    3000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3900 3000 3900
Wire Wire Line
	3000 3900 3000 3850
$Comp
L power:+3.3V #PWR0108
U 1 1 6151F53E
P 5150 2400
F 0 "#PWR0108" H 5150 2250 50  0001 C CNN
F 1 "+3.3V" H 5165 2573 50  0000 C CNN
F 2 "" H 5150 2400 50  0001 C CNN
F 3 "" H 5150 2400 50  0001 C CNN
	1    5150 2400
	1    0    0    -1  
$EndComp
Text GLabel 3000 2100 2    50   Input ~ 0
USB+
Text GLabel 3000 2200 2    50   Input ~ 0
USB-
Wire Wire Line
	3000 2200 2600 2200
Wire Wire Line
	2850 2100 3000 2100
Connection ~ 2850 2100
Text GLabel 3550 2900 0    50   Input ~ 0
USB-
Wire Wire Line
	3650 2900 3550 2900
Text GLabel 3550 3000 0    50   Input ~ 0
USB+
Wire Wire Line
	3550 3000 3650 3000
$Comp
L Device:R R3
U 1 1 61532AE5
P 5800 4300
F 0 "R3" V 5800 4300 50  0000 C CNN
F 1 "120" V 5900 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 4300 50  0001 C CNN
F 3 "~" H 5800 4300 50  0001 C CNN
	1    5800 4300
	0    -1   -1   0   
$EndComp
Text GLabel 5500 4300 0    50   Input ~ 0
led0
Wire Wire Line
	5500 4300 5650 4300
Wire Wire Line
	5950 4300 6050 4300
Text GLabel 5500 4400 0    50   Input ~ 0
led1
Text GLabel 5500 4600 0    50   Input ~ 0
led2
$Comp
L Device:R R4
U 1 1 6153B5CA
P 5800 4400
F 0 "R4" V 5800 4400 50  0000 C CNN
F 1 "120" V 5850 4200 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 4400 50  0001 C CNN
F 3 "~" H 5800 4400 50  0001 C CNN
	1    5800 4400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 6153F10D
P 5800 4600
F 0 "R5" V 5800 4600 50  0000 C CNN
F 1 "120" V 5850 4400 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5730 4600 50  0001 C CNN
F 3 "~" H 5800 4600 50  0001 C CNN
	1    5800 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 4400 6050 4400
Wire Wire Line
	5500 4400 5650 4400
Wire Wire Line
	5500 4600 5650 4600
Wire Wire Line
	5950 4600 6050 4600
$Comp
L power:+3.3V #PWR0109
U 1 1 61543ECE
P 5050 4500
F 0 "#PWR0109" H 5050 4350 50  0001 C CNN
F 1 "+3.3V" H 5065 4673 50  0000 C CNN
F 2 "" H 5050 4500 50  0001 C CNN
F 3 "" H 5050 4500 50  0001 C CNN
	1    5050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 4500 6050 4500
Text GLabel 5900 1600 0    50   Input ~ 0
col0
Text GLabel 5900 1700 0    50   Input ~ 0
col1
Text GLabel 5900 1800 0    50   Input ~ 0
col2
Text GLabel 5900 1900 0    50   Input ~ 0
col3
Text GLabel 5900 2000 0    50   Input ~ 0
col4
Text GLabel 5900 2100 0    50   Input ~ 0
col5
Text GLabel 5900 2200 0    50   Input ~ 0
col6
Text GLabel 5900 2300 0    50   Input ~ 0
col7
Text GLabel 5900 2400 0    50   Input ~ 0
col8
Text GLabel 5900 2500 0    50   Input ~ 0
col9
Text GLabel 5900 2600 0    50   Input ~ 0
col10
Text GLabel 5900 2700 0    50   Input ~ 0
col11
Text GLabel 5900 2800 0    50   Input ~ 0
col12
Text GLabel 5900 2900 0    50   Input ~ 0
col13
Text GLabel 5900 3000 0    50   Input ~ 0
col14
Text GLabel 5900 3100 0    50   Input ~ 0
col15
Text GLabel 5900 3300 0    50   Input ~ 0
row0
Text GLabel 5900 3400 0    50   Input ~ 0
row1
Text GLabel 5900 3500 0    50   Input ~ 0
row2
Text GLabel 5900 3600 0    50   Input ~ 0
row3
Text GLabel 5900 3700 0    50   Input ~ 0
row4
Text GLabel 5900 3800 0    50   Input ~ 0
row5
Text GLabel 5900 3900 0    50   Input ~ 0
row6
Text GLabel 5900 4000 0    50   Input ~ 0
row7
Wire Wire Line
	5900 1600 6050 1600
Wire Wire Line
	5900 1700 6050 1700
Wire Wire Line
	5900 1800 6050 1800
Wire Wire Line
	5900 1900 6050 1900
Wire Wire Line
	5900 2000 6050 2000
Wire Wire Line
	5900 2100 6050 2100
Wire Wire Line
	5900 2200 6050 2200
Wire Wire Line
	5900 2300 6050 2300
Wire Wire Line
	5900 2400 6050 2400
Wire Wire Line
	5900 2500 6050 2500
Wire Wire Line
	5900 2600 6050 2600
Wire Wire Line
	5900 2700 6050 2700
Wire Wire Line
	5900 2800 6050 2800
Wire Wire Line
	5900 2900 6050 2900
Wire Wire Line
	5900 3000 6050 3000
Wire Wire Line
	5900 3100 6050 3100
Wire Wire Line
	5900 3300 6050 3300
Wire Wire Line
	5900 3400 6050 3400
Wire Wire Line
	5900 3500 6050 3500
Wire Wire Line
	5900 3600 6050 3600
Wire Wire Line
	5900 3700 6050 3700
Wire Wire Line
	5900 3800 6050 3800
Wire Wire Line
	5900 3900 6050 3900
Wire Wire Line
	5900 4000 6050 4000
Text GLabel 3550 3800 0    50   Input ~ 0
col0
Text GLabel 3550 3700 0    50   Input ~ 0
col1
Wire Wire Line
	3550 3800 3650 3800
Wire Wire Line
	3550 3700 3650 3700
Text GLabel 3550 3600 0    50   Input ~ 0
col2
Text GLabel 3550 3500 0    50   Input ~ 0
col3
Text GLabel 3550 3400 0    50   Input ~ 0
col4
Text GLabel 3550 3300 0    50   Input ~ 0
col5
Text GLabel 3550 3200 0    50   Input ~ 0
col6
Text GLabel 3550 3100 0    50   Input ~ 0
col7
Wire Wire Line
	3550 3600 3650 3600
Wire Wire Line
	3550 3500 3650 3500
Wire Wire Line
	3550 3400 3650 3400
Wire Wire Line
	3550 3300 3650 3300
Wire Wire Line
	3550 3200 3650 3200
Wire Wire Line
	3550 3100 3650 3100
Text GLabel 3550 2800 0    50   Input ~ 0
col8
Text GLabel 3550 2700 0    50   Input ~ 0
col9
Text GLabel 3550 2600 0    50   Input ~ 0
col10
Text GLabel 3550 2200 0    50   Input ~ 0
col14
Text GLabel 3550 2300 0    50   Input ~ 0
col13
Text GLabel 3550 2400 0    50   Input ~ 0
col12
Text GLabel 3550 2500 0    50   Input ~ 0
col11
Text GLabel 4750 2600 2    50   Input ~ 0
led2
Wire Wire Line
	4650 2600 4750 2600
Text GLabel 4750 2700 2    50   Input ~ 0
led1
Text GLabel 4750 2800 2    50   Input ~ 0
led0
Text GLabel 4750 2900 2    50   Input ~ 0
row7
Wire Wire Line
	4650 2700 4750 2700
Wire Wire Line
	4650 2800 4750 2800
Wire Wire Line
	4650 2900 4750 2900
Wire Wire Line
	3550 2200 3650 2200
Wire Wire Line
	3550 2300 3650 2300
Wire Wire Line
	3550 2400 3650 2400
Wire Wire Line
	3550 2500 3650 2500
Wire Wire Line
	3550 2600 3650 2600
Wire Wire Line
	3550 2700 3650 2700
Wire Wire Line
	3550 2800 3650 2800
Text GLabel 4750 3700 2    50   Input ~ 0
col15
Text GLabel 4750 3600 2    50   Input ~ 0
row0
Text GLabel 4750 3500 2    50   Input ~ 0
row1
Text GLabel 4750 3400 2    50   Input ~ 0
row2
Text GLabel 4750 3300 2    50   Input ~ 0
row3
Text GLabel 4750 3200 2    50   Input ~ 0
row4
Text GLabel 4750 3100 2    50   Input ~ 0
row5
Text GLabel 4750 3000 2    50   Input ~ 0
row6
Wire Wire Line
	4650 3000 4750 3000
Wire Wire Line
	4650 3100 4750 3100
Wire Wire Line
	4650 3200 4750 3200
Wire Wire Line
	4650 3300 4750 3300
Wire Wire Line
	4650 3400 4750 3400
Wire Wire Line
	4650 3500 4750 3500
Wire Wire Line
	4650 3600 4750 3600
Wire Wire Line
	4650 3700 4750 3700
Text GLabel 3550 4100 0    50   Input ~ 0
D+Pullup
Wire Wire Line
	3550 4100 3650 4100
Text GLabel 2850 1400 1    50   Input ~ 0
D+Pullup
Wire Wire Line
	2850 1400 2850 1650
Wire Wire Line
	4650 2400 5150 2400
$Comp
L power:GND #PWR?
U 1 1 6172F446
P 4950 2050
F 0 "#PWR?" H 4950 1800 50  0001 C CNN
F 1 "GND" H 4955 1877 50  0000 C CNN
F 2 "" H 4950 2050 50  0001 C CNN
F 3 "" H 4950 2050 50  0001 C CNN
	1    4950 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2200 4700 2200
Wire Wire Line
	4700 2200 4700 1950
Wire Wire Line
	4700 1950 4950 1950
Wire Wire Line
	4950 1950 4950 2050
Wire Wire Line
	4650 2300 4700 2300
Wire Wire Line
	4700 2300 4700 2200
Connection ~ 4700 2200
$EndSCHEMATC
