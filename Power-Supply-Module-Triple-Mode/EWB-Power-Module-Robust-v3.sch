EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 8000 9000
encoding utf-8
Sheet 1 1
Title "EWB-Power-Module-Robust"
Date "2021-03-07"
Rev "V0.01"
Comp "Dhiru Kholia (VU3CER), Chris Thompson (AC2CZ)"
Comment1 "Triple ('12'v+6v+5v) Power Module for 4S LiFePO4 or 12v SLA battery with current limiting"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5120 2710 5120 2910
Text Notes 1570 7090 0    50   ~ 0
The +5V line powers Arduino Nano, DS3231 RTC Module, and the Si5351\nVFO Module. The +6V line powers the 74ACT00 driver IC. The maximum \ncurrent consumption is less than 150 mA.\n\nhttps://electronics.stackexchange.com/questions/52355/inductor-purpose\n\nNote: We don't use AVCC, ADC, and the analog circuitry of the Arduino Nano.\nHence, there is no 100uH inductor in our power supply module (as compared\nto the uSDX one). Also, on an Arduino Nano AVCC is connected to VCC ;)\n\nWe avoid AMS1117 and similar chips due to their horrible "I-O short circuit"\nfailure mode (see QCX-mini's failure reports and the subsequent power design\nfixes). If  size reduction over the LM7805's TO-220 footprint is desired, 78M05\n(DPAK) is a decent option. TI say that LM7805 is 'essentially indestructible' \nin their datasheet ;)\n\nA note from the "QCX assembly Rev 1.08.pdf" document:\nTo keep noise (power line or radiated noise from the microcontroller/LCD back\ninto the sensitive receiver) out of the supply, the 5V supply to the microcontroller\nand LCD module is filtered by 100uH inductor L6 and 220uF capacitor C47\n(may be supplied as 470uF, even better!).\n\nWe don't have a sensitive receiver or audio component in our TX circuit.\n\nNote: Heatsinking of the regulator chips is not required at <= 100mA \nconsumption (per chip).\n\nRsens (R1) fixes the maximum current to a value given by (0.65/Rsens).\n\nFor example, if Rsens = 0.33 Ω, the current is limited to about 2 A even if the \noutput is shorted.\n\nReferences:\n\n- https://www.g0kla.com/scpa/SimpleCheapPA.php\n- https://www.g0kla.com/scpa/current_sense_circuit_v1.png\n- https://en.wikipedia.org/wiki/Current_limiting#In_electronic_power_circuits\n\nNote: The current limiting circuit was simulated in LTspice. For 24v input, change\nR2 and R3 to 10k. Take care of heatsinking at such higher voltages.\n\nNote: Keep BD140 at <= 300 mA continuous current flow.\n\nTest the power section with a dummy load at 250ma on 5v and 6v rail (with 15 / \n20 ohms load) and 1A on the 12v rail (with 10 ohms 10 watts load).
$Comp
L EWB-Power-Module-Robust-v3-rescue:GND-power-EWB-Power-Module-Robust-v3-rescue #PWR01
U 1 1 6034D782
P 6070 3010
F 0 "#PWR01" H 6070 2810 50  0001 C CNN
F 1 "GND" H 6180 3050 50  0000 C CNN
F 2 "" H 6070 2960 50  0001 C CNN
F 3 "" H 6070 2960 50  0001 C CNN
	1    6070 3010
	1    0    0    -1  
$EndComp
$Comp
L EWB-Power-Module-Robust-v3-rescue:CP-Device-EWB-Power-Module-Robust-v3-rescue C1
U 1 1 5EC3DF12
P 4590 2640
F 0 "C1" H 4708 2686 50  0000 L CNN
F 1 "220uF/25V" V 4440 2440 40  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4628 2490 50  0001 C CNN
F 3 "~" H 4590 2640 50  0001 C CNN
	1    4590 2640
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 2540 5630 2410
Wire Wire Line
	5630 2740 5630 2910
