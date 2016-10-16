EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:pmod
LIBS:hdmi
LIBS:ptn3363
LIBS:ma78l00
LIBS:pmod-conn_6x2
LIBS:EEPROM
LIBS:xc9140
LIBS:pmod-hdmi-tx-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L PMOD-Device-x2-Generic P1
U 1 1 5802F482
P 2500 2950
F 0 "P1" H 2500 3300 60  0000 C CNN
F 1 "PMOD-Device-x2-Generic" H 2500 2600 39  0000 C CNN
F 2 "" H 2500 2950 60  0000 C CNN
F 3 "" H 2500 2950 60  0000 C CNN
	1    2500 2950
	1    0    0    -1  
$EndComp
$Sheet
S 4150 1400 2100 1600
U 5802F547
F0 "HDMI TX" 60
F1 "hdmi_TX0.sch" 60
F2 "~HDMI_TX0_OE" I R 6250 2000 60 
F3 "HDMI_TX0_EQ0" I R 6250 2600 60 
F4 "HDMI_TX0_EQ1" I R 6250 2500 60 
F5 "HDMI_TX0_DDC_EN" I R 6250 2350 60 
F6 "HDMI_TX0_CLK+" I L 4150 2250 60 
F7 "HDMI_TX0_CLK-" I L 4150 2350 60 
F8 "HDMI_TX0_D0+" I L 4150 2000 60 
F9 "HDMI_TX0_D0-" I L 4150 2100 60 
F10 "HDMI_TX0_D1+" I L 4150 1750 60 
F11 "HDMI_TX0_D1-" I L 4150 1850 60 
F12 "HDMI_TX0_D2+" I L 4150 1500 60 
F13 "HDMI_TX0_D2-" I L 4150 1600 60 
F14 "HDMI_TX0_SCL" B R 6250 1500 60 
F15 "HDMI_TX0_SDA" B R 6250 1600 60 
F16 "HDMI_TX0_DDET" I R 6250 2250 60 
F17 "HDMI_TX0_HPD" O R 6250 1800 60 
F18 "HDMI_TX0_HIZ_EN" I R 6250 2100 60 
F19 "HDMI_TX0_CEC" I R 6250 1700 60 
$EndSheet
Text Label 3300 3000 0    60   ~ 0
HDMI_TX0_CLK-
Text Label 3300 2900 0    60   ~ 0
HDMI_TX0_D0-
Text Label 3300 2800 0    60   ~ 0
HDMI_TX0_D1-
Text Label 3300 2700 0    60   ~ 0
HDMI_TX0_D2-
Text Label 1700 2700 2    60   ~ 0
HDMI_TX0_D2+
Text Label 1700 2800 2    60   ~ 0
HDMI_TX0_D1+
Text Label 1700 2900 2    60   ~ 0
HDMI_TX0_D0-
Text Label 1700 3000 2    60   ~ 0
HDMI_TX0_CLK-
$Comp
L GND #PWR?
U 1 1 58032FEA
P 2500 3700
F 0 "#PWR?" H 2500 3450 50  0001 C CNN
F 1 "GND" H 2500 3550 50  0000 C CNN
F 2 "" H 2500 3700 50  0000 C CNN
F 3 "" H 2500 3700 50  0000 C CNN
	1    2500 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 5803306C
P 2500 3450
F 0 "#PWR?" H 2500 3300 50  0001 C CNN
F 1 "VCC" H 2500 3600 50  0000 C CNN
F 2 "" H 2500 3450 50  0000 C CNN
F 3 "" H 2500 3450 50  0000 C CNN
	1    2500 3450
	-1   0    0    1   
$EndComp
$Comp
L R R17
U 1 1 58037D32
P 9950 1700
F 0 "R17" V 9850 1700 50  0000 C CNN
F 1 "10k" V 9957 1701 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9880 1700 30  0001 C CNN
F 3 "" H 9950 1700 30  0000 C CNN
F 4 "0402, 2k2 Ohm, 1%" V 9950 1700 60  0001 C CNN "desc"
F 5 "RC0402FR-072K2L" V 9950 1700 60  0001 C CNN "manf#"
	1    9950 1700
	1    0    0    -1  
