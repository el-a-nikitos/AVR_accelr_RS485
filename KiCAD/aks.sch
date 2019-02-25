EESchema Schematic File Version 4
LIBS:aks-cache
EELAYER 26 0
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
L MOTOR:ATmega8A-AU DD2
U 1 1 5B69DF51
P 9625 3250
F 0 "DD2" H 11225 3550 60  0000 C CNN
F 1 "ATmega8" H 10475 1450 60  0000 C CNN
F 2 "MOTOR_IMPORT_OTK:ATMEGA-8-161AU" H 10275 2600 60  0001 C CNN
F 3 "" H 10275 2600 60  0001 C CNN
	1    9625 3250
	1    0    0    -1  
$EndComp
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS1
U 1 1 5B69E05B
P 1525 6500
F 0 "XS1" H 1525 6850 60  0000 C CNN
F 1 "VCC" H 1575 6150 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 1525 6500 60  0001 C CNN
F 3 "" H 1525 6500 60  0001 C CNN
	1    1525 6500
	1    0    0    -1  
$EndComp
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS2
U 1 1 5B69E3E1
P 1525 7000
F 0 "XS2" H 1525 7350 60  0000 C CNN
F 1 "GND" H 1575 6650 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 1525 7000 60  0001 C CNN
F 3 "" H 1525 7000 60  0001 C CNN
	1    1525 7000
	1    0    0    -1  
$EndComp
Text GLabel 9525 3450 0    60   Input ~ 0
GND
Text GLabel 9525 3650 0    60   Input ~ 0
GND
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS3
U 1 1 5B69E5E2
P 4000 4650
F 0 "XS3" H 4000 5000 60  0000 C CNN
F 1 "MOSI" H 4050 4300 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 4000 4650 60  0001 C CNN
F 3 "" H 4000 4650 60  0001 C CNN
	1    4000 4650
	1    0    0    -1  
$EndComp
Text GLabel 9525 4650 0    60   Input ~ 0
MOSI
Text GLabel 4000 4650 2    60   Input ~ 0
MOSI
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS4
U 1 1 5B69E6BD
P 3500 4650
F 0 "XS4" H 3500 5000 60  0000 C CNN
F 1 "Miso" H 3550 4300 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 3500 4650 60  0001 C CNN
F 3 "" H 3500 4650 60  0001 C CNN
	1    3500 4650
	1    0    0    -1  
$EndComp
Text GLabel 9525 4750 0    60   Input ~ 0
MISO
Text GLabel 3475 4700 2    60   Input ~ 0
MISO
Text GLabel 11575 3250 2    60   Input ~ 0
SCK
Text GLabel 11575 4450 2    60   Input ~ 0
reset
$Comp
L MOTOR:Резонатор_кварцевый ZQ1
U 1 1 5B69F039
P 8325 4150
F 0 "ZQ1" H 8325 4350 60  0000 C CNN
F 1 "РК456МДУ" H 8325 3975 60  0000 C CNN
F 2 "MOTOR_RLC:Резонатор_РК456МДУ(DIP)" H 8325 4150 60  0001 C CNN
F 3 "" H 8325 4150 60  0001 C CNN
	1    8325 4150
	0    1    1    0   
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C1
U 1 1 5B69F0D0
P 7925 3850
F 0 "C1" H 7925 4050 60  0000 C CNN
F 1 "К10-83-50В-12пФ" H 7975 3650 60  0000 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_К10-83(0603)" H 7925 3850 60  0001 C CNN
F 3 "" H 7925 3850 60  0001 C CNN
	1    7925 3850
	1    0    0    -1  
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C2
U 1 1 5B69F116
P 7975 4450
F 0 "C2" H 7975 4650 60  0000 C CNN
F 1 "К10-83-50В-12пФ" H 8025 4250 60  0000 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_К10-83(0603)" H 7975 4450 60  0001 C CNN
F 3 "" H 7975 4450 60  0001 C CNN
	1    7975 4450
	1    0    0    -1  
$EndComp
Text GLabel 7825 3850 0    60   Input ~ 0
GND
Text GLabel 7875 4450 0    60   Input ~ 0
GND
Wire Wire Line
	8725 4450 8725 3950
