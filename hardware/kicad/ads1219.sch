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
L mycomponents:ADS1219 U1
U 1 1 5EDA8C62
P 5400 3300
F 0 "U1" H 5850 3750 50  0000 C CNN
F 1 "ADS1219" H 5500 2950 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 5950 3750 50  0001 C CNN
F 3 "" H 5950 3750 50  0001 C CNN
	1    5400 3300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5EDA9311
P 5400 2200
F 0 "#PWR0101" H 5400 2050 50  0001 C CNN
F 1 "VCC" H 5417 2373 50  0000 C CNN
F 2 "" H 5400 2200 50  0001 C CNN
F 3 "" H 5400 2200 50  0001 C CNN
	1    5400 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EDA9A7D
P 5400 4850
F 0 "#PWR0102" H 5400 4600 50  0001 C CNN
F 1 "GND" H 5405 4677 50  0000 C CNN
F 2 "" H 5400 4850 50  0001 C CNN
F 3 "" H 5400 4850 50  0001 C CNN
	1    5400 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5EDAA133
P 4850 2550
F 0 "C1" H 4965 2596 50  0000 L CNN
F 1 "100n" H 4965 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4888 2400 50  0001 C CNN
F 3 "~" H 4850 2550 50  0001 C CNN
	1    4850 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5EDABC04
P 6100 2550
F 0 "C9" H 6215 2596 50  0000 L CNN
F 1 "100n" H 6215 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6138 2400 50  0001 C CNN
F 3 "~" H 6100 2550 50  0001 C CNN
	1    6100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5EDAC2D8
P 4850 2800
F 0 "#PWR0103" H 4850 2550 50  0001 C CNN
F 1 "GND" H 4855 2627 50  0000 C CNN
F 2 "" H 4850 2800 50  0001 C CNN
F 3 "" H 4850 2800 50  0001 C CNN
	1    4850 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EDAC8AF
P 6100 2800
F 0 "#PWR0104" H 6100 2550 50  0001 C CNN
F 1 "GND" H 6105 2627 50  0000 C CNN
F 2 "" H 6100 2800 50  0001 C CNN
F 3 "" H 6100 2800 50  0001 C CNN
	1    6100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4150 6150 4150
Wire Wire Line
	6150 4150 6150 4700
Wire Wire Line
	6150 4700 5600 4700
Wire Wire Line
	5400 4850 5400 4700
Connection ~ 5400 4700
Wire Wire Line
	5400 4450 5400 4700
Wire Wire Line
	5600 4450 5600 4700
Connection ~ 5600 4700
Wire Wire Line
	5600 4700 5400 4700
Wire Wire Line
	5400 2200 5400 2300
Wire Wire Line
	4850 2800 4850 2700
Wire Wire Line
	6100 2800 6100 2700
Wire Wire Line
	4850 2400 4850 2300
Wire Wire Line
	4850 2300 4500 2300
Connection ~ 5400 2300
Wire Wire Line
	5400 2300 5400 2850
Wire Wire Line
	6100 2300 6100 2400
Wire Wire Line
	5000 3150 4500 3150
Wire Wire Line
	4500 3150 4500 2300
Connection ~ 4500 3150
Wire Wire Line
	4500 3150 4500 4300
Wire Wire Line
	5400 4700 4850 4700
Wire Wire Line
	4500 4700 4500 4600
$Comp
L Device:C C8
U 1 1 5EDAAD7B
P 4500 4450
F 0 "C8" H 4615 4496 50  0000 L CNN
F 1 "100n" H 4615 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4538 4300 50  0001 C CNN
F 3 "~" H 4500 4450 50  0001 C CNN
	1    4500 4450
	1    0    0    -1  
$EndComp
Connection ~ 4850 2300
Wire Wire Line
	4850 2300 5400 2300
Wire Wire Line
	4850 4700 4850 4150
Wire Wire Line
	4850 4150 5000 4150
