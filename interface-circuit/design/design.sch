EESchema Schematic File Version 4
LIBS:design-cache
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
Text Label 1500 5350 2    50   ~ 0
LV_PrinterPowerDemand
Text Label 1500 5450 2    50   ~ 0
LV_PrinterPowerStatus
Text Label 1500 5550 2    50   ~ 0
LV_AlarmTriggered
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
Text Label 4650 3800 0    50   ~ 0
LV_PrinterPowerDemand
Text Label 4650 3500 1    50   ~ 0
LV_PrinterPowerStatus
Text Label 4650 3600 0    50   ~ 0
LV_AlarmTriggered
$Comp
L Connector_Generic:Conn_02x06_Counter_Clockwise J?
U 1 1 5CC54B85
P 6600 3450
F 0 "J?" H 6650 3867 50  0000 C CNN
F 1 "Conn_02x06_Counter_Clockwise" H 6650 3776 50  0000 C CNN
F 2 "" H 6600 3450 50  0001 C CNN
F 3 "~" H 6600 3450 50  0001 C CNN
	1    6600 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3800 5550 3800
Wire Wire Line
	5550 3800 5550 3250
Wire Wire Line
	5550 3250 6400 3250
Wire Wire Line
	4650 3500 4650 3350
Wire Wire Line
	4650 3350 6400 3350
Wire Wire Line
	4650 3600 5800 3600
Wire Wire Line
	5800 3600 5800 3650
Wire Wire Line
	5800 3650 6400 3650
$Comp
L power:GND #PWR?
U 1 1 5CC5D690
P 4650 3700
F 0 "#PWR?" H 4650 3450 50  0001 C CNN
F 1 "GND" V 4655 3572 50  0000 R CNN
F 2 "" H 4650 3700 50  0001 C CNN
F 3 "" H 4650 3700 50  0001 C CNN
	1    4650 3700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC5E02F
P 6400 3550
F 0 "#PWR?" H 6400 3300 50  0001 C CNN
F 1 "GND" V 6405 3422 50  0000 R CNN
F 2 "" H 6400 3550 50  0001 C CNN
F 3 "" H 6400 3550 50  0001 C CNN
	1    6400 3550
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5CC5E9D5
P 6400 3450
F 0 "#PWR?" H 6400 3300 50  0001 C CNN
F 1 "+3V3" V 6415 3578 50  0000 L CNN
F 2 "" H 6400 3450 50  0001 C CNN
F 3 "" H 6400 3450 50  0001 C CNN
	1    6400 3450
	0    -1   -1   0   
$EndComp
Text Label 3550 1900 2    50   ~ 0
HV_PrinterPowerDemand
Text Label 4450 1600 0    50   ~ 0
LV_PrinterPowerStatus
Text Label 4450 1750 0    50   ~ 0
LV_AlarmTriggered
$Comp
L power:+5V #PWR?
U 1 1 5CC629AA
P 3950 1350
F 0 "#PWR?" H 3950 1200 50  0001 C CNN
F 1 "+5V" H 3965 1523 50  0000 C CNN
F 2 "" H 3950 1350 50  0001 C CNN
F 3 "" H 3950 1350 50  0001 C CNN
	1    3950 1350
	1    0    0    -1  
$EndComp
$Comp
L custom_symbols:LogicLevelConverter_BOB-08745 U?
U 1 1 5CC30C4F
P 4000 1850
F 0 "U?" H 4000 2650 50  0000 C CNN
F 1 "LogicLevelConverter_BOB-08745" H 4000 2756 50  0000 C CNN
F 2 "" H 3350 2600 50  0001 C CNN
F 3 "" H 3350 2600 50  0001 C CNN
	1    4000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5CC6AF02
P 4100 1350
F 0 "#PWR?" H 4100 1200 50  0001 C CNN
F 1 "+3V3" H 4115 1523 50  0000 C CNN
F 2 "" H 4100 1350 50  0001 C CNN
F 3 "" H 4100 1350 50  0001 C CNN
	1    4100 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC6BA8E
