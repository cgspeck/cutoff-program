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
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5CC13554
P 1750 1700
F 0 "A1" H 1750 611 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 1750 520 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 1900 750 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 1750 700 50  0001 C CNN
	1    1750 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Raspberry_Pi_2_3 J1
U 1 1 5CC142D6
P 2300 5050
F 0 "J1" H 2300 6531 50  0000 C CNN
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
L power:GND #PWR03
U 1 1 5CC20F99
P 1900 6350
F 0 "#PWR03" H 1900 6100 50  0001 C CNN
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
Text Label 3950 3500 0    50   ~ 0
LV_PrinterPowerStatus
Text Label 3950 3400 0    50   ~ 0
LV_FanPowerDemand
Text Label 3950 3700 0    50   ~ 0
LV_AlarmTriggered
$Comp
L power:GND #PWR013
U 1 1 5CC5D690
P 3950 3600
F 0 "#PWR013" H 3950 3350 50  0001 C CNN
F 1 "GND" V 3955 3472 50  0000 R CNN
F 2 "" H 3950 3600 50  0001 C CNN
F 3 "" H 3950 3600 50  0001 C CNN
	1    3950 3600
	0    -1   -1   0   
$EndComp
Text Label 4450 1900 2    50   ~ 0
LV_PrinterPowerDemand
Text Label 5350 1750 0    50   ~ 0
LV_PrinterPowerStatus
Text Label 5350 1600 0    50   ~ 0
LV_AlarmTriggered
$Comp
L power:+5V #PWR07
U 1 1 5CC629AA
P 4850 1350
F 0 "#PWR07" H 4850 1200 50  0001 C CNN
F 1 "+5V" H 4865 1523 50  0000 C CNN
F 2 "" H 4850 1350 50  0001 C CNN
F 3 "" H 4850 1350 50  0001 C CNN
	1    4850 1350
	1    0    0    -1  
$EndComp
$Comp
L custom_symbols:LogicLevelConverter_BOB-08745 U1
U 1 1 5CC30C4F
P 4900 1850
F 0 "U1" H 4900 2650 50  0000 C CNN
F 1 "LogicLevelConverter_BOB-08745" H 4900 2756 50  0000 C CNN
F 2 "custom-footprints:LOGIC_LEVEL_CONVERTER_BOB-8745" H 4250 2600 50  0001 C CNN
F 3 "" H 4250 2600 50  0001 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 5CC6AF02
P 5000 1350
F 0 "#PWR09" H 5000 1200 50  0001 C CNN
F 1 "+3V3" H 5015 1523 50  0000 C CNN
F 2 "" H 5000 1350 50  0001 C CNN
F 3 "" H 5000 1350 50  0001 C CNN
	1    5000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5CC6BA8E
P 4850 2350
F 0 "#PWR08" H 4850 2100 50  0001 C CNN
F 1 "GND" H 4855 2177 50  0000 C CNN
F 2 "" H 4850 2350 50  0001 C CNN
F 3 "" H 4850 2350 50  0001 C CNN
	1    4850 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5CC6BF5B
P 5000 2350
F 0 "#PWR010" H 5000 2100 50  0001 C CNN
F 1 "GND" H 5005 2177 50  0000 C CNN
F 2 "" H 5000 2350 50  0001 C CNN
F 3 "" H 5000 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
Text Label 4450 1750 2    50   ~ 0
D7_PRINTER_RELAY
Text Label 4450 1600 2    50   ~ 0
HV_AlarmTriggered
Text Label 5350 1900 0    50   ~ 0
HV_PrinterPowerDemand
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 5CC880D1
P 10500 2250
F 0 "J12" H 10472 2132 50  0000 R CNN
F 1 "Conn_Reset" H 10472 2223 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10500 2250 50  0001 C CNN
F 3 "~" H 10500 2250 50  0001 C CNN
	1    10500 2250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5CC8A0D8
P 10300 2250
F 0 "#PWR030" H 10300 2000 50  0001 C CNN
F 1 "GND" V 10305 2122 50  0000 R CNN
F 2 "" H 10300 2250 50  0001 C CNN
F 3 "" H 10300 2250 50  0001 C CNN
	1    10300 2250
	0    1    1    0   