Connection ~ 4850 4700
Wire Wire Line
	4850 4700 4500 4700
$Comp
L Device:R R3
U 1 1 5EDAFD12
P 2550 2250
F 0 "R3" V 2343 2250 50  0000 C CNN
F 1 "10k" V 2434 2250 50  0000 C CNN
F 2 "" V 2480 2250 50  0001 C CNN
F 3 "~" H 2550 2250 50  0001 C CNN
	1    2550 2250
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5EDB124E
P 2800 2500
F 0 "C4" H 2915 2546 50  0000 L CNN
F 1 "100n" H 2915 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2838 2350 50  0001 C CNN
F 3 "~" H 2800 2500 50  0001 C CNN
	1    2800 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EDB19CB
P 2800 2750
F 0 "#PWR0105" H 2800 2500 50  0001 C CNN
F 1 "GND" H 2805 2577 50  0000 C CNN
F 2 "" H 2800 2750 50  0001 C CNN
F 3 "" H 2800 2750 50  0001 C CNN
	1    2800 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2250 2800 2250
Wire Wire Line
	2800 2250 2800 2350
Wire Wire Line
	2800 2750 2800 2650
$Comp
L Device:R R4
U 1 1 5EDB5CC8
P 2550 3050
F 0 "R4" V 2343 3050 50  0000 C CNN
F 1 "10k" V 2434 3050 50  0000 C CNN
F 2 "" V 2480 3050 50  0001 C CNN
F 3 "~" H 2550 3050 50  0001 C CNN
	1    2550 3050
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5EDB5CCE
P 2800 3300
F 0 "C5" H 2915 3346 50  0000 L CNN
F 1 "100n" H 2915 3255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2838 3150 50  0001 C CNN
F 3 "~" H 2800 3300 50  0001 C CNN
	1    2800 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5EDB5CD4
P 2800 3550
F 0 "#PWR0106" H 2800 3300 50  0001 C CNN
F 1 "GND" H 2805 3377 50  0000 C CNN
F 2 "" H 2800 3550 50  0001 C CNN
F 3 "" H 2800 3550 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3050 2800 3050
Wire Wire Line
	2800 3050 2800 3150
Wire Wire Line
	2800 3550 2800 3450
$Comp
L Device:C C7
U 1 1 5EDB6279
P 3300 2500
F 0 "C7" H 3415 2546 50  0000 L CNN
F 1 "100n" H 3415 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3338 2350 50  0001 C CNN
F 3 "~" H 3300 2500 50  0001 C CNN
	1    3300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2250 3300 2250
Wire Wire Line
	3300 2250 3300 2350
Connection ~ 2800 2250
Wire Wire Line
	2800 3050 3300 3050
Wire Wire Line
	3300 3050 3300 2650
Connection ~ 2800 3050
$Comp
L Device:R R1
U 1 1 5EDBB492
P 2500 3900
F 0 "R1" V 2293 3900 50  0000 C CNN
F 1 "10k" V 2384 3900 50  0000 C CNN
F 2 "" V 2430 3900 50  0001 C CNN
F 3 "~" H 2500 3900 50  0001 C CNN
	1    2500 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5EDBB498
P 2750 4150
F 0 "C2" H 2865 4196 50  0000 L CNN
F 1 "100n" H 2865 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 4000 50  0001 C CNN
F 3 "~" H 2750 4150 50  0001 C CNN
	1    2750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5EDBB49E
P 2750 4400
F 0 "#PWR0107" H 2750 4150 50  0001 C CNN
F 1 "GND" H 2755 4227 50  0000 C CNN
F 2 "" H 2750 4400 50  0001 C CNN
F 3 "" H 2750 4400 50  0001 C CNN
	1    2750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3900 2750 3900
Wire Wire Line
	2750 3900 2750 4000
Wire Wire Line
	2750 4400 2750 4300