P 3950 2350
F 0 "#PWR?" H 3950 2100 50  0001 C CNN
F 1 "GND" H 3955 2177 50  0000 C CNN
F 2 "" H 3950 2350 50  0001 C CNN
F 3 "" H 3950 2350 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC6BF5B
P 4100 2350
F 0 "#PWR?" H 4100 2100 50  0001 C CNN
F 1 "GND" H 4105 2177 50  0000 C CNN
F 2 "" H 4100 2350 50  0001 C CNN
F 3 "" H 4100 2350 50  0001 C CNN
	1    4100 2350
	1    0    0    -1  
$EndComp
Text Label 3550 1600 2    50   ~ 0
HV_PrinterPowerStatus
Text Label 3550 1750 2    50   ~ 0
HV_AlarmTriggered
Text Label 4450 1900 0    50   ~ 0
LV_PrinterPowerDemand
NoConn ~ 3550 2050
NoConn ~ 4450 2050
$Comp
L power:GND #PWR?
U 1 1 5CC7797E
P 6900 3550
F 0 "#PWR?" H 6900 3300 50  0001 C CNN
F 1 "GND" V 6905 3422 50  0000 R CNN
F 2 "" H 6900 3550 50  0001 C CNN
F 3 "" H 6900 3550 50  0001 C CNN
	1    6900 3550
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CC78107
P 6900 3450
F 0 "#PWR?" H 6900 3300 50  0001 C CNN
F 1 "+5V" V 6915 3578 50  0000 L CNN
F 2 "" H 6900 3450 50  0001 C CNN
F 3 "" H 6900 3450 50  0001 C CNN
	1    6900 3450
	0    1    1    0   
$EndComp
Text Label 6900 3250 0    50   ~ 0
HV_PrinterPowerDemand
Text Label 6900 3350 0    50   ~ 0
HV_PrinterPowerStatus
Text Label 6900 3650 0    50   ~ 0
HV_AlarmTriggered
$Comp
L Connector_Generic:Conn_02x15_Counter_Clockwise J?
U 1 1 5CC801D0
P 6600 1650
F 0 "J?" H 6650 2567 50  0000 C CNN
F 1 "Conn_02x15_Counter_Clockwise" H 6650 2476 50  0000 C CNN
F 2 "" H 6600 1650 50  0001 C CNN
F 3 "~" H 6600 1650 50  0001 C CNN
	1    6600 1650
	1    0    0    -1  
$EndComp
NoConn ~ 6400 950 
$Comp
L power:+3V3 #PWR?
U 1 1 5CC8346E
P 6400 1050
F 0 "#PWR?" H 6400 900 50  0001 C CNN
F 1 "+3V3" V 6415 1178 50  0000 L CNN
F 2 "" H 6400 1050 50  0001 C CNN
F 3 "" H 6400 1050 50  0001 C CNN
	1    6400 1050
	0    -1   -1   0   
$EndComp
NoConn ~ 6400 1150
NoConn ~ 6900 2350
$Comp
L power:GND #PWR?
U 1 1 5CC875EB
P 6900 2050
F 0 "#PWR?" H 6900 1800 50  0001 C CNN
F 1 "GND" V 6905 1922 50  0000 R CNN
F 2 "" H 6900 2050 50  0001 C CNN
F 3 "" H 6900 2050 50  0001 C CNN
	1    6900 2050
	0    -1   -1   0   
$EndComp
NoConn ~ 6900 2250
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5CC880D1
P 10500 2250
F 0 "J?" H 10472 2132 50  0000 R CNN
F 1 "Conn_01x02_Male" H 10472 2223 50  0000 R CNN
F 2 "" H 10500 2250 50  0001 C CNN
F 3 "~" H 10500 2250 50  0001 C CNN
	1    10500 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC8A0D8
P 10300 2250
F 0 "#PWR?" H 10300 2000 50  0001 C CNN
F 1 "GND" V 10305 2122 50  0000 R CNN
F 2 "" H 10300 2250 50  0001 C CNN
F 3 "" H 10300 2250 50  0001 C CNN
	1    10300 2250
	0    1    1    0   
$EndComp
Text Label 10300 2150 1    50   ~ 0
RESET
Text Label 1200 7050 2    50   ~ 0
RESET
$Comp
L power:GND #PWR?
U 1 1 5CC93EB0
P 1600 7050
F 0 "#PWR?" H 1600 6800 50  0001 C CNN
F 1 "GND" V 1605 6922 50  0000 R CNN
F 2 "" H 1600 7050 50  0001 C CNN
F 3 "" H 1600 7050 50  0001 C CNN
	1    1600 7050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 5CC93548