Wire Wire Line
	8725 3950 9525 3950
$Comp
L MOTOR:Резистор_0,125Вт R7
U 1 1 5B69F2D3
P 13225 2900
F 0 "R7" H 13235 2980 60  0000 C CNN
F 1 "Р1-8В-0.125" H 13285 2820 60  0000 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 13225 2900 60  0001 C CNN
F 3 "" H 13225 2900 60  0001 C CNN
	1    13225 2900
	1    0    0    -1  
$EndComp
$Comp
L MOTOR:Светодиод HL1
U 1 1 5B69F32E
P 14125 2900
F 0 "HL1" H 13975 3200 60  0000 C CNN
F 1 "Светодиод_3Л341Е" H 14175 2600 60  0000 C CNN
F 2 "N_VD_HL:Светодиод_SMD_0603" H 14125 2900 60  0001 C CNN
F 3 "" H 14125 2900 60  0001 C CNN
	1    14125 2900
	1    0    0    -1  
$EndComp
Text GLabel 14475 2900 2    60   Input ~ 0
GND
$Comp
L MOTOR:Резистор_0,125Вт R6
U 1 1 5B69F66C
P 12375 4450
F 0 "R6" H 12385 4530 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 12435 4370 60  0000 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 12375 4450 60  0001 C CNN
F 3 "" H 12375 4450 60  0001 C CNN
	1    12375 4450
	1    0    0    -1  
$EndComp
Text GLabel 11975 4450 1    60   Input ~ 0
reset
$Comp
L MOTOR:Микросхема_5559ИН10 DD1
U 1 1 5B6B29F9
P 8425 5550
F 0 "DD1" H 8725 5650 60  0000 C CNN
F 1 "5559ИН10" H 8425 5000 60  0000 C CNN
F 2 "N_DD:SO-8_RS485_CAN_Milandr_OTK" H 8425 5550 60  0001 C CNN
F 3 "" H 8425 5550 60  0001 C CNN
	1    8425 5550
	1    0    0    -1  
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C3
U 1 1 5B6B2A5A
P 9475 6100
F 0 "C3" H 9475 6300 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 9525 5900 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0805" H 9475 6100 60  0001 C CNN
F 3 "" H 9475 6100 60  0001 C CNN
	1    9475 6100
	0    1    1    0   
$EndComp
Text GLabel 11475 5650 0    60   Input ~ 0
VCC
Text GLabel 12575 6150 2    60   Input ~ 0
VCC
Text GLabel 12575 5950 2    60   Input ~ 0
GND
$Comp
L MOTOR:Конденсатор_керамический C4
U 1 1 5B6B3978
P 12925 6000
F 0 "C4" H 12925 6200 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 12975 5800 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0805" H 12925 6000 60  0001 C CNN
F 3 "" H 12925 6000 60  0001 C CNN
	1    12925 6000
	0    1    1    0   
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C5
U 1 1 5B6B3A63
P 13075 6000
F 0 "C5" H 13075 6200 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 13125 5800 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0805" H 13075 6000 60  0001 C CNN
F 3 "" H 13075 6000 60  0001 C CNN
	1    13075 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	12575 5950 12925 5950
$Comp
L MOTOR:Резистор_0,125Вт R4
U 1 1 5B6B3CC6
P 10875 5600
F 0 "R4" H 10885 5680 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 10935 5520 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 10875 5600 60  0001 C CNN
F 3 "" H 10875 5600 60  0001 C CNN
	1    10875 5600
	0    1    1    0   
$EndComp
$Comp
L MOTOR:Резистор_0,125Вт R5
U 1 1 5B6B3DCD
P 11025 5600
F 0 "R5" H 11035 5680 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 11085 5520 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 11025 5600 60  0001 C CNN
F 3 "" H 11025 5600 60  0001 C CNN
	1    11025 5600
	0    1    1    0   