$EndComp
Text Label 10300 2150 1    50   ~ 0
RESET
$Comp
L Connector:Screw_Terminal_01x05 J3
U 1 1 5CC995BB
P 5800 5900
F 0 "J3" H 5880 5942 50  0000 L CNN
F 1 "Screw_Term_Detector" H 5880 5851 50  0000 L CNN
F 2 "digikey-footprints:Term_Block_1x5_P5.08mm" H 5800 5900 50  0001 C CNN
F 3 "~" H 5800 5900 50  0001 C CNN
	1    5800 5900
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR016
U 1 1 5CC9A229
P 6000 6100
F 0 "#PWR016" H 6000 5950 50  0001 C CNN
F 1 "+12V" V 6015 6228 50  0000 L CNN
F 2 "" H 6000 6100 50  0001 C CNN
F 3 "" H 6000 6100 50  0001 C CNN
	1    6000 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5CC9AB9C
P 6000 6000
F 0 "#PWR015" H 6000 5750 50  0001 C CNN
F 1 "GND" V 6005 5872 50  0000 R CNN
F 2 "" H 6000 6000 50  0001 C CNN
F 3 "" H 6000 6000 50  0001 C CNN
	1    6000 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5CC9B73F
P 6000 5900
F 0 "#PWR014" H 6000 5750 50  0001 C CNN
F 1 "+5V" V 6015 6028 50  0000 L CNN
F 2 "" H 6000 5900 50  0001 C CNN
F 3 "" H 6000 5900 50  0001 C CNN
	1    6000 5900
	0    1    1    0   
$EndComp
NoConn ~ 5400 300 
NoConn ~ 6000 5800
$Comp
L Connector:Screw_Terminal_01x05 J2
U 1 1 5CCD28E2
P 3750 3600
F 0 "J2" H 3668 3175 50  0000 C CNN
F 1 "Screw_Term_RPi" H 3668 3266 50  0000 C CNN
F 2 "digikey-footprints:Term_Block_1x5_P5.08mm" H 3750 3600 50  0001 C CNN
F 3 "~" H 3750 3600 50  0001 C CNN
	1    3750 3600
	-1   0    0    1   
$EndComp
Text Label 3950 3800 0    50   ~ 0
LV_PrinterPowerDemand
NoConn ~ 11500 2050
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5CCE850B
P 10500 1750
F 0 "J11" H 10472 1632 50  0000 R CNN
F 1 "Conn_Switch" H 10472 1723 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10500 1750 50  0001 C CNN
F 3 "~" H 10500 1750 50  0001 C CNN
	1    10500 1750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 5CCE9BE9
P 10300 1750
F 0 "#PWR029" H 10300 1500 50  0001 C CNN
F 1 "GND" V 10305 1622 50  0000 R CNN
F 2 "" H 10300 1750 50  0001 C CNN
F 3 "" H 10300 1750 50  0001 C CNN
	1    10300 1750
	0    1    1    0   
$EndComp
Text Label 10300 1650 2    50   ~ 0
SOFT_SWITCH
$Comp
L Device:R R2
U 1 1 5CD28673
P 7500 1550
F 0 "R2" V 7293 1550 50  0000 C CNN
F 1 "560R" V 7384 1550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7430 1550 50  0001 C CNN
F 3 "~" H 7500 1550 50  0001 C CNN
	1    7500 1550
	0    1    1    0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N3904-AP Q1
U 1 1 5CD2B56C
P 7850 1550
F 0 "Q1" H 8038 1603 60  0000 L CNN
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
L power:GND #PWR022
U 1 1 5CC24F45
P 7950 1750
F 0 "#PWR022" H 7950 1500 50  0001 C CNN
F 1 "GND" H 7955 1577 50  0000 C CNN
F 2 "" H 7950 1750 50  0001 C CNN
F 3 "" H 7950 1750 50  0001 C CNN
	1    7950 1750
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D1
U 1 1 5CC2A3E2
P 7950 1200
F 0 "D1" V 7904 1279 50  0000 L CNN
F 1 "1N4007" V 7995 1279 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7950 1025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7950 1200 50  0001 C CNN
	1    7950 1200
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR021
U 1 1 5CC2B730
P 7950 1050
F 0 "#PWR021" H 7950 900 50  0001 C CNN
F 1 "+12V" H 7965 1223 50  0000 C CNN
F 2 "" H 7950 1050 50  0001 C CNN
F 3 "" H 7950 1050 50  0001 C CNN
	1    7950 1050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5CC2C13B