P 1400 7050
F 0 "SW?" H 1400 7285 50  0000 C CNN
F 1 "SW_SPST" H 1400 7194 50  0000 C CNN
F 2 "" H 1400 7050 50  0001 C CNN
F 3 "~" H 1400 7050 50  0001 C CNN
	1    1400 7050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x05 J?
U 1 1 5CC995BB
P 5400 2500
F 0 "J?" H 5480 2542 50  0000 L CNN
F 1 "Screw_Terminal_01x05" H 5480 2451 50  0000 L CNN
F 2 "" H 5400 2500 50  0001 C CNN
F 3 "~" H 5400 2500 50  0001 C CNN
	1    5400 2500
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5CC9A229
P 5600 2700
F 0 "#PWR?" H 5600 2550 50  0001 C CNN
F 1 "+12V" V 5615 2828 50  0000 L CNN
F 2 "" H 5600 2700 50  0001 C CNN
F 3 "" H 5600 2700 50  0001 C CNN
	1    5600 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC9AB9C
P 5600 2600
F 0 "#PWR?" H 5600 2350 50  0001 C CNN
F 1 "GND" V 5605 2472 50  0000 R CNN
F 2 "" H 5600 2600 50  0001 C CNN
F 3 "" H 5600 2600 50  0001 C CNN
	1    5600 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CC9B73F
P 5600 2500
F 0 "#PWR?" H 5600 2350 50  0001 C CNN
F 1 "+5V" V 5615 2628 50  0000 L CNN
F 2 "" H 5600 2500 50  0001 C CNN
F 3 "" H 5600 2500 50  0001 C CNN
	1    5600 2500
	0    1    1    0   
$EndComp
NoConn ~ 6400 2350
NoConn ~ 6400 2250
NoConn ~ 6400 2150
$Comp
L power:+5V #PWR?
U 1 1 5CCACAFF
P 6400 2050
F 0 "#PWR?" H 6400 1900 50  0001 C CNN
F 1 "+5V" V 6415 2178 50  0000 L CNN
F 2 "" H 6400 2050 50  0001 C CNN
F 3 "" H 6400 2050 50  0001 C CNN
	1    6400 2050
	0    -1   -1   0   
$EndComp
NoConn ~ 5400 300 
NoConn ~ 6400 1950
NoConn ~ 6400 1850
NoConn ~ 6400 1750
NoConn ~ 6400 1650
NoConn ~ 6400 1550
NoConn ~ 6400 1450
NoConn ~ 6400 1350
NoConn ~ 6400 1250
NoConn ~ 5600 2400
Wire Wire Line
	5600 2300 5950 2300
Wire Wire Line
	5950 2300 5950 2600
Wire Wire Line
	5950 2600 7200 2600
Wire Wire Line
	7200 2600 7200 1950
Wire Wire Line
	7200 1950 6900 1950
Wire Wire Line
	6900 3250 7850 3250
Wire Wire Line
	7850 3250 7850 2500
Wire Wire Line
	7850 2500 7250 2500
Wire Wire Line
	7250 2500 7250 1850
Wire Wire Line
	7250 1850 6900 1850
$Comp
L Connector:Screw_Terminal_01x05 J?
U 1 1 5CCD28E2
P 4450 3700
F 0 "J?" H 4368 3275 50  0000 C CNN
F 1 "Screw_Terminal_01x05" H 4368 3366 50  0000 C CNN
F 2 "" H 4450 3700 50  0001 C CNN
F 3 "~" H 4450 3700 50  0001 C CNN
	1    4450 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4650 3900 5650 3900
Wire Wire Line
	5650 3900 5650 3750
Wire Wire Line
	5650 3750 6400 3750
Text Label 4650 3900 0    50   ~ 0
LV_FanPowerDemand
Text Label 6900 3750 0    50   ~ 0
HV_FanPowerDemand
Wire Wire Line
	6900 3750 7900 3750
Wire Wire Line
	7900 3750 7900 2450