$EndComp
Text GLabel 6925 5650 0    60   Input ~ 0
RX
Text GLabel 6925 6250 0    60   Input ~ 0
TX
$Comp
L MOTOR:Резистор_0,125Вт R1
U 1 1 5B6B44EE
P 7325 5650
F 0 "R1" H 7335 5730 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 7385 5570 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 7325 5650 60  0001 C CNN
F 3 "" H 7325 5650 60  0001 C CNN
	1    7325 5650
	-1   0    0    1   
$EndComp
$Comp
L MOTOR:Резистор_0,125Вт R2
U 1 1 5B6B4632
P 7325 6250
F 0 "R2" H 7335 6330 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 7385 6170 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 7325 6250 60  0001 C CNN
F 3 "" H 7325 6250 60  0001 C CNN
	1    7325 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7725 5850 7525 5850
Text GLabel 7525 5850 0    60   Input ~ 0
EN
$Comp
L MOTOR:Резистор_0,125Вт R3
U 1 1 5B6B48AB
P 7525 6900
F 0 "R3" H 7535 6980 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 7585 6820 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 7525 6900 60  0001 C CNN
F 3 "" H 7525 6900 60  0001 C CNN
	1    7525 6900
	0    -1   -1   0   
$EndComp
Text GLabel 7525 7300 3    60   Input ~ 0
GND
Text GLabel 9525 4450 0    60   Input ~ 0
EN
NoConn ~ 12575 6350
NoConn ~ 12575 6250
NoConn ~ 12575 6050
NoConn ~ 12575 5850
NoConn ~ 12575 5750
NoConn ~ 12575 5650
NoConn ~ 11475 6350
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS5
U 1 1 5B704463
P 4450 4650
F 0 "XS5" H 4450 5000 60  0000 C CNN
F 1 "SCK" H 4500 4300 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 4450 4650 60  0001 C CNN
F 3 "" H 4450 4650 60  0001 C CNN
	1    4450 4650
	1    0    0    -1  
$EndComp
Text GLabel 4450 4650 2    60   Input ~ 0
SCK
$Comp
L MOTOR:отверстие_под_пайку XS8
U 1 1 5B70499D
P 12825 5200
F 0 "XS8" H 12825 5550 60  0000 C CNN
F 1 "res" H 12725 5200 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 12825 5200 60  0001 C CNN
F 3 "" H 12825 5200 60  0001 C CNN
	1    12825 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9125 5650 9575 5650
Wire Wire Line
	9125 6250 9475 6250
Wire Wire Line
	9125 5850 9675 5850
Wire Wire Line
	9675 5850 9675 5750
Wire Wire Line
	9725 6000 9725 5950
Wire Wire Line
	9475 6200 9475 6250
Wire Wire Line
	9475 6300 9575 6300
Text GLabel 11575 4550 2    60   Input ~ 0
RX
Text GLabel 11575 4650 2    60   Input ~ 0
TX
Text GLabel 11575 3650 2    60   Input ~ 0
GND
Text GLabel 12825 2900 0    60   Input ~ 0
HL1
Text GLabel 9525 4350 0    60   Input ~ 0
HL1
Text GLabel 11475 5950 0    60   Input ~ 0
SCL
Text GLabel 11475 6150 0    60   Input ~ 0
SDA
Text GLabel 11575 4250 2    60   Input ~ 0
SDA
Text GLabel 11575 4350 2    60   Input ~ 0
SCL
NoConn ~ 11575 3750
NoConn ~ 11575 4050
NoConn ~ 11575 4150
NoConn ~ 11575 3350
NoConn ~ 11575 3450
NoConn ~ 11575 3550
NoConn ~ 9525 3250
NoConn ~ 9525 3350
NoConn ~ 9525 4050
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS6
U 1 1 5B70919E
P 8475 6850
F 0 "XS6" H 8475 7200 60  0000 C CNN
F 1 "SCK" H 8525 6500 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 8475 6850 60  0001 C CNN
F 3 "" H 8475 6850 60  0001 C CNN
	1    8475 6850
	1    0    0    -1  