$Comp
L EWB-Power-Module-Robust-v3-rescue:C_Small-Device-EWB-Power-Module-Robust-v3-rescue C3
U 1 1 602C1502
P 5630 2640
F 0 "C3" V 5520 2490 50  0000 L CNN
F 1 "104" V 5510 2620 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5630 2640 50  0001 C CNN
F 3 "~" H 5630 2640 50  0001 C CNN
	1    5630 2640
	1    0    0    -1  
$EndComp
Connection ~ 5630 2410
Connection ~ 5120 2910
Wire Wire Line
	5420 2410 5630 2410
$Comp
L EWB-Power-Module-Robust-v3-rescue:PWR_FLAG-power-EWB-Power-Module-Robust-v3-rescue #FLG0102
U 1 1 605CCBFE
P 5630 3010
F 0 "#FLG0102" H 5630 3085 50  0001 C CNN
F 1 "PWR_FLAG" H 5820 3080 35  0000 C CNN
F 2 "" H 5630 3010 50  0001 C CNN
F 3 "~" H 5630 3010 50  0001 C CNN
	1    5630 3010
	-1   0    0    1   
$EndComp
$Comp
L EWB-Power-Module-Robust-v3-rescue:PWR_FLAG-power-EWB-Power-Module-Robust-v3-rescue #FLG0103
U 1 1 603BCD35
P 6070 2510
F 0 "#FLG0103" H 6070 2585 50  0001 C CNN
F 1 "PWR_FLAG" H 6060 2660 35  0000 C CNN
F 2 "" H 6070 2510 50  0001 C CNN
F 3 "~" H 6070 2510 50  0001 C CNN
	1    6070 2510
	-1   0    0    1   
$EndComp
Wire Wire Line
	5120 2910 5630 2910
Wire Wire Line
	5630 2910 5630 3010
Connection ~ 5630 2910
Wire Wire Line
	5630 2910 6070 2910
$Comp
L EWB-Power-Module-Robust-v3-rescue:+5V-power-EWB-Power-Module-Robust-v3-rescue #PWR0101
U 1 1 603CE2FA
P 6070 2290
F 0 "#PWR0101" H 6070 2140 50  0001 C CNN
F 1 "+5V" H 6060 2440 50  0000 C CNN
F 2 "" H 6070 2290 50  0001 C CNN
F 3 "" H 6070 2290 50  0001 C CNN
	1    6070 2290
	1    0    0    -1  
$EndComp
Wire Wire Line
	5940 2410 6070 2410
$Comp
L EWB-Power-Module-Robust-v3-rescue:Fuse_Small-Device-EWB-Power-Module-Robust-v3-rescue F2
U 1 1 603A7E94
P 5840 2410
F 0 "F2" H 5820 2480 50  0000 C CNN
F 1 "250mA" H 5840 2330 50  0000 C CNN
F 2 "Fuse:Fuse_BelFuse_0ZRE0025FF_L9.6mm_W3.8mm" H 5840 2410 50  0001 C CNN
F 3 "~" H 5840 2410 50  0001 C CNN
	1    5840 2410
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 2410 5740 2410
Wire Wire Line
	1220 1590 1340 1590
$Comp
L EWB-Power-Module-Robust-v3-rescue:D_Small-Device-EWB-Power-Module-Robust-v3-rescue D1
U 1 1 60262E0D
P 1440 1590
F 0 "D1" H 1450 1490 50  0000 C CNN
F 1 "1N5822" H 1440 1680 40  0000 C CNN
F 2 "Diode_THT:D_DO-201AD_P3.81mm_Vertical_KathodeUp" V 1440 1590 50  0001 C CNN
F 3 "~" V 1440 1590 50  0001 C CNN
	1    1440 1590
	-1   0    0    1   
$EndComp
Wire Wire Line
	6070 2910 6070 3010
