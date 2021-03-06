EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L RF_Module:ESP32-WROOM-32D U3
U 1 1 600D82D7
P 11300 3250
F 0 "U3" H 11400 4700 50  0000 C CNN
F 1 "ESP32-WROOM-32D" H 11750 4600 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 11300 1750 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 11000 3300 50  0001 C CNN
	1    11300 3250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 600F0E59
P 2500 3100
F 0 "J3" H 2450 3200 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 2400 2850 50  0000 L CNN
F 2 "Connector_Phoenix_GMSTB:PhoenixContact_GMSTBVA_2,5_2-G_1x02_P7.50mm_Vertical" H 2500 3100 50  0001 C CNN
F 3 "~" H 2500 3100 50  0001 C CNN
	1    2500 3100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6010077B
P 5250 4350
F 0 "R3" H 5320 4396 50  0000 L CNN
F 1 "75k" H 5320 4305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 4350 50  0001 C CNN
F 3 "~" H 5250 4350 50  0001 C CNN
	1    5250 4350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60100781
P 5250 4900
F 0 "R4" H 5320 4946 50  0000 L CNN
F 1 "5k (probar 5k1)" H 5320 4855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5180 4900 50  0001 C CNN
F 3 "~" H 5250 4900 50  0001 C CNN
	1    5250 4900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 4400 4800 4100
Wire Wire Line
	4800 4100 5250 4100
Wire Wire Line
	5250 4100 5250 4200
Wire Wire Line
	4800 4800 4800 5150
Wire Wire Line
	4800 5150 5250 5150
Wire Wire Line
	5250 5150 5250 5050
$Comp
L power:GND #PWR013
U 1 1 601073CE
P 5000 3000
F 0 "#PWR013" H 5000 2750 50  0001 C CNN
F 1 "GND" H 5005 2827 50  0000 C CNN
F 2 "" H 5000 3000 50  0001 C CNN
F 3 "" H 5000 3000 50  0001 C CNN
	1    5000 3000
	0    -1   1    0   
$EndComp
$Comp
L power:+3.3V #PWR018
U 1 1 601091E0
P 11300 1600
F 0 "#PWR018" H 11300 1450 50  0001 C CNN
F 1 "+3.3V" H 11315 1773 50  0000 C CNN
F 2 "" H 11300 1600 50  0001 C CNN
F 3 "" H 11300 1600 50  0001 C CNN
	1    11300 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11300 1600 11300 1850
$Comp
L power:GND #PWR019
U 1 1 6010A886
P 11300 4850
F 0 "#PWR019" H 11300 4600 50  0001 C CNN
F 1 "GND" H 11305 4677 50  0000 C CNN
F 2 "" H 11300 4850 50  0001 C CNN
F 3 "" H 11300 4850 50  0001 C CNN
	1    11300 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	11300 4650 11300 4850
$Comp
L Device:C C2
U 1 1 6010CC48
P 1650 10300
F 0 "C2" H 1765 10346 50  0000 L CNN
F 1 "1uF/10V(10%)" V 1500 10050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1688 10150 50  0001 C CNN
F 3 "~" H 1650 10300 50  0001 C CNN
	1    1650 10300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6010D4F0
P 1150 10300
F 0 "C1" H 1265 10346 50  0000 L CNN
F 1 "100uF/6.3V(20%)" V 1000 9950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1188 10150 50  0001 C CNN
F 3 "~" H 1150 10300 50  0001 C CNN
	1    1150 10300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 60110FFF
P 1150 9800
F 0 "#PWR01" H 1150 9650 50  0001 C CNN
F 1 "+3.3V" H 1165 9973 50  0000 C CNN
F 2 "" H 1150 9800 50  0001 C CNN
F 3 "" H 1150 9800 50  0001 C CNN
	1    1150 9800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60111750
P 1150 10750
F 0 "#PWR02" H 1150 10500 50  0001 C CNN
F 1 "GND" H 1155 10577 50  0000 C CNN
F 2 "" H 1150 10750 50  0001 C CNN
F 3 "" H 1150 10750 50  0001 C CNN
	1    1150 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 10150 1150 9900
Wire Wire Line
	1150 10750 1150 10650
Wire Wire Line
	1650 10150 1650 9900