Wire Wire Line
	7900 2450 7300 2450
Wire Wire Line
	7300 2450 7300 1750
Wire Wire Line
	7300 1750 6900 1750
Wire Wire Line
	6900 2150 10300 2150
NoConn ~ 11500 2050
NoConn ~ 6900 950 
NoConn ~ 6900 1050
NoConn ~ 6900 1150
NoConn ~ 6900 1250
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5CCE850B
P 10500 1750
F 0 "J?" H 10472 1632 50  0000 R CNN
F 1 "Conn_01x02_Male" H 10472 1723 50  0000 R CNN
F 2 "" H 10500 1750 50  0001 C CNN
F 3 "~" H 10500 1750 50  0001 C CNN
	1    10500 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CCE9BE9
P 10300 1750
F 0 "#PWR?" H 10300 1500 50  0001 C CNN
F 1 "GND" V 10305 1622 50  0000 R CNN
F 2 "" H 10300 1750 50  0001 C CNN
F 3 "" H 10300 1750 50  0001 C CNN
	1    10300 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	6900 1650 10300 1650
Text Label 10300 1650 2    50   ~ 0
SOFT_SWITCH
$Comp
L Switch:SW_SPST SW?
U 1 1 5CCFC122
P 1400 7400
F 0 "SW?" H 1400 7635 50  0000 C CNN
F 1 "SW_SPST" H 1400 7544 50  0000 C CNN
F 2 "" H 1400 7400 50  0001 C CNN
F 3 "~" H 1400 7400 50  0001 C CNN
	1    1400 7400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CCFCAEC
P 1600 7400
F 0 "#PWR?" H 1600 7150 50  0001 C CNN
F 1 "GND" V 1605 7272 50  0000 R CNN
F 2 "" H 1600 7400 50  0001 C CNN
F 3 "" H 1600 7400 50  0001 C CNN
	1    1600 7400
	0    -1   -1   0   
$EndComp
Text Label 1200 7400 2    50   ~ 0
SOFT_SWITCH
Wire Wire Line
	6900 3650 7950 3650
Wire Wire Line
	7950 3650 7950 2400
Wire Wire Line
	7950 2400 7350 2400
Wire Wire Line
	7350 2400 7350 1550
Wire Wire Line
	7350 1550 6900 1550
$Comp
L Device:R R?
U 1 1 5CD28673
P 7500 1550
F 0 "R?" V 7293 1550 50  0000 C CNN
F 1 "560R" V 7384 1550 50  0000 C CNN
F 2 "" V 7430 1550 50  0001 C CNN
F 3 "~" H 7500 1550 50  0001 C CNN
	1    7500 1550
	0    1    1    0   
$EndComp
Connection ~ 7350 1550
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N3904-AP Q?
U 1 1 5CD2B56C
P 7850 1550
F 0 "Q?" H 8038 1603 60  0000 L CNN
F 1 "2N3904-AP" H 8038 1497 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3_Formed_Leads" H 8050 1750 60  0001 L CNN
F 3 "http://www.mccsemi.com/up_pdf/2N3904(TO-92).pdf" H 8050 1850 60  0001 L CNN
F 4 "2N3904-APCT-ND" H 8050 1950 60  0001 L CNN "Digi-Key_PN"
F 5 "2N3904-AP" H 8050 2050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8050 2150 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 8050 2250 60  0001 L CNN "Family"
F 8 "http://www.mccsemi.com/up_pdf/2N3904(TO-92).pdf" H 8050 2350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/micro-commercial-co/2N3904-AP/2N3904-APCT-ND/950591" H 8050 2450 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.2A TO92" H 8050 2550 60  0001 L CNN "Description"
F 11 "Micro Commercial Co" H 8050 2650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8050 2750 60  0001 L CNN "Status"
	1    7850 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC24F45
P 7950 1750
F 0 "#PWR?" H 7950 1500 50  0001 C CNN
F 1 "GND" H 7955 1577 50  0000 C CNN
F 2 "" H 7950 1750 50  0001 C CNN
F 3 "" H 7950 1750 50  0001 C CNN
	1    7950 1750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 5CC2A3E2
