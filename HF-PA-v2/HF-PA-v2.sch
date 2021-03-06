EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 9873 8859
encoding utf-8
Sheet 1 1
Title "HF Class-E QRP PA"
Date "2021-07-19"
Rev "v0.01"
Comp "Dhiru (VU3CER)"
Comment1 "Credits: MTR5B, PFR-3, Hans Summers (QCX+), Tom (AK2B), WB2CBA (uSDX PCB)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 1390 6160
Wire Wire Line
	1390 6160 1390 6410
Wire Wire Line
	1390 6160 1390 6110
Connection ~ 1390 5860
Wire Wire Line
	1390 5860 1640 5860
Wire Wire Line
	1390 5610 1390 5860
$Comp
L power:GND #PWR0101
U 1 1 613244DF
P 1380 3480
F 0 "#PWR0101" H 1380 3230 50  0001 C CNN
F 1 "GND" H 1385 3307 50  0000 C CNN
F 2 "" H 1380 3480 50  0001 C CNN
F 3 "" H 1380 3480 50  0001 C CNN
	1    1380 3480
	1    0    0    -1
$EndComp
Wire Wire Line
	1140 4040 1290 4040
Wire Wire Line
	1140 3380 1140 4040
Wire Wire Line
	1380 3380 1140 3380
Wire Wire Line
	6940 4140 6940 5110
$Comp
L power:+12V #PWR0129
U 1 1 5F1E31DB
P 4240 5060
F 0 "#PWR0129" H 4240 4910 50  0001 C CNN
F 1 "+12V" H 4255 5233 50  0000 C CNN
F 2 "" H 4240 5060 50  0001 C CNN
F 3 "" H 4240 5060 50  0001 C CNN
	1    4240 5060
	1    0    0    -1
$EndComp
Wire Wire Line
	3890 6410 4040 6410
Wire Wire Line
	4040 6410 4040 6660
Wire Wire Line
	4240 5060 4240 5160
Wire Wire Line
	4240 5560 3890 5560
Wire Wire Line
	1640 5610 1390 5610
Wire Wire Line
	1640 6160 1390 6160
Wire Wire Line
	1390 6410 1640 6410
$Comp
L uSDX_LPF_BAND_Module:uSDX_LPF_BAND_MODULE U2
U 1 1 5F571AB1
P 2790 6010
F 0 "U2" H 2765 6685 50  0000 C CNN
F 1 "uSDX_LPF_BAND_MODULE" H 2765 6594 50  0000 C CNN
F 2 "footprints:uSDX_LPF_Band_Module" H 2790 6210 50  0001 C CNN
F 3 "" H 2790 6210 50  0001 C CNN
	1    2790 6010
	1    0    0    -1
$EndComp
Wire Wire Line
	4890 5860 4890 5410
Connection ~ 5540 5410
Wire Wire Line
	5540 4810 5540 5410
Wire Wire Line
	5540 5410 5540 6010
Wire Wire Line
	6490 5410 5540 5410
$Comp
L Connector:Conn_Coaxial RF_IN1
U 1 1 60FC9604
P 950 4240
F 0 "RF_IN1" H 970 4390 50  0000 C CNN
F 1 "Conn_Coaxial" H 1030 4380 50  0001 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_901-144_Vertical" H 950 4240 50  0001 C CNN
F 3 " ~" H 950 4240 50  0001 C CNN
	1    950  4240
	-1   0    0    -1
$EndComp
$Comp
L 74xx:7400 U1
U 1 1 5ED3A73C
P 1590 4140
F 0 "U1" H 1590 4465 50  0000 C CNN
F 1 "74ACT00" H 1590 4374 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 1590 4140 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7400" H 1590 4140 50  0001 C CNN
	1    1590 4140
	1    0    0    -1
$EndComp
Wire Wire Line
	1150 4240 1290 4240