Wire Wire Line
	1650 9900 1150 9900
Connection ~ 1150 9900
Wire Wire Line
	1150 9900 1150 9800
Wire Wire Line
	1650 10450 1650 10650
Wire Wire Line
	1650 10650 1150 10650
Connection ~ 1150 10650
Wire Wire Line
	1150 10650 1150 10450
Wire Wire Line
	10700 2050 10250 2050
$Comp
L Device:R R5
U 1 1 60129F05
P 9900 2250
F 0 "R5" V 9693 2250 50  0000 C CNN
F 1 "5K (probar 5K1)" V 9784 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9830 2250 50  0001 C CNN
F 3 "~" H 9900 2250 50  0001 C CNN
	1    9900 2250
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6012C075
P 9650 2350
F 0 "#PWR017" H 9650 2100 50  0001 C CNN
F 1 "GND" H 9655 2177 50  0000 C CNN
F 2 "" H 9650 2350 50  0001 C CNN
F 3 "" H 9650 2350 50  0001 C CNN
	1    9650 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 2250 9650 2350
Wire Wire Line
	10700 2250 10050 2250
Wire Wire Line
	9750 2250 9650 2250
$Comp
L Device:C C4
U 1 1 6028467E
P 2950 10250
F 0 "C4" H 3065 10296 50  0000 L CNN
F 1 "0.1uF/25V(10%)" V 2800 9950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2988 10100 50  0001 C CNN
F 3 "~" H 2950 10250 50  0001 C CNN
	1    2950 10250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60284684
P 2450 10250
F 0 "C3" H 2565 10296 50  0000 L CNN
F 1 "10uF/25V(10%)" V 2300 9950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2488 10100 50  0001 C CNN
F 3 "~" H 2450 10250 50  0001 C CNN
	1    2450 10250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 6028468A
P 2450 9750
F 0 "#PWR05" H 2450 9600 50  0001 C CNN
F 1 "+3.3V" H 2465 9923 50  0000 C CNN
F 2 "" H 2450 9750 50  0001 C CNN
F 3 "" H 2450 9750 50  0001 C CNN
	1    2450 9750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60284690
P 2450 10700
F 0 "#PWR06" H 2450 10450 50  0001 C CNN
F 1 "GND" H 2455 10527 50  0000 C CNN
F 2 "" H 2450 10700 50  0001 C CNN
F 3 "" H 2450 10700 50  0001 C CNN
	1    2450 10700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 10100 2450 9850
Wire Wire Line
	2450 10700 2450 10600
Wire Wire Line
	2950 10100 2950 9850
Wire Wire Line
	2950 9850 2450 9850
Connection ~ 2450 9850
Wire Wire Line
	2450 9850 2450 9750
Wire Wire Line
	2950 10400 2950 10600
Wire Wire Line
	2950 10600 2450 10600
Connection ~ 2450 10600
Wire Wire Line
	2450 10600 2450 10400
Wire Wire Line
	10700 2150 10250 2150
Wire Wire Line
	10700 2350 10250 2350
Text Label 10250 2150 0    50   ~ 0
RXD
Text Label 10250 2350 0    50   ~ 0
TXD
$Comp
L Device:Varistor RV1
U 1 1 600FD643
P 3300 3300
F 0 "RV1" H 3403 3346 50  0000 L CNN
F 1 "14D471" H 3403 3255 50  0000 L CNN
F 2 "Varistor:RV_Disc_D12mm_W3.9mm_P7.5mm" V 3230 3300 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/70/db/var/SIOV_Leaded_AdvanceD.pdf" H 3300 3300 50  0001 C CNN
	1    3300 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2700 3200 2750 3200
Wire Wire Line
	2750 3200 2750 3550
Wire Wire Line
	3300 3450 3300 3550
Wire Wire Line
	3300 3550 3800 3550
Wire Wire Line
	3800 3550 3800 3300
Wire Wire Line
	3800 3300 3900 3300
$Comp
L Device:Fuse F1
U 1 1 601632E6
P 2950 3100
F 0 "F1" V 2753 3100 50  0000 C CNN
F 1 "Fuse" V 2844 3100 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Schurter_0031_8201_Horizontal_Open" V 2880 3100 50  0001 C CNN
F 3 "~" H 2950 3100 50  0001 C CNN
	1    2950 3100
	0    -1   1    0   
