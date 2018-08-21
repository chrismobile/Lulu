EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Lulu_star"
Date "2018-08-21"
Rev "2.1.1"
Comp "lulu.eTextile.org"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:+3.3V #PWR0101
U 1 1 5B7C4702
P 5650 2850
F 0 "#PWR0101" H 5650 2700 50  0001 C CNN
F 1 "+3.3V" H 5665 3023 50  0000 C CNN
F 2 "" H 5650 2850 50  0001 C CNN
F 3 "" H 5650 2850 50  0001 C CNN
	1    5650 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5B7C4F4F
P 5000 4600
F 0 "#PWR0102" H 5000 4350 50  0001 C CNN
F 1 "GND" H 5005 4427 50  0000 C CNN
F 2 "" H 5000 4600 50  0001 C CNN
F 3 "" H 5000 4600 50  0001 C CNN
	1    5000 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B7C8445
P 5650 4250
F 0 "R?" H 5720 4296 50  0000 L CNN
F 1 "2.7 Ohm" H 5720 4205 50  0000 L CNN
F 2 "" V 5580 4250 50  0001 C CNN
F 3 "~" H 5650 4250 50  0001 C CNN
	1    5650 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_PAD LY_CN5M
U 1 1 5B7C84D4
P 5650 3150
F 0 "LY_CN5M" V 5696 3292 50  0000 L CNN
F 1 "LED_PAD" V 5605 3292 50  0000 L CNN
F 2 "" H 5650 3150 50  0001 C CNN
F 3 "../DOCs/LY_CN5M.pdf" H 5650 3150 50  0001 C CNN
	1    5650 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5B7C8ADD
P 5550 3650
F 0 "Q?" H 5755 3696 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 5755 3605 50  0000 L CNN
F 2 "" H 5750 3750 50  0001 C CNN
F 3 "~" H 5550 3650 50  0001 C CNN
	1    5550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BEC Q?
U 1 1 5B7C8DF6
P 5100 4000
F 0 "Q?" H 5291 4046 50  0000 L CNN
F 1 "Q_NPN_BEC" H 5291 3955 50  0000 L CNN
F 2 "" H 5300 4100 50  0001 C CNN
F 3 "~" H 5100 4000 50  0001 C CNN
	1    5100 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5B7CC755
P 4550 3650
F 0 "R?" V 4343 3650 50  0000 C CNN
F 1 "47 K" V 4434 3650 50  0000 C CNN
F 2 "" V 4480 3650 50  0001 C CNN
F 3 "~" H 4550 3650 50  0001 C CNN
	1    4550 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 3650 5000 3650
Wire Wire Line
	5650 3300 5650 3450
Wire Wire Line
	5650 2850 5650 3000
Wire Wire Line
	5650 3850 5650 4000
Wire Wire Line
	5300 4000 5650 4000
Connection ~ 5650 4000
Wire Wire Line
	5650 4000 5650 4100
Wire Wire Line
	5000 4200 5000 4500
Wire Wire Line
	5000 3800 5000 3650
Connection ~ 5000 3650
Wire Wire Line
	5000 3650 5350 3650
Wire Wire Line
	5650 4400 5650 4500
Wire Wire Line
	5650 4500 5000 4500
Connection ~ 5000 4500
Wire Wire Line
	5000 4500 5000 4600
Wire Wire Line
	4400 3650 3900 3650
Text Label 3950 3650 0    50   ~ 0
PWM
Wire Wire Line
	5850 3150 6550 3150
Text Label 6200 3150 0    50   ~ 0
thermal
$EndSCHEMATC