P 8600 1250
F 0 "J6" H 8572 1132 50  0000 R CNN
F 1 "Conn_Piezo" H 8572 1223 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8600 1250 50  0001 C CNN
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
L Device:R R3
U 1 1 5CC5B18E
P 8400 3050
F 0 "R3" V 8193 3050 50  0000 C CNN
F 1 "560R" V 8284 3050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 3050 50  0001 C CNN
F 3 "~" H 8400 3050 50  0001 C CNN
	1    8400 3050
	0    1    1    0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N3904-AP Q2
U 1 1 5CC5BF58
P 8750 3050
F 0 "Q2" H 8938 3103 60  0000 L CNN
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
L Diode:1N4007 D2
U 1 1 5CC5CF0D
P 8850 2700
F 0 "D2" V 8804 2779 50  0000 L CNN
F 1 "1N4007" V 8895 2779 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8850 2525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8850 2700 50  0001 C CNN
	1    8850 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5CC5E0AC
P 8850 3250
F 0 "#PWR024" H 8850 3000 50  0001 C CNN
F 1 "GND" H 8855 3077 50  0000 C CNN
F 2 "" H 8850 3250 50  0001 C CNN
F 3 "" H 8850 3250 50  0001 C CNN
	1    8850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3050 8250 3300
Text Label 8250 3300 3    50   ~ 0
HV_PrinterPowerStatus
Wire Wire Line
	8100 3050 8250 3050
Connection ~ 8250 3050
$Comp
L Connector:Screw_Terminal_01x02 J9
U 1 1 5CC6A5CF
P 9750 2600
F 0 "J9" H 9830 2592 50  0000 L CNN
F 1 "PRINTER_RELAY" H 9830 2501 50  0000 L CNN
F 2 "Connectors:SCREWTERMINAL-5MM-2" H 9750 2600 50  0001 C CNN
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
L power:+12V #PWR023
U 1 1 5CC6D19A
P 8850 2550
F 0 "#PWR023" H 8850 2400 50  0001 C CNN
F 1 "+12V" H 8865 2723 50  0000 C CNN
F 2 "" H 8850 2550 50  0001 C CNN
F 3 "" H 8850 2550 50  0001 C CNN
	1    8850 2550
	1    0    0    -1  
$EndComp
Connection ~ 8850 2550
$Comp
L Device:R R4
U 1 1 5CC73F21
P 8800 4800
F 0 "R4" V 8593 4800 50  0000 C CNN
F 1 "560R" V 8684 4800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8730 4800 50  0001 C CNN
F 3 "~" H 8800 4800 50  0001 C CNN
	1    8800 4800
	0    1    1    0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:2N3904-AP Q3
U 1 1 5CC73F34
P 9150 4800
F 0 "Q3" H 9338 4853 60  0000 L CNN
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
L Diode:1N4007 D3
U 1 1 5CC73F3E
P 9250 4450
F 0 "D3" V 9204 4529 50  0000 L CNN
F 1 "1N4007" V 9295 4529 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9250 4275 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9250 4450 50  0001 C CNN
	1    9250 4450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5CC73F48
P 9250 5000
F 0 "#PWR026" H 9250 4750 50  0001 C CNN
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
L Connector:Screw_Terminal_01x02 J10
U 1 1 5CC73F57
P 10150 4350
F 0 "J10" H 10230 4342 50  0000 L CNN
F 1 "FAN_RELAY" H 10230 4251 50  0000 L CNN
F 2 "Connectors:SCREWTERMINAL-5MM-2" H 10150 4350 50  0001 C CNN
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
L power:+12V #PWR025
U 1 1 5CC73F66
P 9250 4300
F 0 "#PWR025" H 9250 4150 50  0001 C CNN
F 1 "+12V" H 9265 4473 50  0000 C CNN
F 2 "" H 9250 4300 50  0001 C CNN
F 3 "" H 9250 4300 50  0001 C CNN
	1    9250 4300
	1    0    0    -1  
$EndComp
Connection ~ 9250 4300
NoConn ~ 2250 1700
NoConn ~ 2250 1900
NoConn ~ 2250 2000
NoConn ~ 2250 2200
NoConn ~ 2250 2300
NoConn ~ 2250 2400
NoConn ~ 1650 700 
NoConn ~ 2250 1100
NoConn ~ 2250 1500
NoConn ~ 1250 1100
NoConn ~ 1250 1200
NoConn ~ 1250 2000
NoConn ~ 1250 2100
NoConn ~ 1250 2200
NoConn ~ 1250 2300
NoConn ~ 1250 2400
$Comp
L power:+3V3 #PWR05
U 1 1 5CCA5351
P 1850 700
F 0 "#PWR05" H 1850 550 50  0001 C CNN
F 1 "+3V3" H 1865 873 50  0000 C CNN
F 2 "" H 1850 700 50  0001 C CNN
F 3 "" H 1850 700 50  0001 C CNN
	1    1850 700 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5CCA5F2D