P 7950 1200
F 0 "D?" V 7904 1279 50  0000 L CNN
F 1 "1N4007" V 7995 1279 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7950 1025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7950 1200 50  0001 C CNN
	1    7950 1200
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5CC2B730
P 7950 1050
F 0 "#PWR?" H 7950 900 50  0001 C CNN
F 1 "+12V" H 7965 1223 50  0000 C CNN
F 2 "" H 7950 1050 50  0001 C CNN
F 3 "" H 7950 1050 50  0001 C CNN
	1    7950 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5CC2C13B
P 8600 1250
F 0 "J?" H 8572 1132 50  0000 R CNN
F 1 "Conn_01x02_Male" H 8572 1223 50  0000 R CNN
F 2 "" H 8600 1250 50  0001 C CNN
F 3 "~" H 8600 1250 50  0001 C CNN
	1    8600 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 1350 8400 1350
Wire Wire Line
	8400 1350 8400 1250
Connection ~ 7950 1350
Wire Wire Line
	7950 1050 8400 1050
Wire Wire Line
	8400 1050 8400 1150
Connection ~ 7950 1050
Text Label 7950 1050 0    50   ~ 0
+PIEZO
Text Label 7950 1350 0    50   ~ 0
-PIEZO
$Comp
L Device:Buzzer BZ?
U 1 1 5CC343CA
P 2450 7350
F 0 "BZ?" H 2602 7379 50  0000 L CNN
F 1 "Buzzer" H 2602 7288 50  0000 L CNN
F 2 "" V 2425 7450 50  0001 C CNN
F 3 "~" V 2425 7450 50  0001 C CNN
	1    2450 7350
	1    0    0    -1  
$EndComp
Text Label 2350 7250 2    50   ~ 0
+PIEZO
Text Label 2350 7450 2    50   ~ 0
-PIEZO
Text Label 6900 1450 0    50   ~ 0
D7_PRINTER_RELAY
Text Label 6900 1350 0    50   ~ 0
D8_FAN_RELAY
$Comp
L Device:R R?
U 1 1 5CC5B18E
P 8400 3050
F 0 "R?" V 8193 3050 50  0000 C CNN
F 1 "560R" V 8284 3050 50  0000 C CNN
F 2 "" V 8330 3050 50  0001 C CNN
F 3 "~" H 8400 3050 50  0001 C CNN
	1    8400 3050
	0    1    1    0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N3904-AP Q?
U 1 1 5CC5BF58
P 8750 3050
F 0 "Q?" H 8938 3103 60  0000 L CNN
F 1 "2N3904-AP" H 8938 2997 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3_Formed_Leads" H 8950 3250 60  0001 L CNN
F 3 "http://www.mccsemi.com/up_pdf/2N3904(TO-92).pdf" H 8950 3350 60  0001 L CNN
F 4 "2N3904-APCT-ND" H 8950 3450 60  0001 L CNN "Digi-Key_PN"
F 5 "2N3904-AP" H 8950 3550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8950 3650 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 8950 3750 60  0001 L CNN "Family"
F 8 "http://www.mccsemi.com/up_pdf/2N3904(TO-92).pdf" H 8950 3850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/micro-commercial-co/2N3904-AP/2N3904-APCT-ND/950591" H 8950 3950 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.2A TO92" H 8950 4050 60  0001 L CNN "Description"
F 11 "Micro Commercial Co" H 8950 4150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8950 4250 60  0001 L CNN "Status"
	1    8750 3050
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 5CC5CF0D
P 8850 2700
F 0 "D?" V 8804 2779 50  0000 L CNN
F 1 "1N4007" V 8895 2779 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8850 2525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8850 2700 50  0001 C CNN
	1    8850 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC5E0AC
P 8850 3250
F 0 "#PWR?" H 8850 3000 50  0001 C CNN
F 1 "GND" H 8855 3077 50  0000 C CNN
F 2 "" H 8850 3250 50  0001 C CNN
F 3 "" H 8850 3250 50  0001 C CNN
	1    8850 3250
	1    0    0    -1  
$EndComp
Text Label 8100 3050 1    50   ~ 0
D7_PRINTER_RELAY
Wire Wire Line
	8250 3050 8250 3300
Text Label 8250 3300 3    50   ~ 0
HV_PrinterPowerStatus
Wire Wire Line
	8100 3050 8250 3050