Connection ~ 6940 5110
$Comp
L HF-PA-v2-rescue:BS170-dk_Transistors-FETs-MOSFETs-Single-custom Q1
U 1 1 5EC14C89
P 6440 5010
F 0 "Q1" H 6548 5063 60  0000 L CNN
F 1 "BS170" H 6548 4957 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 6640 5210 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6640 5310 60  0001 L CNN
F 4 "BS170-ND" H 6640 5410 60  0001 L CNN "Digi-Key_PN"
F 5 "BS170" H 6640 5510 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6640 5610 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6640 5710 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6640 5810 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BS170/BS170-ND/244280" H 6640 5910 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 500MA TO-92" H 6640 6010 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 6640 6110 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6640 6210 60  0001 L CNN "Status"
	1    6440 5010
	-1   0    0    -1
$EndComp
Wire Wire Line
	5540 6010 6490 6010
Wire Wire Line
	6440 4810 5540 4810
Wire Wire Line
	5940 5810 5940 6410
Wire Wire Line
	6790 5710 6940 5710
Wire Wire Line
	3090 4140 3690 4140
Wire Wire Line
	1890 4140 2490 4140
$Comp
L 74xx:7400 U1
U 2 1 5ED3D6BB
P 2790 4140
F 0 "U1" H 2790 4465 50  0000 C CNN
F 1 "74ACT00" H 2790 4374 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 2790 4140 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7400" H 2790 4140 50  0001 C CNN
	2    2790 4140
	1    0    0    -1
$EndComp
Connection ~ 5940 5810
Wire Wire Line
	6490 5810 5940 5810
Connection ~ 5940 6410
Wire Wire Line
	6490 6410 5940 6410
Wire Wire Line
	5940 5210 5940 5810
Wire Wire Line
	6440 5210 5940 5210
Wire Wire Line
	6790 6310 6940 6310
Wire Wire Line
	6740 5110 6940 5110
$Comp
L pspice:CAP C1
U 1 1 5ED5C055
P 3940 4140
F 0 "C1" V 3625 4140 50  0000 C CNN
F 1 "10nF" V 3716 4140 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3940 4140 50  0001 C CNN
F 3 "~" H 3940 4140 50  0001 C CNN
	1    3940 4140
	0    1    1    0
$EndComp
Wire Wire Line
	2490 4140 2490 4240
Connection ~ 2490 4140
Wire Wire Line
	2490 4040 2490 4140
$Comp
L HF-PA-v2-rescue:BS170-dk_Transistors-FETs-MOSFETs-Single-custom Q2
U 1 1 5EC11FDA
P 6490 5610
F 0 "Q2" H 6598 5663 60  0000 L CNN
F 1 "BS170" H 6598 5557 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 6690 5810 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6690 5910 60  0001 L CNN
F 4 "BS170-ND" H 6690 6010 60  0001 L CNN "Digi-Key_PN"
F 5 "BS170" H 6690 6110 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6690 6210 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6690 6310 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6690 6410 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BS170/BS170-ND/244280" H 6690 6510 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 500MA TO-92" H 6690 6610 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 6690 6710 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6690 6810 60  0001 L CNN "Status"
	1    6490 5610
	-1   0    0    -1
$EndComp
Wire Wire Line
	3620 1480 3620 1680
Wire Wire Line
	4320 1480 4320 1580
Connection ~ 4320 1480
Wire Wire Line
	4120 1480 4320 1480
Wire Wire Line
	4320 1180 4320 1480
$Comp
L pspice:CAP C0
U 1 1 5F0D3052
P 3870 1480
F 0 "C0" V 3555 1480 50  0000 C CNN
F 1 "100nF" V 3646 1480 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3870 1480 50  0001 C CNN
F 3 "~" H 3870 1480 50  0001 C CNN
	1    3870 1480
	0    1    1    0
$EndComp
$Comp
L 74xx:7400 U1
U 5 1 5EDC9213
P 4320 2080
F 0 "U1" H 4550 2126 50  0000 L CNN
F 1 "74ACT00" H 4550 2035 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm_LongPads" H 4320 2080 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn7400" H 4320 2080 50  0001 C CNN
	5    4320 2080
	1    0    0    -1