$EndComp
Connection ~ 3300 3550
Wire Wire Line
	2800 3100 2700 3100
Wire Wire Line
	3300 3150 3300 3100
Connection ~ 3300 3100
Wire Wire Line
	3300 3100 3100 3100
Wire Wire Line
	2750 3550 3300 3550
Connection ~ 5250 5150
$Comp
L Analog_ADC:ADS1115IDGS U2
U 1 1 6047AB2E
P 7700 2650
F 0 "U2" H 7800 3250 50  0000 C CNN
F 1 "ADS1115IDGS" H 8000 3150 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 7700 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 7650 1750 50  0001 C CNN
	1    7700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 60489C78
P 7700 1950
F 0 "#PWR015" H 7700 1800 50  0001 C CNN
F 1 "+3.3V" H 7715 2123 50  0000 C CNN
F 2 "" H 7700 1950 50  0001 C CNN
F 3 "" H 7700 1950 50  0001 C CNN
	1    7700 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1950 7700 2150
$Comp
L power:GND #PWR016
U 1 1 6048CB65
P 7700 3250
F 0 "#PWR016" H 7700 3000 50  0001 C CNN
F 1 "GND" H 7705 3077 50  0000 C CNN
F 2 "" H 7700 3250 50  0001 C CNN
F 3 "" H 7700 3250 50  0001 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3050 7700 3150
Wire Wire Line
	5250 4500 5250 4650
Wire Wire Line
	5250 4650 5800 4650
Wire Wire Line
	5800 4650 5800 2750
Wire Wire Line
	5800 2750 7300 2750
Connection ~ 5250 4650
Wire Wire Line
	5250 4650 5250 4750
Wire Wire Line
	7300 2850 5950 2850
Wire Wire Line
	5950 2850 5950 5150
Wire Wire Line
	5250 5150 5950 5150
Wire Wire Line
	2800 1700 5950 1700
Wire Wire Line
	5950 1700 5950 2550
Wire Wire Line
	5950 2550 7300 2550
Wire Wire Line
	7300 2650 5800 2650
Wire Wire Line
	5800 2650 5800 1900
Wire Wire Line
	5800 1900 2800 1900
$Comp
L MyComponents:Jack_CTSensor J2
U 1 1 604B5358
P 2350 1950
F 0 "J2" H 2533 2725 50  0000 C CNN
F 1 "Jack_CTSensor" H 2533 2634 50  0000 C CNN
F 2 "Connector_Audio:Jack_3.5mm_PJ311_Horizontal" H 3550 2050 50  0001 C CNN
F 3 "" H 3550 2050 50  0001 C CNN
	1    2350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2650 8700 2650
Wire Wire Line
	8100 2750 8700 2750
Text Label 8700 2650 2    50   ~ 0
I2C_SCL
Text Label 8700 2750 2    50   ~ 0
I2C_SDA
$Comp
L Device:R R8
U 1 1 60450F61
P 9100 3450
F 0 "R8" H 9170 3496 50  0000 L CNN
F 1 "10K" H 9170 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9030 3450 50  0001 C CNN
F 3 "~" H 9100 3450 50  0001 C CNN
	1    9100 3450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6045668A
P 9500 3450
F 0 "R9" H 9570 3496 50  0000 L CNN
F 1 "10K" H 9570 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 9430 3450 50  0001 C CNN
F 3 "~" H 9500 3450 50  0001 C CNN
	1    9500 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 3600 9500 3850
Wire Wire Line
	9500 3300 9500 3050
Wire Wire Line
	9500 3050 9300 3050
Wire Wire Line
	9100 3050 9100 3300
Wire Wire Line
	9300 3050 9300 2900
Connection ~ 9300 3050
Wire Wire Line
	9300 3050 9100 3050
$Comp
L power:+3.3V #PWR021
U 1 1 60472BE2
P 9300 2900
F 0 "#PWR021" H 9300 2750 50  0001 C CNN
F 1 "+3.3V" H 9315 3073 50  0000 C CNN
F 2 "" H 9300 2900 50  0001 C CNN
F 3 "" H 9300 2900 50  0001 C CNN
	1    9300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2850 8200 2850
Wire Wire Line
	8200 2850 8200 3150