$Comp
L EWB-Power-Module-Robust-v3-rescue:Conn_01x02-Connector_Generic-EWB-Power-Module-Robust-v3-rescue 5V1
U 1 1 60250D4B
P 6630 2480
F 0 "5V1" H 6710 2472 50  0000 L CNN
F 1 "+5V" H 6710 2380 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6630 2480 50  0001 C CNN
F 3 "~" H 6630 2480 50  0001 C CNN
	1    6630 2480
	1    0    0    -1  
$EndComp
Wire Wire Line
	6070 2910 6300 2910
Connection ~ 6070 2910
Wire Wire Line
	6430 2480 6370 2480
Wire Wire Line
	6370 2480 6370 2410
Wire Wire Line
	6300 2910 6300 2580
Wire Wire Line
	6300 2580 6430 2580
Connection ~ 6300 2910
Wire Wire Line
	6300 2910 6370 2910
$Comp
L EWB-Power-Module-Robust-v3-rescue:Conn_01x02-Connector_Generic-EWB-Power-Module-Robust-v3-rescue 5V2
U 1 1 60258D96
P 6630 2730
F 0 "5V2" H 6710 2722 50  0000 L CNN
F 1 "+5V" H 6710 2640 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6630 2730 50  0001 C CNN
F 3 "~" H 6630 2730 50  0001 C CNN
	1    6630 2730
	1    0    0    -1  
$EndComp
Wire Wire Line
	6370 2910 6370 2830
Wire Wire Line
	6370 2480 6370 2730
Connection ~ 6370 2480
$Comp
L EWB-Power-Module-Robust-v3-rescue:Conn_01x02-Connector_Generic-EWB-Power-Module-Robust-v3-rescue 12V1
U 1 1 602884C3
P 4190 1320
F 0 "12V1" V 4290 1370 50  0000 R CNN
F 1 "12V" H 4110 1170 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4190 1320 50  0001 C CNN
F 3 "~" H 4190 1320 50  0001 C CNN
	1    4190 1320
	0    -1   -1   0   
$EndComp
$Comp
L EWB-Power-Module-Robust-v3-rescue:Conn_01x02-Connector_Generic-EWB-Power-Module-Robust-v3-rescue VDC1
U 1 1 602B9EFB
P 1020 1590
F 0 "VDC1" H 1070 1700 50  0000 R CNN
F 1 "VDC" H 1070 1380 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1020 1590 50  0001 C CNN
F 3 "~" H 1020 1590 50  0001 C CNN
	1    1020 1590
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6070 2290 6070 2410
Wire Wire Line
	6070 2410 6370 2410
Connection ~ 6070 2410
Wire Wire Line
	6070 2410 6070 2510
Wire Wire Line
	4590 2790 4590 2910
Connection ~ 4590 2910
Wire Wire Line
	4590 2910 5120 2910
Wire Wire Line
	4290 2910 4590 2910
Wire Wire Line
	6370 2730 6430 2730
Wire Wire Line
	6370 2830 6430 2830
Wire Wire Line
	5120 1610 5120 1810
$Comp
L EWB-Power-Module-Robust-v3-rescue:LM7805_TO220-Regulator_Linear-EWB-Power-Module-Robust-v3-rescue 7806_1
U 1 1 60A28D40
P 5120 1310
F 0 "7806_1" H 5120 1552 50  0000 C CNN
F 1 "LM7806" H 5120 1461 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5120 1535 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 5120 1260 50  0001 C CNN
	1    5120 1310
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 1440 5630 1310
Wire Wire Line
	5630 1640 5630 1810
$Comp
L EWB-Power-Module-Robust-v3-rescue:C_Small-Device-EWB-Power-Module-Robust-v3-rescue C2
U 1 1 60A28D48
P 5630 1540
F 0 "C2" V 5520 1390 50  0000 L CNN
F 1 "104" V 5510 1520 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.4mm_W2.1mm_P2.50mm" H 5630 1540 50  0001 C CNN
F 3 "~" H 5630 1540 50  0001 C CNN
	1    5630 1540
	1    0    0    -1  