$EndComp
Text GLabel 9675 5750 1    60   Input ~ 0
B
Text GLabel 9725 5950 1    60   Input ~ 0
A
Text GLabel 8475 6850 2    60   Input ~ 0
A
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS7
U 1 1 5B7094A2
P 8925 6850
F 0 "XS7" H 8925 7200 60  0000 C CNN
F 1 "SCK" H 8975 6500 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 8925 6850 60  0001 C CNN
F 3 "" H 8925 6850 60  0001 C CNN
	1    8925 6850
	1    0    0    -1  
$EndComp
Text GLabel 8925 6850 2    60   Input ~ 0
B
Text GLabel 11025 6000 3    60   Input ~ 0
SCL
Text GLabel 10875 6000 3    60   Input ~ 0
SDA
Text GLabel 2375 6300 0    60   Input ~ 0
GND
$Comp
L MOTOR:Диод_шоттки VD1
U 1 1 5B75C7EE
P 2925 6700
F 0 "VD1" H 2925 6900 60  0000 C CNN
F 1 "Диод_КД257А" H 2925 6500 60  0000 C CNN
F 2 "N_VD_HL:Диод_BAR43CFILM_SOT-23" H 2925 6700 60  0001 C CNN
F 3 "" H 2925 6700 60  0001 C CNN
	1    2925 6700
	0    1    1    0   
$EndComp
Text GLabel 4675 6300 2    60   Input ~ 0
GND_in
Connection ~ 2925 6300
$Comp
L aks-rescue:Р1-8В-0.25-20K-RESCUE-aks FU1
U 1 1 5B75D420
P 3825 6300
F 0 "FU1" H 3800 6450 60  0000 C CNN
F 1 "Р1-8В-0.25-20K" H 3825 6150 60  0001 C CNN
F 2 "MOTOR_IMPORT_OTK:Предохранитель_SMD(1812)" H 3825 6300 60  0001 C CNN
F 3 "" H 3825 6300 60  0001 C CNN
	1    3825 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 6300 2925 6300
Text GLabel 9575 5500 1    60   Input ~ 0
Ep
Text GLabel 9575 6300 2    60   Input ~ 0
GND
Wire Wire Line
	12925 5950 13075 5950
Wire Wire Line
	2925 6300 3675 6300
Text GLabel 11575 7200 0    60   Input ~ 0
SCL
Text GLabel 11375 6950 0    60   Input ~ 0
SDA
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS10
U 1 1 5BC4E048
P 11375 6950
F 0 "XS10" H 11375 7300 60  0000 C CNN
F 1 "SCL" H 11525 6950 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 11375 6950 60  0001 C CNN
F 3 "" H 11375 6950 60  0001 C CNN
	1    11375 6950
	1    0    0    -1  
$EndComp
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS9
U 1 1 5BC4E3BE
P 11575 7200
F 0 "XS9" H 11575 7550 60  0000 C CNN
F 1 "SDA" H 11700 7200 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 11575 7200 60  0001 C CNN
F 3 "" H 11575 7200 60  0001 C CNN
	1    11575 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12575 6150 12925 6150
Wire Wire Line
	2375 7050 2925 7050
Wire Wire Line
	2925 6700 2925 6300
Wire Wire Line
	2925 7050 2925 7000
Connection ~ 2925 7050
Wire Wire Line
	2925 7050 4675 7050
Connection ~ 9475 6250
Wire Wire Line
	9475 6250 9475 6300
Wire Wire Line
	9575 5650 9575 6050
Wire Wire Line
	9575 6050 9475 6050
Wire Wire Line
	9125 6050 9125 6000
Wire Wire Line
	9125 6000 9725 6000
Wire Wire Line
	7525 5850 7525 6050
Wire Wire Line
	7725 6050 7525 6050
Connection ~ 7525 6050
Wire Wire Line
	7525 6050 7525 6500
Wire Wire Line
	7825 3850 7875 3850
Wire Wire Line
	8025 3850 8325 3850
Wire Wire Line
	8075 4450 8325 4450
Wire Wire Line
	7925 4450 7875 4450
Connection ~ 8325 3850
Connection ~ 8325 4450
Wire Wire Line
	8325 4450 8725 4450
Wire Wire Line
	13625 2900 14125 2900
Wire Wire Line
	14425 2900 14475 2900