Wire Wire Line
	8200 3150 7700 3150
Connection ~ 7700 3150
Wire Wire Line
	7700 3150 7700 3250
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 6047B7E0
P 14800 4900
F 0 "J4" H 14750 5150 50  0000 L CNN
F 1 "Conn_01x04" H 14650 4600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 14800 4900 50  0001 C CNN
F 3 "~" H 14800 4900 50  0001 C CNN
	1    14800 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 604891FF
P 14400 5300
F 0 "#PWR024" H 14400 5050 50  0001 C CNN
F 1 "GND" H 14405 5127 50  0000 C CNN
F 2 "" H 14400 5300 50  0001 C CNN
F 3 "" H 14400 5300 50  0001 C CNN
	1    14400 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 604894E4
P 14200 4550
F 0 "#PWR022" H 14200 4400 50  0001 C CNN
F 1 "+3.3V" H 14215 4723 50  0000 C CNN
F 2 "" H 14200 4550 50  0001 C CNN
F 3 "" H 14200 4550 50  0001 C CNN
	1    14200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	14600 4900 14200 4900
Wire Wire Line
	14200 4900 14200 4550
Wire Wire Line
	14600 4800 14400 4800
Wire Wire Line
	14400 4800 14400 5300
Wire Wire Line
	14600 5000 13700 5000
Wire Wire Line
	14600 5100 13700 5100
Text Label 13700 5000 0    50   ~ 0
I2C_SCL
Text Label 13700 5100 0    50   ~ 0
I2C_SDA
Text Notes 15000 5000 0    79   ~ 16
DISPLAY
Text Notes 1800 3250 0    79   ~ 16
INPUT \n230VAC
Text Notes 1400 1700 0    79   ~ 16
CT SENSOR
$Comp
L Interface_USB:FT232RL U1
U 1 1 605075A5
P 5750 7450
F 0 "U1" H 5750 8631 50  0000 C CNN
F 1 "FT232RL" H 5750 8540 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 6850 6550 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 5750 7450 50  0001 C CNN
	1    5750 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7400 4400 7150
Wire Wire Line
	4400 7150 4950 7150
Wire Wire Line
	4300 7600 4300 7050
Wire Wire Line
	4300 7050 4950 7050
$Comp
L power:GND #PWR04
U 1 1 60516C57
P 2000 8650
F 0 "#PWR04" H 2000 8400 50  0001 C CNN
F 1 "GND" H 2005 8477 50  0000 C CNN
F 2 "" H 2000 8650 50  0001 C CNN
F 3 "" H 2000 8650 50  0001 C CNN
	1    2000 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 605177CB
P 1700 8650
F 0 "#PWR03" H 1700 8400 50  0001 C CNN
F 1 "GND" H 1705 8477 50  0000 C CNN
F 2 "" H 1700 8650 50  0001 C CNN
F 3 "" H 1700 8650 50  0001 C CNN
	1    1700 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60518A00
P 5750 8650
F 0 "#PWR014" H 5750 8400 50  0001 C CNN
F 1 "GND" H 5755 8477 50  0000 C CNN
F 2 "" H 5750 8650 50  0001 C CNN
F 3 "" H 5750 8650 50  0001 C CNN
	1    5750 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 8400 1700 8650
Wire Wire Line
	2000 8400 2000 8650
Wire Wire Line
	5550 8450 5550 8550
Wire Wire Line
	5550 8550 5750 8550
Wire Wire Line
	5950 8550 5950 8450
Wire Wire Line
	5850 8450 5850 8550
Connection ~ 5850 8550
Wire Wire Line
	5850 8550 5950 8550
Wire Wire Line
	5750 8450 5750 8550
Connection ~ 5750 8550
Wire Wire Line
	5750 8550 5850 8550
Wire Wire Line
	5750 8650 5750 8550
Wire Wire Line
	4950 8150 4800 8150
Wire Wire Line
	4800 8150 4800 8550
Wire Wire Line
	4800 8550 5550 8550
Connection ~ 5550 8550
$Comp
L Device:C C6
U 1 1 6053B858
P 4000 8150
F 0 "C6" H 4115 8196 50  0000 L CNN
F 1 "0.1uF/25V(10%)" V 3850 7850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4038 8000 50  0001 C CNN
F 3 "~" H 4000 8150 50  0001 C CNN
	1    4000 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 6450 5650 6300