$EndComp
$Comp
L power:+5V #PWR0131
U 1 1 5ED015D1
P 4320 1180
F 0 "#PWR0131" H 4320 1030 50  0001 C CNN
F 1 "+5V" H 4335 1353 50  0000 C CNN
F 2 "" H 4320 1180 50  0001 C CNN
F 3 "" H 4320 1180 50  0001 C CNN
	1    4320 1180
	1    0    0    -1
$EndComp
Text Notes 1690 3350 0    50   ~ 0
D11 TX Pin (PB0), High => TX ON
$Comp
L Connector_Generic:Conn_01x02 TX_ON1
U 1 1 613111C1
P 1580 3380
F 0 "TX_ON1" H 1690 3250 50  0000 L CNN
F 1 "Conn_01x02" H 1660 3281 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1580 3380 50  0001 C CNN
F 3 "~" H 1580 3380 50  0001 C CNN
	1    1580 3380
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 613B324D
P 5940 6580
F 0 "#PWR0102" H 5940 6330 50  0001 C CNN
F 1 "GND" H 5945 6407 50  0000 C CNN
F 2 "" H 5940 6580 50  0001 C CNN
F 3 "" H 5940 6580 50  0001 C CNN
	1    5940 6580
	1    0    0    -1
$EndComp
$Comp
L Connector_Generic:Conn_01x02 PA1
U 1 1 6146C3F0
P 4690 5160
F 0 "PA1" H 4830 5150 50  0000 L CNN
F 1 "Conn_01x02" H 4770 5061 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4690 5160 50  0001 C CNN
F 3 "~" H 4690 5160 50  0001 C CNN
	1    4690 5160
	1    0    0    -1
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61489303
P 4590 1420
F 0 "#FLG0101" H 4590 1495 50  0001 C CNN
F 1 "PWR_FLAG" H 4590 1593 50  0000 C CNN
F 2 "" H 4590 1420 50  0001 C CNN
F 3 "~" H 4590 1420 50  0001 C CNN
	1    4590 1420
	1    0    0    -1
$EndComp
Wire Wire Line
	4320 1480 4590 1480
Wire Wire Line
	4590 1480 4590 1420
$Comp
L power:GND #PWR0105
U 1 1 6148E70D
P 3620 1680
F 0 "#PWR0105" H 3620 1430 50  0001 C CNN
F 1 "GND" H 3625 1507 50  0000 C CNN
F 2 "" H 3620 1680 50  0001 C CNN
F 3 "" H 3620 1680 50  0001 C CNN
	1    3620 1680
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 61491773
P 4320 2660
F 0 "#PWR0106" H 4320 2410 50  0001 C CNN
F 1 "GND" H 4325 2487 50  0000 C CNN
F 2 "" H 4320 2660 50  0001 C CNN
F 3 "" H 4320 2660 50  0001 C CNN
	1    4320 2660
	1    0    0    -1
$EndComp
Wire Wire Line
	5940 6580 5940 6410
$Comp
L power:GND #PWR0107
U 1 1 614C094A
P 950 4440
F 0 "#PWR0107" H 950 4190 50  0001 C CNN
F 1 "GND" H 955 4267 50  0000 C CNN
F 2 "" H 950 4440 50  0001 C CNN
F 3 "" H 950 4440 50  0001 C CNN
	1    950  4440
	1    0    0    -1
$EndComp
NoConn ~ 3890 6110
$Comp
L power:GND #PWR0108
U 1 1 614C4326
P 4040 6660
F 0 "#PWR0108" H 4040 6410 50  0001 C CNN
F 1 "GND" H 4045 6487 50  0000 C CNN
F 2 "" H 4040 6660 50  0001 C CNN
F 3 "" H 4040 6660 50  0001 C CNN
	1    4040 6660
	1    0    0    -1
$EndComp
Wire Wire Line
	4320 2580 4320 2600
Connection ~ 4240 5160
Wire Wire Line
	4240 5160 4240 5560
$Comp
L power:GND #PWR0103
U 1 1 61519EC2
P 4490 5260
F 0 "#PWR0103" H 4490 5010 50  0001 C CNN
F 1 "GND" H 4495 5087 50  0000 C CNN
F 2 "" H 4490 5260 50  0001 C CNN
F 3 "" H 4490 5260 50  0001 C CNN
	1    4490 5260
	1    0    0    -1