$EndComp
Text Label 6650 4050 2    60   ~ 0
VCC3V3
$Comp
L VCC #PWR?
U 1 1 58037F54
P 6650 4000
F 0 "#PWR?" H 6650 3850 50  0001 C CNN
F 1 "VCC" H 6650 4150 50  0000 C CNN
F 2 "" H 6650 4000 50  0000 C CNN
F 3 "" H 6650 4000 50  0000 C CNN
	1    6650 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X02 P?
U 1 1 5803893E
P 7100 1550
F 0 "P?" H 7100 1700 50  0000 C CNN
F 1 "CONN_02X02" H 7100 1400 50  0000 C CNN
F 2 "" H 7100 350 50  0000 C CNN
F 3 "" H 7100 350 50  0000 C CNN
	1    7100 1550
	1    0    0    -1  
$EndComp
$Comp
L 24AA01/24LC01B U2
U 1 1 58039688
P 8750 1700
F 0 "U2" H 8900 2050 60  0000 C CNN
F 1 "24AA01/24LC01B" H 8750 1350 60  0000 C CNN
F 2 "" H 8750 1700 60  0000 C CNN
F 3 "" H 8750 1700 60  0000 C CNN
	1    8750 1700
	1    0    0    -1  
$EndComp
$Comp
L JUMPER JP1
U 1 1 58039B32
P 10050 1350
F 0 "JP1" H 10050 1500 50  0000 C CNN
F 1 "JUMPER" H 10050 1270 50  0000 C CNN
F 2 "" H 10050 1350 50  0000 C CNN
F 3 "" H 10050 1350 50  0000 C CNN
	1    10050 1350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 58039E3E
P 10350 2050
F 0 "#PWR?" H 10350 1900 50  0001 C CNN
F 1 "VCC" H 10350 2200 50  0000 C CNN
F 2 "" H 10350 2050 50  0000 C CNN
F 3 "" H 10350 2050 50  0000 C CNN
	1    10350 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5803A0A3
P 10350 1450
F 0 "#PWR?" H 10350 1200 50  0001 C CNN
F 1 "GND" H 10350 1300 50  0000 C CNN
F 2 "" H 10350 1450 50  0000 C CNN
F 3 "" H 10350 1450 50  0000 C CNN
	1    10350 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5803A4E8
P 7950 1700
F 0 "#PWR?" H 7950 1450 50  0001 C CNN
F 1 "GND" H 7950 1550 50  0000 C CNN
F 2 "" H 7950 1700 50  0000 C CNN
F 3 "" H 7950 1700 50  0000 C CNN
	1    7950 1700
	1    0    0    -1  
$EndComp
$Comp
L XC9140 U3
U 1 1 5803B328
P 2100 6950
F 0 "U3" H 2700 7500 60  0000 C CNN
F 1 "XC9140" H 2650 6900 60  0000 C CNN
F 2 "" H 2100 6950 60  0001 C CNN
F 3 "" H 2100 6950 60  0001 C CNN
	1    2100 6950
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 5803B5D8
P 1350 6550
F 0 "L1" V 1300 6550 50  0000 C CNN
F 1 "4.7uH" V 1450 6550 50  0000 C CNN
F 2 "" H 1350 6550 50  0000 C CNN
F 3 "" H 1350 6550 50  0000 C CNN
	1    1350 6550
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 5803B7C8
P 1350 6700
F 0 "R18" V 1430 6700 50  0000 C CNN
F 1 "4.7k" V 1350 6700 50  0000 C CNN
F 2 "" V 1280 6700 50  0000 C CNN
F 3 "" H 1350 6700 50  0000 C CNN
	1    1350 6700
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR?
U 1 1 5803BD68
P 800 6750
F 0 "#PWR?" H 800 6600 50  0001 C CNN
F 1 "VCC" H 800 6900 50  0000 C CNN
F 2 "" H 800 6750 50  0000 C CNN
F 3 "" H 800 6750 50  0000 C CNN
	1    800  6750
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5803BE39
P 950 7100
F 0 "C6" H 975 7200 50  0000 L CNN
F 1 "4.7uF" H 975 7000 50  0000 L CNN
F 2 "" H 988 6950 50  0000 C CNN
F 3 "" H 950 7100 50  0000 C CNN
	1    950  7100
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 5803BFAE
P 3400 6800
F 0 "C7" H 3425 6900 50  0000 L CNN
F 1 "10uF" H 3425 6700 50  0000 L CNN
F 2 "" H 3438 6650 50  0000 C CNN
F 3 "" H 3400 6800 50  0000 C CNN
	1    3400 6800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5803C54F