Wire Wire Line
	5650 6300 4000 6300
Wire Wire Line
	4000 6300 4000 6750
Wire Wire Line
	4950 6750 4000 6750
Connection ~ 4000 6750
Wire Wire Line
	4000 6750 4000 7450
Wire Wire Line
	5850 6450 5850 6150
Wire Wire Line
	5850 6150 3850 6150
Wire Wire Line
	3850 6150 3850 6900
$Comp
L power:GND #PWR011
U 1 1 6054EA16
P 4000 8650
F 0 "#PWR011" H 4000 8400 50  0001 C CNN
F 1 "GND" H 4005 8477 50  0000 C CNN
F 2 "" H 4000 8650 50  0001 C CNN
F 3 "" H 4000 8650 50  0001 C CNN
	1    4000 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 8300 4000 8650
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 60559684
P 2000 7500
F 0 "J1" H 2107 8367 50  0000 C CNN
F 1 "USB_C_Receptacle_USB2.0" H 2107 8276 50  0000 C CNN
F 2 "Connector_USB:USB_C_Receptacle_HRO_TYPE-C-31-M-12" H 2150 7500 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 2150 7500 50  0001 C CNN
	1    2000 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 60581734
P 2950 8000
F 0 "R1" H 3020 8046 50  0000 L CNN
F 1 "5K1" H 3020 7955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 8000 50  0001 C CNN
F 3 "~" H 2950 8000 50  0001 C CNN
	1    2950 8000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60586E52
P 3300 8000
F 0 "R2" H 3370 8046 50  0000 L CNN
F 1 "5K1" H 3370 7955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3230 8000 50  0001 C CNN
F 3 "~" H 3300 8000 50  0001 C CNN
	1    3300 8000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2600 6900 3850 6900
Wire Wire Line
	2600 7400 2700 7400
Wire Wire Line
	2600 7500 2700 7500
Wire Wire Line
	2700 7500 2700 7400
Connection ~ 2700 7400
Wire Wire Line
	2700 7400 4400 7400
Wire Wire Line
	2600 7600 2700 7600
Wire Wire Line
	2600 7700 2700 7700
Wire Wire Line
	2700 7700 2700 7600
Connection ~ 2700 7600
Wire Wire Line
	2700 7600 4300 7600
Wire Wire Line
	2600 7200 2950 7200
Wire Wire Line
	2950 7200 2950 7850
Wire Wire Line
	2600 7100 3300 7100
Wire Wire Line
	3300 7100 3300 7850
$Comp
L power:GND #PWR07
U 1 1 605BE9A6
P 2950 8650
F 0 "#PWR07" H 2950 8400 50  0001 C CNN
F 1 "GND" H 2955 8477 50  0000 C CNN
F 2 "" H 2950 8650 50  0001 C CNN
F 3 "" H 2950 8650 50  0001 C CNN
	1    2950 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 605C491E
P 3300 8650
F 0 "#PWR08" H 3300 8400 50  0001 C CNN
F 1 "GND" H 3305 8477 50  0000 C CNN
F 2 "" H 3300 8650 50  0001 C CNN
F 3 "" H 3300 8650 50  0001 C CNN
	1    3300 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 8650 2950 8150
Wire Wire Line
	3300 8650 3300 8150
$Comp
L Transistor_FET:2N7002 Q1
U 1 1 605D742A
P 9950 6850
F 0 "Q1" H 10154 6896 50  0000 L CNN
F 1 "2N7002" H 10154 6805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10150 6775 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 9950 6850 50  0001 L CNN
	1    9950 6850
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002 Q2
U 1 1 605DD911
P 9950 8300
F 0 "Q2" H 10154 8346 50  0000 L CNN
F 1 "2N7002" H 10154 8255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 10150 8225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7002.pdf" H 9950 8300 50  0001 L CNN
	1    9950 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6950 7000 6950
Wire Wire Line
	6550 7150 7000 7150
Text Label 7000 6950 2    50   ~ 0
RTS
Text Label 7000 7150 2    50   ~ 0
DTR
Wire Wire Line
	9750 6850 9200 6850
Wire Wire Line
	9750 8300 9500 8300