$EndComp
Connection ~ 5630 1310
Wire Wire Line
	5420 1310 5630 1310
$Comp
L EWB-Power-Module-Robust-v3-rescue:PWR_FLAG-power-EWB-Power-Module-Robust-v3-rescue #FLG02
U 1 1 60A28D57
P 6070 1410
F 0 "#FLG02" H 6070 1485 50  0001 C CNN
F 1 "PWR_FLAG" H 6060 1560 35  0000 C CNN
F 2 "" H 6070 1410 50  0001 C CNN
F 3 "~" H 6070 1410 50  0001 C CNN
	1    6070 1410
	-1   0    0    1   
$EndComp
Wire Wire Line
	5120 1810 5630 1810
Connection ~ 5630 1810
Wire Wire Line
	5940 1310 6070 1310
$Comp
L EWB-Power-Module-Robust-v3-rescue:Fuse_Small-Device-EWB-Power-Module-Robust-v3-rescue F1
U 1 1 60A28D6B
P 5840 1310
F 0 "F1" H 5820 1380 50  0000 C CNN
F 1 "250mA" H 5840 1220 50  0000 C CNN
F 2 "Fuse:Fuse_BelFuse_0ZRE0025FF_L9.6mm_W3.8mm" H 5840 1310 50  0001 C CNN
F 3 "~" H 5840 1310 50  0001 C CNN
	1    5840 1310
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 1310 5740 1310
Wire Wire Line
	6070 1190 6070 1310
Wire Wire Line
	6070 1310 6370 1310
Connection ~ 6070 1310
Wire Wire Line
	6070 1310 6070 1410
Wire Wire Line
	4590 1310 4820 1310
Wire Wire Line
	5630 1810 6070 1810
Connection ~ 6070 1810
Wire Wire Line
	6070 1810 6070 1910
$Comp
L EWB-Power-Module-Robust-v3-rescue:GND-power-EWB-Power-Module-Robust-v3-rescue #PWR03
U 1 1 60A28D34
P 6070 1910
F 0 "#PWR03" H 6070 1710 50  0001 C CNN
F 1 "GND" H 6180 1950 50  0000 C CNN
F 2 "" H 6070 1860 50  0001 C CNN
F 3 "" H 6070 1860 50  0001 C CNN
	1    6070 1910
	1    0    0    -1  
$EndComp
Wire Wire Line
	6070 1810 6300 1810
$Comp
L EWB-Power-Module-Robust-v3-rescue:+6V-power-EWB-Power-Module-Robust-v3-rescue #PWR0102
U 1 1 603FB045
P 6070 1190
F 0 "#PWR0102" H 6070 1040 50  0001 C CNN
F 1 "+6V" H 6060 1350 50  0000 C CNN
F 2 "" H 6070 1190 50  0001 C CNN
F 3 "" H 6070 1190 50  0001 C CNN
	1    6070 1190
	1    0    0    -1  
$EndComp
$Comp
L EWB-Power-Module-Robust-v3-rescue:Conn_01x02-Connector_Generic-EWB-Power-Module-Robust-v3-rescue 6V1
U 1 1 604011FB
P 6630 1380
F 0 "6V1" H 6710 1372 50  0000 L CNN
F 1 "+6V" H 6710 1280 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6630 1380 50  0001 C CNN
F 3 "~" H 6630 1380 50  0001 C CNN
	1    6630 1380
	1    0    0    -1  
$EndComp
Wire Wire Line
	6430 1380 6370 1380
Wire Wire Line
	6370 1380 6370 1310
Wire Wire Line
	6300 1810 6300 1480
Wire Wire Line
	6300 1480 6430 1480
Connection ~ 6300 1810
Wire Wire Line
	6300 1810 6370 1810
