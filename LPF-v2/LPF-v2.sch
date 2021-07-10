EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 9000 6000
encoding utf-8
Sheet 1 1
Title "LPF (uSDX SDR TRX Multi Band Module)"
Date "2021-07-11"
Rev "V2.00"
Comp "WB2CBA (Upstream), VU3CER"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L LPF-v2-rescue:CAP-pspice C1
U 1 1 5F070FF0
P 2380 2700
F 0 "C1" H 2558 2746 50  0000 L CNN
F 1 " " H 2558 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 2380 2700 50  0001 C CNN
F 3 "~" H 2380 2700 50  0001 C CNN
	1    2380 2700
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:CAP-pspice C2
U 1 1 5F070FF6
P 3180 2700
F 0 "C2" H 3358 2746 50  0000 L CNN
F 1 " " H 3358 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3180 2700 50  0001 C CNN
F 3 "~" H 3180 2700 50  0001 C CNN
	1    3180 2700
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:CAP-pspice C3
U 1 1 5F070FFC
P 3980 2700
F 0 "C3" H 4158 2746 50  0000 L CNN
F 1 " " H 4158 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3980 2700 50  0001 C CNN
F 3 "~" H 3980 2700 50  0001 C CNN
	1    3980 2700
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:CAP-pspice C4
U 1 1 5F071002
P 4680 2700
F 0 "C4" H 4858 2746 50  0000 L CNN
F 1 " " H 4858 2655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 4680 2700 50  0001 C CNN
F 3 "~" H 4680 2700 50  0001 C CNN
	1    4680 2700
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:L_Core_Ferrite-Device L1
U 1 1 5F071008
P 2780 2450
F 0 "L1" V 3005 2450 50  0000 C CNN
F 1 " " V 2914 2450 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L10.0mm_W5.0mm_P5.08mm" H 2780 2450 50  0001 C CNN
F 3 "~" H 2780 2450 50  0001 C CNN
	1    2780 2450
	0    -1   -1   0   
$EndComp
$Comp
L LPF-v2-rescue:L_Core_Ferrite-Device L2
U 1 1 5F07100E
P 3630 2450
F 0 "L2" V 3855 2450 50  0000 C CNN
F 1 " " V 3764 2450 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L10.0mm_W5.0mm_P5.08mm" H 3630 2450 50  0001 C CNN
F 3 "~" H 3630 2450 50  0001 C CNN
	1    3630 2450
	0    -1   -1   0   
$EndComp
$Comp
L LPF-v2-rescue:L_Core_Ferrite-Device L3
U 1 1 5F071014
P 4330 2450
F 0 "L3" V 4555 2450 50  0000 C CNN
F 1 " " V 4464 2450 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L10.0mm_W5.0mm_P5.08mm" H 4330 2450 50  0001 C CNN
F 3 "~" H 4330 2450 50  0001 C CNN
	1    4330 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4680 2450 4480 2450
Wire Wire Line
	4180 2450 3980 2450
Wire Wire Line
	3980 2450 3780 2450
Connection ~ 3980 2450
Wire Wire Line
	3480 2450 3180 2450
Wire Wire Line
	3180 2450 2930 2450
Connection ~ 3180 2450
Wire Wire Line
	2630 2450 2380 2450
Connection ~ 2380 2450
$Comp
L LPF-v2-rescue:GNDPWR-power #PWR0101
U 1 1 5F071024
P 2380 2950
F 0 "#PWR0101" H 2380 2750 50  0001 C CNN
F 1 "GNDPWR" H 2384 2796 50  0001 C CNN
F 2 "" H 2380 2900 50  0001 C CNN
F 3 "" H 2380 2900 50  0001 C CNN
	1    2380 2950
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:GNDPWR-power #PWR0102
U 1 1 5F07102A
P 3180 2950
F 0 "#PWR0102" H 3180 2750 50  0001 C CNN
F 1 "GNDPWR" H 3184 2796 50  0001 C CNN
F 2 "" H 3180 2900 50  0001 C CNN
F 3 "" H 3180 2900 50  0001 C CNN
	1    3180 2950
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:GNDPWR-power #PWR0103
U 1 1 5F071030
P 3980 2950
F 0 "#PWR0103" H 3980 2750 50  0001 C CNN
F 1 "GNDPWR" H 3984 2796 50  0001 C CNN
F 2 "" H 3980 2900 50  0001 C CNN
F 3 "" H 3980 2900 50  0001 C CNN
	1    3980 2950
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:GNDPWR-power #PWR0104
U 1 1 5F071036
P 4680 2950
F 0 "#PWR0104" H 4680 2750 50  0001 C CNN
F 1 "GNDPWR" H 4684 2796 50  0001 C CNN
F 2 "" H 4680 2900 50  0001 C CNN
F 3 "" H 4680 2900 50  0001 C CNN
	1    4680 2950
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:0022232041-dk_Rectangular-Connectors-Headers-Male-Pins-Band_MODULE_V1_00-rescue J2
U 1 1 5F065B8D
P 6980 2450
F 0 "J2" V 6630 2450 50  0000 R CNN
F 1 "input" V 6730 2500 50  0000 R CNN
F 2 "digikey-footprints:PinHeader_1x4_P2.54mm_Drill1.02mm" H 7180 2650 60  0001 L CNN
F 3 "https://www.molex.com/pdm_docs/sd/022232041_sd.pdf" H 7180 2750 60  0001 L CNN
F 4 "WM4202-ND" H 7180 2850 60  0001 L CNN "Digi-Key_PN"
F 5 "0022232041" H 7180 2950 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 7180 3050 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 7180 3150 60  0001 L CNN "Family"
F 8 "https://www.molex.com/pdm_docs/sd/022232041_sd.pdf" H 7180 3250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/molex/0022232041/WM4202-ND/26671" H 7180 3350 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.54MM" H 7180 3450 60  0001 L CNN "Description"
F 11 "Molex" H 7180 3550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7180 3650 60  0001 L CNN "Status"
	1    6980 2450
	0    -1   1    0   