Wire Wire Line
	8325 3850 9525 3850
NoConn ~ 11575 4750
Wire Wire Line
	12925 6100 13075 6100
$Comp
L MOTOR:LIS3DH DD3
U 1 1 5BC908E6
P 11475 5650
F 0 "DD3" H 12025 5965 50  0000 C CNN
F 1 "LIS3DH" H 12025 5874 50  0000 C CNN
F 2 "MOTOR_IMPORT_OTK:акселерометр" H 11475 5650 50  0001 C CNN
F 3 "" H 11475 5650 50  0001 C CNN
	1    11475 5650
	1    0    0    -1  
$EndComp
Connection ~ 12925 5950
Wire Wire Line
	12925 6100 12925 6150
Connection ~ 12925 6100
Text GLabel 13825 5750 0    60   Input ~ 0
VCC
Text GLabel 14925 6250 2    60   Input ~ 0
VCC
Text GLabel 14925 6050 2    60   Input ~ 0
GND
$Comp
L MOTOR:Конденсатор_керамический C6
U 1 1 5BC96C92
P 15275 6100
F 0 "C6" H 15275 6300 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 15325 5900 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0805" H 15275 6100 60  0001 C CNN
F 3 "" H 15275 6100 60  0001 C CNN
	1    15275 6100
	0    1    1    0   
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C7
U 1 1 5BC96C98
P 15425 6100
F 0 "C7" H 15425 6300 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 15475 5900 60  0001 C CNN
F 2 "N_RLC:Конденсатор_SMD_0805" H 15425 6100 60  0001 C CNN
F 3 "" H 15425 6100 60  0001 C CNN
	1    15425 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	14925 6050 15275 6050
NoConn ~ 14925 6450
NoConn ~ 14925 6350
NoConn ~ 14925 6150
NoConn ~ 14925 5950
NoConn ~ 14925 5850
NoConn ~ 14925 5750
NoConn ~ 13825 6450
Text GLabel 13825 6050 0    60   Input ~ 0
SCL
Text GLabel 13825 6250 0    60   Input ~ 0
SDA
Wire Wire Line
	15275 6050 15425 6050
Wire Wire Line
	14925 6250 15275 6250
Wire Wire Line
	15275 6200 15425 6200
$Comp
L MOTOR:LIS3DH DD4
U 1 1 5BC96CBB
P 13825 5750
F 0 "DD4" H 14375 6065 50  0000 C CNN
F 1 "LIS3DH" H 14375 5974 50  0000 C CNN
F 2 "MOTOR_IMPORT_OTK:акселерометр" H 13825 5750 50  0001 C CNN
F 3 "" H 13825 5750 50  0001 C CNN
	1    13825 5750
	1    0    0    -1  
$EndComp
Connection ~ 15275 6050
Wire Wire Line
	15275 6200 15275 6250
Connection ~ 15275 6200
Wire Wire Line
	13025 5200 12825 5200
Text GLabel 13025 5200 2    60   Input ~ 0
reset
Text GLabel 9525 4250 0    60   Input ~ 0
PD7
Text GLabel 9525 4550 0    60   Input ~ 0
PB2
Text GLabel 11475 6250 0    60   Input ~ 0
PB2
Text GLabel 13825 6350 0    60   Input ~ 0
PD7
Text GLabel 11475 6050 0    60   Input ~ 0
GND
Text GLabel 13825 6150 0    60   Input ~ 0
GND
Wire Wire Line
	4625 6300 4675 6300
Wire Wire Line
	3975 6300 4625 6300
Connection ~ 4625 6300
Wire Wire Line
	2925 5850 2925 6300
Wire Wire Line
	2975 5850 2925 5850
Wire Wire Line
	4625 5850 4625 6300
Wire Wire Line
	4625 5850 4375 5850
$Comp
L MOTOR:Резистор_0,125Вт R9
U 1 1 5B75DDA5
P 3975 5850
F 0 "R9" H 3975 5750 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 4035 5770 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 3975 5850 60  0001 C CNN
F 3 "" H 3975 5850 60  0001 C CNN
	1    3975 5850
	-1   0    0    1   