$Comp
L EWB-Power-Module-Robust-v3-rescue:Conn_01x02-Connector_Generic-EWB-Power-Module-Robust-v3-rescue 6V2
U 1 1 60401208
P 6630 1630
F 0 "6V2" H 6710 1622 50  0000 L CNN
F 1 "+6V" H 6710 1540 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6630 1630 50  0001 C CNN
F 3 "~" H 6630 1630 50  0001 C CNN
	1    6630 1630
	1    0    0    -1  
$EndComp
Wire Wire Line
	6370 1810 6370 1730
Wire Wire Line
	6370 1380 6370 1630
Connection ~ 6370 1380
Wire Wire Line
	6370 1630 6430 1630
Wire Wire Line
	6370 1730 6430 1730
$Comp
L EWB-Power-Module-Robust-v3-rescue:LM7805_TO220-Regulator_Linear-EWB-Power-Module-Robust-v3-rescue 7805_1
U 1 1 6036C612
P 5120 2410
F 0 "7805_1" H 5120 2652 50  0000 C CNN
F 1 "LM7805" H 5120 2561 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5120 2635 50  0001 C CIN
F 3 "https://www.onsemi.cn/PowerSolutions/document/MC7800-D.PDF" H 5120 2360 50  0001 C CNN
	1    5120 2410
	1    0    0    -1  
$EndComp
Wire Wire Line
	4590 2410 4820 2410
Connection ~ 4590 2410
Wire Wire Line
	4590 2410 4590 2490
Connection ~ 4290 2910
Wire Wire Line
	4590 1310 4590 1800
Connection ~ 3090 1590
$Comp
L EWB-Power-Module-Robust-v3-rescue:R-Device-EWB-Power-Module-Robust-v3-rescue R1
U 1 1 604A959F
P 2800 1590
F 0 "R1" V 2593 1590 50  0000 C CNN
F 1 "0.4 3W" V 2684 1590 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.40x3.35mm_HandSolder" V 2730 1590 50  0001 C CNN
F 3 "~" H 2800 1590 50  0001 C CNN
	1    2800 1590
	0    1    1    0   
$EndComp
$Comp
L EWB-Power-Module-Robust-v3-rescue:BD140-Transistor_BJT-EWB-Power-Module-Robust-v3-rescue Q1
U 1 1 6045F177
P 3870 2210
F 0 "Q1" H 4090 2300 50  0000 L CNN
F 1 "BD140" V 4120 1950 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 4070 2135 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 3870 2210 50  0001 L CNN
	1    3870 2210
	1    0    0    1   
$EndComp
$Comp
L EWB-Power-Module-Robust-v3-rescue:TIP42-Transistor_BJT-EWB-Power-Module-Robust-v3-rescue Q2
U 1 1 604DE3A6
P 2600 1880
F 0 "Q2" H 2791 1834 50  0000 L CNN
F 1 "TIP42" H 2791 1925 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2850 1805 50  0001 L CIN
F 3 "https://www.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=TIP42.PDF" H 2600 1880 50  0001 L CNN
	1    2600 1880
	-1   0    0    1   
$EndComp
Wire Wire Line
	3090 1590 3970 1590
Connection ~ 2500 2210
Wire Wire Line
	2500 2910 2500 2690
Wire Wire Line
	2500 2210 2500 2390
Wire Wire Line
	2500 1590 2650 1590
Connection ~ 2500 2910
$Comp
L EWB-Power-Module-Robust-v3-rescue:PWR_FLAG-power-EWB-Power-Module-Robust-v3-rescue #FLG0101
U 1 1 6041A809
P 1680 1470
F 0 "#FLG0101" H 1680 1545 50  0001 C CNN
F 1 "PWR_FLAG" V 1610 1490 30  0000 C CNN
F 2 "" H 1680 1470 50  0001 C CNN
F 3 "~" H 1680 1470 50  0001 C CNN
	1    1680 1470
	1    0    0    -1  
$EndComp
Wire Wire Line
	1540 1590 1680 1590
Connection ~ 1680 1590
Wire Wire Line
	1680 1470 1680 1590