P 3800 6550
F 0 "#PWR?" H 3800 6400 50  0001 C CNN
F 1 "+5V" H 3800 6690 50  0000 C CNN
F 2 "" H 3800 6550 50  0000 C CNN
F 3 "" H 3800 6550 50  0000 C CNN
	1    3800 6550
	1    0    0    -1  
$EndComp
Text GLabel 3900 6600 2    60   Input ~ 0
VCC5V0
Text GLabel 6750 4050 2    60   Input ~ 0
VCC3V3
Text Label 3750 6600 2    60   ~ 0
VCC5V0
Wire Wire Line
	2900 2700 2950 2700
Wire Wire Line
	2950 2700 3300 2700
Wire Wire Line
	2900 2800 3050 2800
Wire Wire Line
	3050 2800 3300 2800
Wire Wire Line
	2900 2900 3150 2900
Wire Wire Line
	3150 2900 3300 2900
Wire Wire Line
	2900 3000 3250 3000
Wire Wire Line
	3250 3000 3300 3000
Wire Wire Line
	1700 2700 1750 2700
Wire Wire Line
	1750 2700 2100 2700
Wire Wire Line
	1700 2800 1850 2800
Wire Wire Line
	1850 2800 2100 2800
Wire Wire Line
	1700 2900 1950 2900
Wire Wire Line
	1950 2900 2100 2900
Wire Wire Line
	1700 3000 2050 3000
Wire Wire Line
	2050 3000 2100 3000
Wire Wire Line
	2900 3100 3000 3100
Wire Wire Line
	3000 3100 3000 3650
Wire Wire Line
	3000 3650 2500 3650
Wire Wire Line
	2500 3650 2000 3650
Wire Wire Line
	2000 3650 2000 3100
Wire Wire Line
	2000 3100 2100 3100
Wire Wire Line
	2100 3200 2050 3200
Wire Wire Line
	2050 3200 2050 3400
Wire Wire Line
	2050 3400 2500 3400
Wire Wire Line
	2500 3400 2950 3400
Wire Wire Line
	2950 3400 2950 3200
Wire Wire Line
	2950 3200 2900 3200
Wire Wire Line
	2500 3700 2500 3650
Connection ~ 2500 3650
Wire Wire Line
	2500 3450 2500 3400
Connection ~ 2500 3400
Wire Wire Line
	2050 3000 2050 2250
Wire Wire Line
	2050 2250 4150 2250
Connection ~ 2050 3000
Wire Wire Line
	1950 2900 1950 2000
Wire Wire Line
	1950 2000 4150 2000
Connection ~ 1950 2900
Wire Wire Line
	1850 2800 1850 1750
Wire Wire Line
	1850 1750 4150 1750
Connection ~ 1850 2800
Wire Wire Line
	1750 2700 1750 1500
Wire Wire Line
	1750 1500 4150 1500
Connection ~ 1750 2700
Wire Wire Line
	2950 2700 2950 1600
Wire Wire Line
	2950 1600 4150 1600
Connection ~ 2950 2700
Wire Wire Line
	3050 2800 3050 1850
Wire Wire Line
	3050 1850 4150 1850