P 1950 700
F 0 "#PWR06" H 1950 550 50  0001 C CNN
F 1 "+5V" H 1965 873 50  0000 C CNN
F 2 "" H 1950 700 50  0001 C CNN
F 3 "" H 1950 700 50  0001 C CNN
	1    1950 700 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5CCAE331
P 6300 2550
F 0 "J7" H 6272 2482 50  0000 R CNN
F 1 "Conn_Printer_Mode" H 6272 2573 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6300 2550 50  0001 C CNN
F 3 "~" H 6300 2550 50  0001 C CNN
	1    6300 2550
	1    0    0    -1  
$EndComp
Text Label 6500 2450 0    50   ~ 0
HV_PrinterPowerDemand
Text Label 8100 3050 1    50   ~ 0
D7_PRINTER_RELAY
Text Label 6500 3750 0    50   ~ 0
HV_FanPowerDemand
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5CCF3969
P 3650 4500
F 0 "J4" H 3568 4175 50  0000 C CNN
F 1 "12V_IN" H 3568 4266 50  0000 C CNN
F 2 "Connectors:SCREWTERMINAL-5MM-2" H 3650 4500 50  0001 C CNN
F 3 "~" H 3650 4500 50  0001 C CNN
	1    3650 4500
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR017
U 1 1 5CCF4815
P 3850 4400
F 0 "#PWR017" H 3850 4250 50  0001 C CNN
F 1 "+12V" V 3865 4528 50  0000 L CNN
F 2 "" H 3850 4400 50  0001 C CNN
F 3 "" H 3850 4400 50  0001 C CNN
	1    3850 4400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5CCF5626
P 3850 4500
F 0 "#PWR018" H 3850 4250 50  0001 C CNN
F 1 "GND" V 3855 4372 50  0000 R CNN
F 2 "" H 3850 4500 50  0001 C CNN
F 3 "" H 3850 4500 50  0001 C CNN
	1    3850 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5CC3D025
P 3950 6100
F 0 "R1" V 3743 6100 50  0000 C CNN
F 1 "220R" V 3834 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3880 6100 50  0001 C CNN
F 3 "~" H 3950 6100 50  0001 C CNN
	1    3950 6100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5CC3E12C
P 4300 6200
F 0 "J5" H 4272 6082 50  0000 R CNN
F 1 "Conn_Pwr_LED" H 4272 6173 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4300 6200 50  0001 C CNN
F 3 "~" H 4300 6200 50  0001 C CNN
	1    4300 6200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5CC3F099
P 4100 6200
F 0 "#PWR020" H 4100 5950 50  0001 C CNN
F 1 "GND" H 4105 6027 50  0000 C CNN
F 2 "" H 4100 6200 50  0001 C CNN
F 3 "" H 4100 6200 50  0001 C CNN
	1    4100 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5CC40612
P 3800 6100
F 0 "#PWR019" H 3800 5950 50  0001 C CNN
F 1 "+5V" V 3815 6228 50  0000 L CNN
F 2 "" H 3800 6100 50  0001 C CNN
F 3 "" H 3800 6100 50  0001 C CNN
	1    3800 6100
	0    -1   -1   0   
$EndComp
Text Label 2250 1200 0    50   ~ 0
RESET
Text Label 1250 1500 2    50   ~ 0
SW_FAN_RELAY
Text Label 1250 1600 2    50   ~ 0
SOFT_SWITCH
Text Label 2250 2100 0    50   ~ 0
HV_AlarmTriggered
$Comp
L power:GND #PWR04
U 1 1 5CC65335
P 1750 2700
F 0 "#PWR04" H 1750 2450 50  0001 C CNN
F 1 "GND" H 1755 2527 50  0000 C CNN
F 2 "" H 1750 2700 50  0001 C CNN
F 3 "" H 1750 2700 50  0001 C CNN
	1    1750 2700
	1    0    0    -1  