Wire Wire Line
	1680 1590 1840 1590
Connection ~ 1840 1590
Wire Wire Line
	1840 1590 1840 1470
Wire Wire Line
	3970 2410 4590 2410
$Comp
L EWB-Power-Module-Robust-v3-rescue:+12V-power-EWB-Power-Module-Robust-v3-rescue #PWR0130
U 1 1 5ECAB225
P 1840 1470
F 0 "#PWR0130" H 1840 1320 50  0001 C CNN
F 1 "+12V" H 1850 1620 50  0000 C CNN
F 2 "" H 1840 1470 50  0001 C CNN
F 3 "" H 1840 1470 50  0001 C CNN
	1    1840 1470
	1    0    0    -1  
$EndComp
Wire Wire Line
	4190 1520 4190 1590
Wire Wire Line
	3970 1590 4190 1590
Connection ~ 3970 1590
Wire Wire Line
	3970 1590 3970 2010
Wire Wire Line
	4290 1520 4290 2910
Wire Wire Line
	2500 1590 2500 1680
Wire Wire Line
	2500 2080 2500 2210
Wire Wire Line
	3090 1880 2800 1880
Wire Wire Line
	3090 1590 3090 1880
$Comp
L EWB-Power-Module-Robust-v3-rescue:PWR_FLAG-power-EWB-Power-Module-Robust-v3-rescue #FLG0104
U 1 1 605F25D9
P 4710 1800
F 0 "#FLG0104" H 4710 1875 50  0001 C CNN
F 1 "PWR_FLAG" V 4620 1810 30  0000 C CNN
F 2 "" H 4710 1800 50  0001 C CNN
F 3 "~" H 4710 1800 50  0001 C CNN
	1    4710 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	4590 1800 4710 1800
Connection ~ 4590 1800
Wire Wire Line
	4590 1800 4590 2410
Wire Wire Line
	1220 1690 1220 2910
Wire Wire Line
	2950 1590 3090 1590
Wire Wire Line
	2500 2210 3100 2210
Wire Wire Line
	2500 2910 4290 2910
Wire Wire Line
	3400 2210 3670 2210
Wire Wire Line
	1220 2910 2500 2910
$Comp
L EWB-Power-Module-Robust-v3-rescue:Fuse_Small-Device-EWB-Power-Module-Robust-v3-rescue F0
U 1 1 6048C928
P 2130 1590
F 0 "F0" H 2130 1775 50  0000 C CNN
F 1 "2A" H 2130 1684 50  0000 C CNN
F 2 "Fuse:Fuse_BelFuse_0ZRE0025FF_L9.6mm_W3.8mm" H 2130 1590 50  0001 C CNN
F 3 "~" H 2130 1590 50  0001 C CNN
	1    2130 1590
	1    0    0    -1  
$EndComp
Connection ~ 2500 1590
$Comp
L EWB-Power-Module-Robust-v3-rescue:R_Variable-Device-EWB-Power-Module-Robust-v3-rescue R2
U 1 1 604A6AA2
P 3250 2210
F 0 "R2" V 3350 2210 50  0000 C CNN
F 1 "1k" V 3140 2230 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 3180 2210 50  0001 C CNN
F 3 "~" H 3250 2210 50  0001 C CNN
	1    3250 2210
	0    1    -1   0   
$EndComp
$Comp
L EWB-Power-Module-Robust-v3-rescue:R_Variable-Device-EWB-Power-Module-Robust-v3-rescue R3
U 1 1 604AABCD
P 2500 2540
F 0 "R3" H 2628 2586 50  0000 L CNN
F 1 "1k" H 2628 2495 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 2430 2540 50  0001 C CNN
F 3 "~" H 2500 2540 50  0001 C CNN
	1    2500 2540
	1    0    0    -1  
$EndComp
Wire Wire Line
	1840 1590 2030 1590
Wire Wire Line
	2230 1590 2500 1590
$EndSCHEMATC