$EndComp
Wire Wire Line
	4240 5160 4490 5160
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 615265DA
P 3900 5060
F 0 "#FLG0102" H 3900 5135 50  0001 C CNN
F 1 "PWR_FLAG" H 3900 5233 50  0000 C CNN
F 2 "" H 3900 5060 50  0001 C CNN
F 3 "~" H 3900 5060 50  0001 C CNN
	1    3900 5060
	1    0    0    -1
$EndComp
Wire Wire Line
	3900 5060 3900 5160
Wire Wire Line
	3900 5160 4240 5160
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61558805
P 4770 2670
F 0 "#FLG0103" H 4770 2745 50  0001 C CNN
F 1 "PWR_FLAG" H 4770 2843 50  0000 C CNN
F 2 "" H 4770 2670 50  0001 C CNN
F 3 "~" H 4770 2670 50  0001 C CNN
	1    4770 2670
	-1   0    0    1
$EndComp
Wire Wire Line
	4320 2600 4770 2600
Wire Wire Line
	4770 2600 4770 2670
Connection ~ 4320 2600
Wire Wire Line
	4320 2600 4320 2660
$Comp
L HF-PA-v2-rescue:BS170-dk_Transistors-FETs-MOSFETs-Single-custom Q3
U 1 1 5EC14422
P 6490 6210
F 0 "Q3" H 6598 6263 60  0000 L CNN
F 1 "BS170" H 6598 6157 60  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 6690 6410 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6690 6510 60  0001 L CNN
F 4 "BS170-ND" H 6690 6610 60  0001 L CNN "Digi-Key_PN"
F 5 "BS170" H 6690 6710 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6690 6810 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6690 6910 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/BS170-D.PDF" H 6690 7010 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/BS170/BS170-ND/244280" H 6690 7110 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 500MA TO-92" H 6690 7210 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 6690 7310 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6690 7410 60  0001 L CNN "Status"
	1    6490 6210
	-1   0    0    -1
$EndComp
$Comp
L Device:D_Zener DP1
U 1 1 60EF4BE2
P 5540 6370
F 0 "DP1" V 5510 6140 50  0000 L CNN
F 1 "47v 5W" H 5380 6510 50  0000 L CNN
F 2 "Diode_THT:D_DO-201_P5.08mm_Vertical_AnodeUp" H 5540 6370 50  0001 C CNN
F 3 "~" H 5540 6370 50  0001 C CNN
	1    5540 6370
	0    1    1    0
$EndComp
Wire Wire Line
	4890 5410 5540 5410
Wire Wire Line
	5540 6220 5540 6010
Connection ~ 5540 6010
$Comp
L power:GND #PWR0104
U 1 1 60F099AA
P 5540 6580
F 0 "#PWR0104" H 5540 6330 50  0001 C CNN
F 1 "GND" H 5545 6407 50  0000 C CNN
F 2 "" H 5540 6580 50  0001 C CNN
F 3 "" H 5540 6580 50  0001 C CNN
	1    5540 6580
	1    0    0    -1
$EndComp
Wire Wire Line
	5540 6520 5540 6580
Wire Wire Line
	3890 5860 4890 5860
Wire Wire Line
	4190 4140 6940 4140
$Comp
L Connector_Generic:Conn_01x02 5V1
U 1 1 60F8881F
P 5040 1480
F 0 "5V1" H 4970 1580 50  0000 L CNN
F 1 "Conn_01x02" H 5120 1381 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5040 1480 50  0001 C CNN
F 3 "~" H 5040 1480 50  0001 C CNN
	1    5040 1480
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 60F88825
P 4840 1580
F 0 "#PWR0109" H 4840 1330 50  0001 C CNN
F 1 "GND" H 4845 1407 50  0000 C CNN
F 2 "" H 4840 1580 50  0001 C CNN
F 3 "" H 4840 1580 50  0001 C CNN
	1    4840 1580
	1    0    0    -1
$EndComp
Wire Wire Line
	4590 1480 4840 1480