Text Label 8700 6850 0    50   ~ 0
DTR
Text Label 8700 8300 0    50   ~ 0
RTS
Wire Wire Line
	10050 7050 10050 7200
Wire Wire Line
	10050 7200 9500 7200
Wire Wire Line
	9500 7200 9500 8300
Connection ~ 9500 8300
Wire Wire Line
	9500 8300 8700 8300
Wire Wire Line
	9200 6850 9200 8750
Wire Wire Line
	9200 8750 10050 8750
Wire Wire Line
	10050 8750 10050 8500
Connection ~ 9200 6850
Wire Wire Line
	9200 6850 8700 6850
Wire Wire Line
	10050 6650 10050 6450
Wire Wire Line
	10050 6450 10600 6450
Wire Wire Line
	10050 8100 10050 7900
Wire Wire Line
	10050 7900 10550 7900
Text Label 10600 6450 2    50   ~ 0
EN
Text Label 10550 7900 2    50   ~ 0
IO0
Wire Wire Line
	11900 2050 12450 2050
Text Label 12450 2050 2    50   ~ 0
EN
Text Label 10250 2050 0    50   ~ 0
IO0
Wire Wire Line
	4950 7450 4000 7450
Connection ~ 4000 7450
Wire Wire Line
	4000 7450 4000 8000
$Comp
L Device:R R7
U 1 1 6066E590
P 12850 7000
F 0 "R7" H 12920 7046 50  0000 L CNN
F 1 "10K" H 12920 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12780 7000 50  0001 C CNN
F 3 "~" H 12850 7000 50  0001 C CNN
	1    12850 7000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 606751E2
P 12450 7000
F 0 "R6" H 12520 7046 50  0000 L CNN
F 1 "10K" H 12520 6955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12380 7000 50  0001 C CNN
F 3 "~" H 12450 7000 50  0001 C CNN
	1    12450 7000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	12850 7150 12850 7500
Wire Wire Line
	12850 7500 13350 7500
Wire Wire Line
	12450 7150 12450 8300
Wire Wire Line
	12450 8300 13350 8300
$Comp
L power:+3.3V #PWR020
U 1 1 6068A66D
P 12650 6550
F 0 "#PWR020" H 12650 6400 50  0001 C CNN
F 1 "+3.3V" H 12665 6723 50  0000 C CNN
F 2 "" H 12650 6550 50  0001 C CNN
F 3 "" H 12650 6550 50  0001 C CNN
	1    12650 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 6068B739
P 14300 8500
F 0 "#PWR023" H 14300 8250 50  0001 C CNN
F 1 "GND" H 14305 8327 50  0000 C CNN
F 2 "" H 14300 8500 50  0001 C CNN
F 3 "" H 14300 8500 50  0001 C CNN
	1    14300 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	14300 8500 14300 8300
Wire Wire Line
	14300 7500 13750 7500
Wire Wire Line
	13750 8300 14300 8300
Connection ~ 14300 8300
Wire Wire Line
	14300 8300 14300 7500
Wire Wire Line
	12450 6850 12450 6700
Wire Wire Line
	12450 6700 12650 6700
Wire Wire Line
	12850 6700 12850 6850
Wire Wire Line
	12650 6550 12650 6700
Connection ~ 12650 6700
Wire Wire Line
	12650 6700 12850 6700
Text Label 13100 7500 0    50   ~ 0
EN
Text Label 13100 8300 0    50   ~ 0
IO0
Wire Wire Line
	4500 4400 4800 4400
Wire Wire Line
	4500 4800 4800 4800
$Comp
L Converter_ACDC:HS-40018 PS1
U 1 1 6049C9D8
P 4300 3200
F 0 "PS1" H 4300 3525 50  0000 C CNN
F 1 "MYRRA 47121" H 4300 3434 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_Hahn_HS-400xx_THT" H 4300 2900 50  0001 C CNN
F 3 "" H 4300 2800 50  0001 C CNN
	1    4300 3200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 60520E6B
P 13550 7500
F 0 "SW1" H 13550 7785 50  0000 C CNN
F 1 "SW_Push" H 13550 7694 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 13550 7700 50  0001 C CNN
F 3 "~" H 13550 7700 50  0001 C CNN
	1    13550 7500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 60521356