$EndComp
Text Label 1250 1300 2    50   ~ 0
DETECTOR_SIGNAL
Text Label 6250 5700 0    50   ~ 0
DETECTOR_SIGNAL
Text Label 1500 5650 2    50   ~ 0
LV_FanPowerDemand
Text Label 5350 2050 0    50   ~ 0
HV_FanPowerDemand
Text Label 4450 2050 2    50   ~ 0
LV_FanPowerDemand
Text Label 7350 1550 2    50   ~ 0
HV_AlarmTriggered
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5CC7DA6D
P 3500 7400
F 0 "#FLG02" H 3500 7475 50  0001 C CNN
F 1 "PWR_FLAG" V 3500 7527 50  0000 L CNN
F 2 "" H 3500 7400 50  0001 C CNN
F 3 "~" H 3500 7400 50  0001 C CNN
	1    3500 7400
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5CC7D054
P 3500 7200
F 0 "#FLG01" H 3500 7275 50  0001 C CNN
F 1 "PWR_FLAG" V 3500 7327 50  0000 L CNN
F 2 "" H 3500 7200 50  0001 C CNN
F 3 "~" H 3500 7200 50  0001 C CNN
	1    3500 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5CCE46FE
P 4300 7400
F 0 "#PWR012" H 4300 7150 50  0001 C CNN
F 1 "GND" V 4305 7272 50  0000 R CNN
F 2 "" H 4300 7400 50  0001 C CNN
F 3 "" H 4300 7400 50  0001 C CNN
	1    4300 7400
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 5CCE3D4A
P 4300 7200
F 0 "#PWR011" H 4300 7050 50  0001 C CNN
F 1 "+12V" V 4315 7328 50  0000 L CNN
F 2 "" H 4300 7200 50  0001 C CNN
F 3 "" H 4300 7200 50  0001 C CNN
	1    4300 7200
	0    1    1    0   
$EndComp
$Comp
L Converter_ACDC:IRM-20-12 PS1
U 1 1 5CCE2BB6
P 3900 7300
F 0 "PS1" H 3900 7625 50  0000 C CNN
F 1 "IRM-20-12" H 3900 7534 50  0000 C CNN
F 2 "" H 3900 7000 50  0001 C CNN
F 3 "http://www.meanwell.com/Upload/PDF/IRM-20/IRM-20-SPEC.PDF" H 4300 6950 50  0001 C CNN
	1    3900 7300
	1    0    0    -1  
$EndComp
Text Label 2350 7450 2    50   ~ 0
-PIEZO
Text Label 2350 7250 2    50   ~ 0
+PIEZO
$Comp
L Device:Buzzer BZ1
U 1 1 5CC343CA
P 2450 7350
F 0 "BZ1" H 2602 7379 50  0000 L CNN
F 1 "Buzzer" H 2602 7288 50  0000 L CNN
F 2 "" V 2425 7450 50  0001 C CNN
F 3 "~" V 2425 7450 50  0001 C CNN
	1    2450 7350
	1    0    0    -1  
$EndComp
Text Label 1200 7400 2    50   ~ 0
SOFT_SWITCH
$Comp
L power:GND #PWR02
U 1 1 5CCFCAEC
P 1600 7400
F 0 "#PWR02" H 1600 7150 50  0001 C CNN
F 1 "GND" V 1605 7272 50  0000 R CNN
F 2 "" H 1600 7400 50  0001 C CNN
F 3 "" H 1600 7400 50  0001 C CNN
	1    1600 7400
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5CCFC122
P 1400 7400
F 0 "SW2" H 1400 7635 50  0000 C CNN
F 1 "SW_SPST" H 1400 7544 50  0000 C CNN
F 2 "" H 1400 7400 50  0001 C CNN
F 3 "~" H 1400 7400 50  0001 C CNN
	1    1400 7400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5CC93548
P 1400 7050
F 0 "SW1" H 1400 7285 50  0000 C CNN
F 1 "SW_SPST" H 1400 7194 50  0000 C CNN
F 2 "" H 1400 7050 50  0001 C CNN
F 3 "~" H 1400 7050 50  0001 C CNN
	1    1400 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5CC93EB0
P 1600 7050
F 0 "#PWR01" H 1600 6800 50  0001 C CNN
F 1 "GND" V 1605 6922 50  0000 R CNN
F 2 "" H 1600 7050 50  0001 C CNN
F 3 "" H 1600 7050 50  0001 C CNN
	1    1600 7050
	0    -1   -1   0   