Connection ~ 8250 3050
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5CC6A5CF
P 9750 2600
F 0 "J?" H 9830 2592 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 9830 2501 50  0000 L CNN
F 2 "" H 9750 2600 50  0001 C CNN
F 3 "~" H 9750 2600 50  0001 C CNN
	1    9750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2850 9550 2850
Wire Wire Line
	9550 2850 9550 2700
Connection ~ 8850 2850
Wire Wire Line
	8850 2550 9550 2550
Wire Wire Line
	9550 2550 9550 2600
$Comp
L power:+12V #PWR?
U 1 1 5CC6D19A
P 8850 2550
F 0 "#PWR?" H 8850 2400 50  0001 C CNN
F 1 "+12V" H 8865 2723 50  0000 C CNN
F 2 "" H 8850 2550 50  0001 C CNN
F 3 "" H 8850 2550 50  0001 C CNN
	1    8850 2550
	1    0    0    -1  
$EndComp
Connection ~ 8850 2550
$Comp
L Device:R R?
U 1 1 5CC73F21
P 8800 4800
F 0 "R?" V 8593 4800 50  0000 C CNN
F 1 "560R" V 8684 4800 50  0000 C CNN
F 2 "" V 8730 4800 50  0001 C CNN
F 3 "~" H 8800 4800 50  0001 C CNN
	1    8800 4800
	0    1    1    0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N3904-AP Q?
U 1 1 5CC73F34
P 9150 4800
F 0 "Q?" H 9338 4853 60  0000 L CNN
F 1 "2N3904-AP" H 9338 4747 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3_Formed_Leads" H 9350 5000 60  0001 L CNN
F 3 "http://www.mccsemi.com/up_pdf/2N3904(TO-92).pdf" H 9350 5100 60  0001 L CNN
F 4 "2N3904-APCT-ND" H 9350 5200 60  0001 L CNN "Digi-Key_PN"
F 5 "2N3904-AP" H 9350 5300 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9350 5400 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9350 5500 60  0001 L CNN "Family"
F 8 "http://www.mccsemi.com/up_pdf/2N3904(TO-92).pdf" H 9350 5600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/micro-commercial-co/2N3904-AP/2N3904-APCT-ND/950591" H 9350 5700 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.2A TO92" H 9350 5800 60  0001 L CNN "Description"
F 11 "Micro Commercial Co" H 9350 5900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9350 6000 60  0001 L CNN "Status"
	1    9150 4800
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D?
U 1 1 5CC73F3E
P 9250 4450
F 0 "D?" V 9204 4529 50  0000 L CNN
F 1 "1N4007" V 9295 4529 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9250 4275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9250 4450 50  0001 C CNN
	1    9250 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5CC73F48
P 9250 5000
F 0 "#PWR?" H 9250 4750 50  0001 C CNN
F 1 "GND" H 9255 4827 50  0000 C CNN
F 2 "" H 9250 5000 50  0001 C CNN
F 3 "" H 9250 5000 50  0001 C CNN
	1    9250 5000
	1    0    0    -1  
$EndComp
Text Label 8500 4800 1    50   ~ 0
D8_FAN_RELAY
Wire Wire Line
	8500 4800 8650 4800
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5CC73F57
P 10150 4350
F 0 "J?" H 10230 4342 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10230 4251 50  0000 L CNN
F 2 "" H 10150 4350 50  0001 C CNN
F 3 "~" H 10150 4350 50  0001 C CNN
	1    10150 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4600 9950 4600
Wire Wire Line
	9950 4600 9950 4450
Connection ~ 9250 4600
Wire Wire Line
	9250 4300 9950 4300
Wire Wire Line
	9950 4300 9950 4350
$Comp
L power:+12V #PWR?
U 1 1 5CC73F66
P 9250 4300
F 0 "#PWR?" H 9250 4150 50  0001 C CNN
F 1 "+12V" H 9265 4473 50  0000 C CNN
F 2 "" H 9250 4300 50  0001 C CNN
F 3 "" H 9250 4300 50  0001 C CNN
	1    9250 4300
	1    0    0    -1  
$EndComp
Connection ~ 9250 4300
$EndSCHEMATC