Connection ~ 3050 2800
Wire Wire Line
	3150 2900 3150 2100
Wire Wire Line
	3150 2100 4150 2100
Connection ~ 3150 2900
Wire Wire Line
	3250 3000 3250 2350
Wire Wire Line
	3250 2350 4150 2350
Connection ~ 3250 3000
Wire Wire Line
	6250 1500 6850 1500
Wire Wire Line
	6250 1600 6850 1600
Wire Wire Line
	6250 1700 6500 1700
Wire Wire Line
	6250 1800 6500 1800
Wire Wire Line
	6250 2000 6500 2000
Wire Wire Line
	6250 2100 6500 2100
Wire Wire Line
	6250 2250 6500 2250
Wire Wire Line
	6250 2350 6500 2350
Wire Wire Line
	6250 2500 6500 2500
Wire Wire Line
	6250 2600 6500 2600
Wire Wire Line
	6750 4050 6650 4050
Wire Wire Line
	6650 4050 6650 4000
Wire Wire Line
	7350 1500 8050 1500
Wire Wire Line
	7350 1600 7800 1600
Wire Wire Line
	9450 1550 9750 1550
Wire Wire Line
	9750 1550 9950 1550
Wire Wire Line
	9750 1550 9750 1350
Connection ~ 9750 1550
Wire Wire Line
	9450 1850 9750 1850
Wire Wire Line
	9750 1850 9950 1850
Wire Wire Line
	9750 1850 9750 2050
Wire Wire Line
	9750 2050 10350 2050
Connection ~ 9750 1850
Wire Wire Line
	10350 1450 10350 1350
Wire Wire Line
	8050 1900 7800 1900
Wire Wire Line
	7800 1900 7800 1600
Wire Wire Line
	7950 1700 8050 1700
Wire Wire Line
	1900 6550 1650 6550
Wire Wire Line
	1900 6700 1500 6700
Wire Wire Line
	800  6850 950  6850
Wire Wire Line
	950  6850 1900 6850
Wire Wire Line
	950  6550 950  6700
Wire Wire Line
	950  6700 950  6850
Wire Wire Line
	950  6850 950  6950
Wire Wire Line
	950  6550 1050 6550
Wire Wire Line
	1200 6700 950  6700
Connection ~ 950  6700
Wire Wire Line
	800  6850 800  6750
Connection ~ 950  6850
Wire Wire Line
	3000 6600 3400 6600
Wire Wire Line
	3400 6600 3800 6600
Wire Wire Line
	3800 6600 3900 6600
Wire Wire Line
	3400 6650 3400 6600
Connection ~ 3400 6600
Wire Wire Line
	3000 6800 3050 6800
Wire Wire Line
	3050 6800 3050 7050
Wire Wire Line
	3050 7050 3400 7050
Wire Wire Line
	3400 6950 3400 7050
Wire Wire Line
	3400 7050 3400 7300
Connection ~ 3400 7050
Wire Wire Line
	3800 6600 3800 6550
Connection ~ 3800 6600
Wire Notes Line
	650  6300 4350 6300
Wire Notes Line
	4350 6300 4350 7650
Wire Notes Line
	4350 7650 650  7650
Wire Notes Line
	650  7650 650  6300
Wire Wire Line
	950  7250 950  7300
Wire Wire Line
	950  7300 2450 7300
Wire Wire Line
	2450 7300 3400 7300
Wire Wire Line
	2450 7300 2450 7400
Connection ~ 2450 7300
$Comp
L GND #PWR?
U 1 1 5803DE38
P 2450 7400
F 0 "#PWR?" H 2450 7150 50  0001 C CNN
F 1 "GND" H 2450 7250 50  0000 C CNN
F 2 "" H 2450 7400 50  0000 C CNN
F 3 "" H 2450 7400 50  0000 C CNN
	1    2450 7400
	1    0    0    -1  
$EndComp
Text Notes 700  6250 0    60   ~ 0
3.3V to 5V Voltage Booster
$EndSCHEMATC