$EndComp
$Comp
L LPF-v2-rescue:0022232041-dk_Rectangular-Connectors-Headers-Male-Pins-Band_MODULE_V1_00-rescue J1
U 1 1 5F067370
P 1930 2450
F 0 "J1" V 1705 2458 50  0000 C CNN
F 1 "Antenna" V 1796 2458 50  0000 C CNN
F 2 "digikey-footprints:PinHeader_1x4_P2.54mm_Drill1.02mm" H 2130 2650 60  0001 L CNN
F 3 "https://www.molex.com/pdm_docs/sd/022232041_sd.pdf" H 2130 2750 60  0001 L CNN
F 4 "WM4202-ND" H 2130 2850 60  0001 L CNN "Digi-Key_PN"
F 5 "0022232041" H 2130 2950 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 2130 3050 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 2130 3150 60  0001 L CNN "Family"
F 8 "https://www.molex.com/pdm_docs/sd/022232041_sd.pdf" H 2130 3250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/molex/0022232041/WM4202-ND/26671" H 2130 3350 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 4POS 2.54MM" H 2130 3450 60  0001 L CNN "Description"
F 11 "Molex" H 2130 3550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2130 3650 60  0001 L CNN "Status"
	1    1930 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	2030 2450 2380 2450
Wire Wire Line
	2030 2550 2030 2450
Connection ~ 2030 2450
Wire Wire Line
	2030 2650 2030 2750
$Comp
L LPF-v2-rescue:GNDPWR-power #PWR0105
U 1 1 5F06B5D1
P 2030 2950
F 0 "#PWR0105" H 2030 2750 50  0001 C CNN
F 1 "GNDPWR" H 2034 2796 50  0001 C CNN
F 2 "" H 2030 2900 50  0001 C CNN
F 3 "" H 2030 2900 50  0001 C CNN
	1    2030 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2030 2750 2030 2950
Connection ~ 2030 2750
$Comp
L LPF-v2-rescue:GNDPWR-power #PWR0106
U 1 1 5F071044
P 6880 2950
F 0 "#PWR0106" H 6880 2750 50  0001 C CNN
F 1 "GNDPWR" H 6884 2796 50  0001 C CNN
F 2 "" H 6880 2900 50  0001 C CNN
F 3 "" H 6880 2900 50  0001 C CNN
	1    6880 2950
	1    0    0    -1  
$EndComp
$Comp
L LPF-v2-rescue:CAP-pspice C6
U 1 1 5F0EF3C9
P 5230 2450
F 0 "C6" V 4915 2450 50  0000 C CNN
F 1 "100nF" V 5006 2450 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5230 2450 50  0001 C CNN
F 3 "~" H 5230 2450 50  0001 C CNN
	1    5230 2450
	0    1    1    0   
$EndComp
$Comp
L LPF-v2-rescue:CAP-pspice C5
U 1 1 5F0EF3CF
P 5480 2700
F 0 "C5" H 5302 2654 50  0000 R CNN
F 1 " " H 5302 2745 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 5480 2700 50  0001 C CNN
F 3 "~" H 5480 2700 50  0001 C CNN
	1    5480 2700
	-1   0    0    1   
$EndComp
$Comp
L LPF-v2-rescue:GNDPWR-power #PWR0107
U 1 1 5F0EF3D6
P 5480 3150
F 0 "#PWR0107" H 5480 2950 50  0001 C CNN
F 1 "GNDPWR" H 5484 2996 50  0000 C CNN
F 2 "" H 5480 3100 50  0001 C CNN
F 3 "" H 5480 3100 50  0001 C CNN
	1    5480 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5480 3150 5480 2950
Connection ~ 5480 2450
$Comp
L LPF-v2-rescue:L_Core_Ferrite-Device L4
U 1 1 5F0EF3F7
P 5480 1950
F 0 "L4" H 5568 1996 50  0000 L CNN
F 1 "T37-2 10T 25 SWG" H 5568 1905 50  0000 L CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L10.0mm_W5.0mm_P5.08mm" H 5480 1950 50  0001 C CNN
F 3 "~" H 5480 1950 50  0001 C CNN
	1    5480 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5480 2100 5480 2450
Wire Wire Line
	4680 2450 4980 2450
Connection ~ 4680 2450
Wire Wire Line
	5480 1800 5480 1700
Wire Wire Line
	5480 1700 6530 1700
Wire Wire Line
	6530 1700 6530 2450
Wire Wire Line
	6530 2450 6880 2450
Wire Wire Line
	6430 2450 6430 2550
Wire Wire Line
	6430 2550 6880 2550
Wire Wire Line
	5480 2450 6430 2450
Wire Wire Line
	4980 2450 4980 3450
Wire Wire Line
	4980 3450 6430 3450
Wire Wire Line
	6430 3450 6430 2650
Wire Wire Line
	6430 2650 6880 2650
Connection ~ 4980 2450
Wire Wire Line
	6880 2750 6880 2950
Text Label 7130 2450 0    50   ~ 0
+12V
Text Label 7130 2550 0    50   ~ 0
BS170_Drain
Text Label 7130 2650 0    50   ~ 0
BS170_RX
$EndSCHEMATC
