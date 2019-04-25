EESchema Schematic File Version 4
EELAYER 29 0
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
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5CC13554
P 1550 1950
F 0 "A?" H 1550 861 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 1550 770 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 1700 1000 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1550 950 50  0001 C CNN
	1    1550 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J?
U 1 1 5CC142D6
P 2300 5050
F 0 "J?" H 2300 6531 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 2300 6440 50  0000 C CNN
F 2 "" H 2300 5050 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2300 5050 50  0001 C CNN
	1    2300 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5CC178C2
P 4500 6050
F 0 "J?" H 4580 6042 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 4580 5951 50  0000 L CNN
F 2 "" H 4500 6050 50  0001 C CNN
F 3 "~" H 4500 6050 50  0001 C CNN
	1    4500 6050
	1    0    0    -1  
$EndComp
Text Label 1500 5350 2    50   ~ 0
PiPrinterPowerDemand
Text Label 1500 5450 2    50   ~ 0
ArduinoPrinterPowerStatus
Text Label 1500 5550 2    50   ~ 0
ArduinoAlarmTriggered
$Comp
L power:GND #PWR?
U 1 1 5CC20F99
P 1900 6350
F 0 "#PWR?" H 1900 6100 50  0001 C CNN
F 1 "GND" H 1905 6177 50  0000 C CNN
F 2 "" H 1900 6350 50  0001 C CNN
F 3 "" H 1900 6350 50  0001 C CNN
	1    1900 6350
	1    0    0    -1  
$EndComp
NoConn ~ 1500 4150
NoConn ~ 1500 4250
NoConn ~ 1500 4450
NoConn ~ 1500 4550
NoConn ~ 1500 4650
NoConn ~ 1500 4850
NoConn ~ 1500 4950
NoConn ~ 1500 5050
NoConn ~ 1500 5250
NoConn ~ 1500 5650
NoConn ~ 1500 5750
NoConn ~ 2100 3750
NoConn ~ 2200 3750
NoConn ~ 2400 3750
NoConn ~ 2500 3750
NoConn ~ 3100 4150
NoConn ~ 3100 4250
NoConn ~ 3100 4450
NoConn ~ 3100 4550
NoConn ~ 3100 4750
NoConn ~ 3100 4850
NoConn ~ 3100 4950
NoConn ~ 3100 5150
NoConn ~ 3100 5250
NoConn ~ 3100 5350
NoConn ~ 3100 5450
NoConn ~ 3100 5550
NoConn ~ 3100 5750
NoConn ~ 3100 5850
NoConn ~ 2000 6350
NoConn ~ 2100 6350
NoConn ~ 2200 6350
NoConn ~ 2300 6350
NoConn ~ 2400 6350
NoConn ~ 2500 6350
NoConn ~ 2600 6350
$Comp
L power:GND #PWR?
U 1 1 5CC273C6
P 4300 6150
F 0 "#PWR?" H 4300 5900 50  0001 C CNN
F 1 "GND" V 4305 6022 50  0000 R CNN
F 2 "" H 4300 6150 50  0001 C CNN
F 3 "" H 4300 6150 50  0001 C CNN
	1    4300 6150
	0    1    1    0   
$EndComp
Text Label 4300 5950 2    50   ~ 0
PiPrinterPowerDemand
Text Label 4300 6050 2    50   ~ 0
ArduinoPrinterPowerStatus
Text Label 4300 6250 2    50   ~ 0
ArduinoAlarmTriggered
$EndSCHEMATC