$EndComp
$Comp
L MOTOR:Светодиод HL2
U 1 1 5B75E293
P 3275 5850
F 0 "HL2" H 3125 6150 60  0000 C CNN
F 1 "Светодиод_3Л341Е" H 3325 5550 60  0000 C CNN
F 2 "N_VD_HL:Светодиод_SMD_0603" H 3275 5850 60  0001 C CNN
F 3 "" H 3275 5850 60  0001 C CNN
	1    3275 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3275 5850 3575 5850
NoConn ~ 11475 5850
NoConn ~ 11475 5750
NoConn ~ 13825 5950
NoConn ~ 13825 5850
Text GLabel 11575 3850 2    60   Input ~ 0
VCC
$Comp
L elements:Резистор_0,125Вт R8
U 1 1 5C4A04C6
P 13725 3900
F 0 "R8" V 13672 4003 60  0000 L CNN
F 1 "Резистор_0,125Вт" V 13778 4003 60  0000 L CNN
F 2 "N_RLC:Резистор_SMD_0805_0,125Вт" H 13725 3900 60  0001 C CNN
F 3 "" H 13725 3900 60  0001 C CNN
	1    13725 3900
	0    1    1    0   
$EndComp
$Comp
L elements:Резистор_0,125Вт R10
U 1 1 5C4A055A
P 13725 4750
F 0 "R10" V 13672 4853 60  0000 L CNN
F 1 "Резистор_0,125Вт" V 13778 4853 60  0000 L CNN
F 2 "N_RLC:Резистор_SMD_0805_0,125Вт" H 13725 4750 60  0001 C CNN
F 3 "" H 13725 4750 60  0001 C CNN
	1    13725 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	13725 4350 13725 4300
Text GLabel 13725 5150 3    60   Input ~ 0
GND
Wire Wire Line
	11575 3950 13325 3950
Wire Wire Line
	13325 3950 13325 4350
Wire Wire Line
	13325 4350 13725 4350
Connection ~ 13725 4350
Text GLabel 13725 3500 1    60   Input ~ 0
VCC
Wire Wire Line
	9575 5500 9575 5650
Connection ~ 9575 5650
Text GLabel 9525 3750 0    60   Input ~ 0
Ep
Text GLabel 9525 3550 0    60   Input ~ 0
Ep
Text GLabel 1525 6500 2    60   Input ~ 0
Ep
Text GLabel 2375 7050 0    60   Input ~ 0
Ep
Text GLabel 4675 7050 2    60   Input ~ 0
Ep
Text GLabel 10875 5200 1    60   Input ~ 0
Ep
Text GLabel 11025 5200 1    60   Input ~ 0
Ep
Text GLabel 12775 4450 2    60   Input ~ 0
Ep
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS12
U 1 1 5C51CBA7
P 975 6500
F 0 "XS12" H 975 6850 60  0000 C CNN
F 1 "VCC" H 1025 6150 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 975 6500 60  0001 C CNN
F 3 "" H 975 6500 60  0001 C CNN
	1    975  6500
	1    0    0    -1  
$EndComp
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS13
U 1 1 5C51CBAD
P 975 7000
F 0 "XS13" H 975 7350 60  0000 C CNN
F 1 "GND" H 1025 6650 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 975 7000 60  0001 C CNN
F 3 "" H 975 7000 60  0001 C CNN
	1    975  7000
	1    0    0    -1  
$EndComp
Text GLabel 975  6500 2    60   Input ~ 0
Ep
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS11
U 1 1 5C51DAF0
P 975 5700
F 0 "XS11" H 975 6050 60  0000 C CNN
F 1 "VCC" H 1025 5350 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 975 5700 60  0001 C CNN
F 3 "" H 975 5700 60  0001 C CNN
	1    975  5700
	1    0    0    -1  
$EndComp
Text GLabel 9525 4150 0    60   Input ~ 0
EN1
Text GLabel 975  5700 2    60   Input ~ 0
EN1
Text GLabel 1525 7000 2    60   Input ~ 0
GND_in
Text GLabel 975  7000 2    60   Input ~ 0
GND_in
$EndSCHEMATC