$Comp
L Device:R R2
U 1 1 5EDBB4A7
P 2500 4700
F 0 "R2" V 2293 4700 50  0000 C CNN
F 1 "10k" V 2384 4700 50  0000 C CNN
F 2 "" V 2430 4700 50  0001 C CNN
F 3 "~" H 2500 4700 50  0001 C CNN
	1    2500 4700
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5EDBB4AD
P 2750 4950
F 0 "C3" H 2865 4996 50  0000 L CNN
F 1 "100n" H 2865 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 4800 50  0001 C CNN
F 3 "~" H 2750 4950 50  0001 C CNN
	1    2750 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5EDBB4B3
P 2750 5200
F 0 "#PWR0108" H 2750 4950 50  0001 C CNN
F 1 "GND" H 2755 5027 50  0000 C CNN
F 2 "" H 2750 5200 50  0001 C CNN
F 3 "" H 2750 5200 50  0001 C CNN
	1    2750 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4700 2750 4700
Wire Wire Line
	2750 4700 2750 4800
Wire Wire Line
	2750 5200 2750 5100
$Comp
L Device:C C6
U 1 1 5EDBB4BC
P 3250 4150
F 0 "C6" H 3365 4196 50  0000 L CNN
F 1 "100n" H 3365 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3288 4000 50  0001 C CNN
F 3 "~" H 3250 4150 50  0001 C CNN
	1    3250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3900 3250 3900
Wire Wire Line
	3250 3900 3250 4000
Connection ~ 2750 3900
Wire Wire Line
	2750 4700 3250 4700
Wire Wire Line
	3250 4700 3250 4300
Connection ~ 2750 4700
Wire Wire Line
	3300 2250 3900 2250
Wire Wire Line
	3900 2250 3900 3350
Wire Wire Line
	3900 3350 5000 3350
Connection ~ 3300 2250
Wire Wire Line
	3300 3050 3300 3550
Wire Wire Line
	3300 3550 5000 3550
Connection ~ 3300 3050
Wire Wire Line
	3250 3900 3250 3750
Wire Wire Line
	3250 3750 5000 3750
Connection ~ 3250 3900
Wire Wire Line
	3250 4700 3900 4700
Wire Wire Line
	3900 4700 3900 3950
Wire Wire Line
	3900 3950 5000 3950
Connection ~ 3250 4700
$Comp
L Device:R R6
U 1 1 5EDC0064
P 6750 2600
F 0 "R6" H 6680 2554 50  0000 R CNN
F 1 "10k" H 6680 2645 50  0000 R CNN
F 2 "" V 6680 2600 50  0001 C CNN
F 3 "~" H 6750 2600 50  0001 C CNN
	1    6750 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5EDC0BEE
P 7050 2600
F 0 "R7" H 6980 2554 50  0000 R CNN
F 1 "10k" H 6980 2645 50  0000 R CNN
F 2 "" V 6980 2600 50  0001 C CNN
F 3 "~" H 7050 2600 50  0001 C CNN
	1    7050 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5EDC209E
P 7750 2600
F 0 "R5" H 7680 2554 50  0000 R CNN
F 1 "10k" H 7680 2645 50  0000 R CNN
F 2 "" V 7680 2600 50  0001 C CNN
F 3 "~" H 7750 2600 50  0001 C CNN
	1    7750 2600
	-1   0    0    1   
$EndComp
Connection ~ 6150 4700
Wire Wire Line
	6000 3150 6500 3150
Wire Wire Line
	6500 3150 6500 2300
Wire Wire Line
	6500 2300 6100 2300
Connection ~ 6100 2300
Wire Wire Line
	6750 2450 6750 2300
Wire Wire Line
	6750 2300 6500 2300
Connection ~ 6500 2300
Wire Wire Line
	7050 2450 7050 2300
Wire Wire Line
	7050 2300 6750 2300
Connection ~ 6750 2300
Wire Wire Line
	6750 2750 6750 3350