$EndComp
Text Label 1200 7050 2    50   ~ 0
RESET
$Comp
L power:GND #PWR0101
U 1 1 5CE49583
P 1850 2700
F 0 "#PWR0101" H 1850 2450 50  0001 C CNN
F 1 "GND" H 1855 2527 50  0000 C CNN
F 2 "" H 1850 2700 50  0001 C CNN
F 3 "" H 1850 2700 50  0001 C CNN
	1    1850 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5CCBFC14
P 6300 3850
F 0 "J8" H 6272 3782 50  0000 R CNN
F 1 "Conn_Fan_Mode" H 6272 3873 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6300 3850 50  0001 C CNN
F 3 "~" H 6300 3850 50  0001 C CNN
	1    6300 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5CC5D628
P 6500 3850
F 0 "#PWR0102" H 6500 3700 50  0001 C CNN
F 1 "+5V" V 6515 3978 50  0000 L CNN
F 2 "" H 6500 3850 50  0001 C CNN
F 3 "" H 6500 3850 50  0001 C CNN
	1    6500 3850
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5CC658C6
P 6500 2550
F 0 "#PWR0103" H 6500 2400 50  0001 C CNN
F 1 "+5V" V 6515 2678 50  0000 L CNN
F 2 "" H 6500 2550 50  0001 C CNN
F 3 "" H 6500 2550 50  0001 C CNN
	1    6500 2550
	0    1    1    0   
$EndComp
Text Label 6850 3950 0    50   ~ 0
SW_FAN_RELAY
Text Label 6850 2650 0    50   ~ 0
SW_PRINTER_RELAY
Text Label 2250 1800 0    50   ~ 0
SW_PRINTER_RELAY
NoConn ~ 1250 1400
Text Label 1250 1700 2    50   ~ 0
D7_PRINTER_RELAY
NoConn ~ 1250 1800
Text Label 1250 1900 2    50   ~ 0
D8_FAN_RELAY
$Comp
L Device:R R5
U 1 1 5D10E052
P 6500 2800
F 0 "R5" H 6570 2846 50  0000 L CNN
F 1 "10R" H 6570 2755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 2800 50  0001 C CNN
F 3 "~" H 6500 2800 50  0001 C CNN
	1    6500 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5D10F091
P 6500 2950
F 0 "#PWR0104" H 6500 2700 50  0001 C CNN
F 1 "GND" H 6505 2777 50  0000 C CNN
F 2 "" H 6500 2950 50  0001 C CNN
F 3 "" H 6500 2950 50  0001 C CNN
	1    6500 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D114FFA
P 6500 4100
F 0 "R6" H 6570 4146 50  0000 L CNN
F 1 "10R" H 6570 4055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 4100 50  0001 C CNN
F 3 "~" H 6500 4100 50  0001 C CNN
	1    6500 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5D115C1F
P 6500 4250
F 0 "#PWR0105" H 6500 4000 50  0001 C CNN
F 1 "GND" H 6505 4077 50  0000 C CNN
F 2 "" H 6500 4250 50  0001 C CNN
F 3 "" H 6500 4250 50  0001 C CNN
	1    6500 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D12B6A3
P 6000 5550
F 0 "R7" H 6070 5596 50  0000 L CNN
F 1 "10R" H 6070 5505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5930 5550 50  0001 C CNN
F 3 "~" H 6000 5550 50  0001 C CNN
	1    6000 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D12C90D
P 6000 5400
F 0 "#PWR0106" H 6000 5150 50  0001 C CNN
F 1 "GND" H 6005 5227 50  0000 C CNN
F 2 "" H 6000 5400 50  0001 C CNN
F 3 "" H 6000 5400 50  0001 C CNN
	1    6000 5400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 5700 6250 5700
Connection ~ 6000 5700
Wire Wire Line
	6500 3950 6850 3950
Connection ~ 6500 3950
Wire Wire Line
	6500 2650 6850 2650
Connection ~ 6500 2650
Text Notes 3700 3400 3    50   ~ 0
G Y O R B
Text Notes 7000 6450 0    50   ~ 0
Arduino 3d printer cut off program\nCopyright (C) 2019 Christopher Speck\n\nThis program is free software: you can redistribute it and/or modify\nit under the terms of the GNU General Public License as published by\nthe Free Software Foundation, either version 3 of the License, or\n(at your option) any later version.\n\nThis program is distributed in the hope that it will be useful,\nbut WITHOUT ANY WARRANTY; without even the implied warranty of\nMERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\nGNU General Public License for more details.\n\nYou should have received a copy of the GNU General Public License\nalong with this program.  If not, see <https://www.gnu.org/licenses/>.
$EndSCHEMATC