$Comp
L Connector:Conn_Coaxial OUT1
U 1 1 60FA0B5A
P 1190 6110
F 0 "OUT1" V 1350 5880 50  0000 L CNN
F 1 "Conn_Coaxial" H 1290 6083 50  0001 L CNN
F 2 "Connector_Coaxial:SMA_Samtec_SMA-J-P-X-ST-EM1_EdgeMount" H 1190 6110 50  0001 C CNN
F 3 " ~" H 1190 6110 50  0001 C CNN
	1    1190 6110
	-1   0    0    1
$EndComp
Wire Wire Line
	1390 5910 1390 5860
Wire Wire Line
	1190 5910 1390 5910
$Comp
L power:GND #PWR0110
U 1 1 60F0B422
P 1390 5460
F 0 "#PWR0110" H 1390 5210 50  0001 C CNN
F 1 "GND" H 1395 5287 50  0000 C CNN
F 2 "" H 1390 5460 50  0001 C CNN
F 3 "" H 1390 5460 50  0001 C CNN
	1    1390 5460
	-1   0    0    1
$EndComp
Wire Wire Line
	1390 5460 1390 5610
Connection ~ 1390 5610
$Comp
L Device:R_Small R1
U 1 1 61014614
P 7340 5710
F 0 "R1" V 7144 5710 50  0000 C CNN
F 1 "10k" V 7235 5710 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 7340 5710 50  0001 C CNN
F 3 "~" H 7340 5710 50  0001 C CNN
	1    7340 5710
	0    1    1    0
$EndComp
$Comp
L Device:R_Small R2
U 1 1 61016A4D
P 7780 5710
F 0 "R2" V 7584 5710 50  0000 C CNN
F 1 "10k" V 7675 5710 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 7780 5710 50  0001 C CNN
F 3 "~" H 7780 5710 50  0001 C CNN
	1    7780 5710
	0    1    1    0
$EndComp
Wire Wire Line
	7440 5710 7570 5710
Connection ~ 7570 5710
Wire Wire Line
	7570 5710 7680 5710
$Comp
L power:GND #PWR0111
U 1 1 61037D85
P 8040 6140
F 0 "#PWR0111" H 8040 5890 50  0001 C CNN
F 1 "GND" H 8045 5967 50  0000 C CNN
F 2 "" H 8040 6140 50  0001 C CNN
F 3 "" H 8040 6140 50  0001 C CNN
	1    8040 6140
	1    0    0    -1
$EndComp
$Comp
L Connector_Generic:Conn_01x02 PWM1
U 1 1 61037D8E
P 8240 5710
F 0 "PWM1" H 8350 5580 50  0000 L CNN
F 1 "Conn_01x02" H 8320 5611 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8240 5710 50  0001 C CNN
F 3 "~" H 8240 5710 50  0001 C CNN
	1    8240 5710
	1    0    0    -1
$EndComp
Wire Wire Line
	7880 5710 8040 5710
Wire Wire Line
	7570 5850 7570 5710
$Comp
L Device:C_Small C2
U 1 1 6102216F
P 7570 5950
F 0 "C2" H 7662 5996 50  0000 L CNN
F 1 "10nF" H 7662 5905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 7570 5950 50  0001 C CNN
F 3 "~" H 7570 5950 50  0001 C CNN
	1    7570 5950
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 610455CA
P 7570 6150
F 0 "#PWR0112" H 7570 5900 50  0001 C CNN
F 1 "GND" H 7575 5977 50  0000 C CNN
F 2 "" H 7570 6150 50  0001 C CNN
F 3 "" H 7570 6150 50  0001 C CNN
	1    7570 6150
	1    0    0    -1
$EndComp
Wire Wire Line
	7570 6050 7570 6150
Wire Wire Line
	8040 5810 8040 6140
Text Notes 7250 5370 0    50   ~ 0
Bias Control Via PWM
Wire Wire Line
	6940 5110 6940 5710
Wire Wire Line
	6940 5710 7240 5710
Connection ~ 6940 5710
Wire Wire Line
	6940 5710 6940 6310
$EndSCHEMATC