P 13550 8300
F 0 "SW2" H 13550 8585 50  0000 C CNN
F 1 "SW_Push" H 13550 8494 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_CK_KMR2" H 13550 8500 50  0001 C CNN
F 3 "~" H 13550 8500 50  0001 C CNN
	1    13550 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3100 3550 3100
Wire Wire Line
	3300 4400 3300 3550
Wire Wire Line
	3300 4400 4100 4400
Wire Wire Line
	4100 4800 3550 4800
Wire Wire Line
	3550 4800 3550 3100
Connection ~ 3550 3100
Wire Wire Line
	3550 3100 3900 3100
$Comp
L Device:C C5
U 1 1 60333DFC
P 3400 10250
F 0 "C5" H 3515 10296 50  0000 L CNN
F 1 "10uF/25V(10%)" V 3250 9950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3438 10100 50  0001 C CNN
F 3 "~" H 3400 10250 50  0001 C CNN
	1    3400 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 10100 3400 9850
Wire Wire Line
	3400 9850 2950 9850
Connection ~ 2950 9850
Wire Wire Line
	3400 10400 3400 10600
Wire Wire Line
	3400 10600 2950 10600
Connection ~ 2950 10600
$Comp
L Transformer:TEZ1.5-D-1 TR1
U 1 1 6046B67B
P 4300 4600
F 0 "TR1" H 4300 4150 50  0000 C CNN
F 1 "MYRRA 44049" H 4300 4250 50  0000 C CNN
F 2 "Converter_ACDC:Converter_ACDC_Hahn_HS-400xx_THT" H 4300 4250 50  0001 C CIN
F 3 "http://www.breve.pl/pdf/ANG/TEZ_ang.pdf" H 4300 4600 50  0001 C CNN
	1    4300 4600
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 6051B9BB
P 7250 6150
F 0 "R10" V 7043 6150 50  0000 C CNN
F 1 "1K" V 7134 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7180 6150 50  0001 C CNN
F 3 "~" H 7250 6150 50  0001 C CNN
	1    7250 6150
	1    0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 6052B685
P 7550 6150
F 0 "R11" V 7343 6150 50  0000 C CNN
F 1 "1K" V 7434 6150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7480 6150 50  0001 C CNN
F 3 "~" H 7550 6150 50  0001 C CNN
	1    7550 6150
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 6750 7250 6750
Wire Wire Line
	7250 6750 7250 6300
Wire Wire Line
	6550 6850 7550 6850
Wire Wire Line
	7550 6850 7550 6300
Wire Wire Line
	7250 6000 7250 5600
Wire Wire Line
	7250 5600 8000 5600
Wire Wire Line
	7550 6000 7550 5750
Wire Wire Line
	7550 5750 8000 5750
Text Label 8000 5600 2    50   ~ 0
TXD
Text Label 8000 5750 2    50   ~ 0
RXD
Wire Wire Line
	10700 3550 10100 3550
Wire Wire Line
	10700 3450 10000 3450
Wire Wire Line
	10000 3450 10000 3850
Wire Wire Line
	10000 3850 9500 3850
Wire Wire Line
	10100 3950 9100 3950
Wire Wire Line
	9100 3600 9100 3950
Wire Wire Line
	10100 3550 10100 3950
Wire Wire Line
	9100 3950 8700 3950
Connection ~ 9100 3950
Wire Wire Line
	9500 3850 8700 3850
Connection ~ 9500 3850
Text Label 8700 3850 0    50   ~ 0
I2C_SDA
Text Label 8700 3950 0    50   ~ 0
I2C_SCL
Wire Wire Line
	4950 3100 4950 3000
Wire Wire Line
	4950 3000 5000 3000
Wire Wire Line
	4700 3100 4950 3100
Wire Wire Line
	4700 3300 5050 3300
$Comp
L power:+3.3V #PWR012
U 1 1 60106E14
P 5050 3300
F 0 "#PWR012" H 5050 3150 50  0001 C CNN
F 1 "+3.3V" H 5065 3473 50  0000 C CNN
F 2 "" H 5050 3300 50  0001 C CNN
F 3 "" H 5050 3300 50  0001 C CNN
	1    5050 3300
	1    0    0    1   
$EndComp
$EndSCHEMATC