Wire Wire Line
	6750 3350 6000 3350
Wire Wire Line
	7050 2750 7050 3550
Wire Wire Line
	7050 3550 6000 3550
$Comp
L Device:R R8
U 1 1 5EDCAE9F
P 7350 2600
F 0 "R8" H 7280 2554 50  0000 R CNN
F 1 "10k" H 7280 2645 50  0000 R CNN
F 2 "" V 7280 2600 50  0001 C CNN
F 3 "~" H 7350 2600 50  0001 C CNN
	1    7350 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 3750 7350 3750
Wire Wire Line
	7350 3750 7350 2750
Wire Wire Line
	7050 2300 7350 2300
Wire Wire Line
	7350 2300 7350 2450
Connection ~ 7050 2300
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5EDDA719
P 8850 3550
F 0 "J1" H 8930 3542 50  0000 L CNN
F 1 "Conn_01x10" H 8930 3451 50  0000 L CNN
F 2 "" H 8850 3550 50  0001 C CNN
F 3 "~" H 8850 3550 50  0001 C CNN
	1    8850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2250 2000 2250
Wire Wire Line
	2400 3050 2000 3050
Wire Wire Line
	2350 3900 2000 3900
Wire Wire Line
	2350 4700 2000 4700
Text Label 2000 2250 0    50   ~ 0
AIN0
Text Label 2000 3050 0    50   ~ 0
AIN1
Text Label 2000 3900 0    50   ~ 0
AIN2
Text Label 2000 4700 0    50   ~ 0
AIN3
Wire Wire Line
	6750 3350 8650 3350
Connection ~ 6750 3350
Wire Wire Line
	7050 3550 7500 3550
Wire Wire Line
	7500 3550 7500 3450
Wire Wire Line
	7500 3450 8650 3450
Connection ~ 7050 3550
Wire Wire Line
	7350 2300 7750 2300
Wire Wire Line
	8250 2300 8250 3150
Wire Wire Line
	8250 3150 8650 3150
Connection ~ 7350 2300
Wire Wire Line
	7750 3950 7750 3550
Wire Wire Line
	7750 3550 8650 3550
Wire Wire Line
	7500 3750 7500 3650
Wire Wire Line
	7500 3650 8650 3650
Wire Wire Line
	7350 3750 7500 3750
Connection ~ 7350 3750
Wire Wire Line
	8250 4700 8250 3250
Wire Wire Line
	8250 3250 8650 3250
Wire Wire Line
	8650 3750 8400 3750
Wire Wire Line
	8650 3850 8400 3850
Wire Wire Line
	8650 3950 8400 3950
Wire Wire Line
	8650 4050 8400 4050
Text Label 8400 3750 0    50   ~ 0
AIN0
Text Label 8400 3850 0    50   ~ 0
AIN1
Text Label 8400 3950 0    50   ~ 0
AIN2
Text Label 8400 4050 0    50   ~ 0
AIN3
Text Label 8400 3650 0    50   ~ 0
~DRDY
Text Label 8400 3550 0    50   ~ 0
ADDR
Text Label 8400 3450 0    50   ~ 0
SDA
Text Label 8400 3350 0    50   ~ 0
SCL
Text Label 8400 3250 0    50   ~ 0
GND
Text Label 8400 3150 0    50   ~ 0
VCC
Wire Wire Line
	6000 3950 7750 3950
Wire Wire Line
	6150 4700 8250 4700
Wire Wire Line
	7750 2300 7750 2450
Connection ~ 7750 2300
Wire Wire Line
	7750 2300 8250 2300
Wire Wire Line
	5600 2850 5600 2300
Wire Wire Line
	5400 2300 5600 2300
Connection ~ 5600 2300
Wire Wire Line
	5600 2300 6100 2300
Wire Wire Line
	7750 3550 7750 2750
Connection ~ 7750 3550
$EndSCHEMATC
