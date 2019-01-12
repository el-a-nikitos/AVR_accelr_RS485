EESchema Schematic File Version 4
LIBS:aks-cache
EELAYER 26 0
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
L MOTOR:ATmega8A-AU DD2
U 1 1 5B69DF51
P 4200 2150
F 0 "DD2" H 5800 2450 60  0000 C CNN
F 1 "ATmega8" H 5050 350 60  0000 C CNN
F 2 "MOTOR_IMPORT_OTK:ATMEGA-8-161AU" H 4850 1500 60  0001 C CNN
F 3 "" H 4850 1500 60  0001 C CNN
	1    4200 2150
	1    0    0    -1  
$EndComp
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS1
U 1 1 5B69E05B
P 1200 2500
F 0 "XS1" H 1200 2850 60  0000 C CNN
F 1 "VCC" H 1250 2150 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 1200 2500 60  0001 C CNN
F 3 "" H 1200 2500 60  0001 C CNN
	1    1200 2500
	1    0    0    -1  
$EndComp
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS2
U 1 1 5B69E3E1
P 1200 3000
F 0 "XS2" H 1200 3350 60  0000 C CNN
F 1 "GND" H 1250 2650 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 1200 3000 60  0001 C CNN
F 3 "" H 1200 3000 60  0001 C CNN
	1    1200 3000
	1    0    0    -1  
$EndComp
Text GLabel 1200 3000 2    60   Input ~ 0
GND
Text GLabel 4100 2350 0    60   Input ~ 0
GND
Text GLabel 4100 2550 0    60   Input ~ 0
GND
Text GLabel 4100 2450 0    60   Input ~ 0
VCC
Text GLabel 4100 2650 0    60   Input ~ 0
VCC
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS3
U 1 1 5B69E5E2
P 1200 3650
F 0 "XS3" H 1200 4000 60  0000 C CNN
F 1 "MOSI" H 1250 3300 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 1200 3650 60  0001 C CNN
F 3 "" H 1200 3650 60  0001 C CNN
	1    1200 3650
	1    0    0    -1  
$EndComp
Text GLabel 4100 3550 0    60   Input ~ 0
MOSI
Text GLabel 1200 3650 2    60   Input ~ 0
MOSI
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS4
U 1 1 5B69E6BD
P 1200 4150
F 0 "XS4" H 1200 4500 60  0000 C CNN
F 1 "Miso" H 1250 3800 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 1200 4150 60  0001 C CNN
F 3 "" H 1200 4150 60  0001 C CNN
	1    1200 4150
	1    0    0    -1  
$EndComp
Text GLabel 4100 3650 0    60   Input ~ 0
MISO
Text GLabel 1200 4150 2    60   Input ~ 0
MISO
Text GLabel 6150 2150 2    60   Input ~ 0
SCK
Text GLabel 6150 3350 2    60   Input ~ 0
reset
$Comp
L MOTOR:Резонатор_кварцевый ZQ1
U 1 1 5B69F039
P 2900 3050
F 0 "ZQ1" H 2900 3250 60  0000 C CNN
F 1 "РК456МДУ" H 2900 2875 60  0000 C CNN
F 2 "MOTOR_RLC:Резонатор_РК456МДУ(DIP)" H 2900 3050 60  0001 C CNN
F 3 "" H 2900 3050 60  0001 C CNN
	1    2900 3050
	0    1    1    0   
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C1
U 1 1 5B69F0D0
P 2500 2750
F 0 "C1" H 2500 2950 60  0000 C CNN
F 1 "К10-83-50В-12пФ" H 2550 2550 60  0000 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_К10-83(0603)" H 2500 2750 60  0001 C CNN
F 3 "" H 2500 2750 60  0001 C CNN
	1    2500 2750
	1    0    0    -1  
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C2
U 1 1 5B69F116
P 2550 3350
F 0 "C2" H 2550 3550 60  0000 C CNN
F 1 "К10-83-50В-12пФ" H 2600 3150 60  0000 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_К10-83(0603)" H 2550 3350 60  0001 C CNN
F 3 "" H 2550 3350 60  0001 C CNN
	1    2550 3350
	1    0    0    -1  
$EndComp
Text GLabel 2400 2750 0    60   Input ~ 0
GND
Text GLabel 2450 3350 0    60   Input ~ 0
GND
Wire Wire Line
	3300 3350 3300 2850
Wire Wire Line
	3300 2850 4100 2850
$Comp
L MOTOR:Резистор_0,125Вт R7
U 1 1 5B69F2D3
P 7800 1800
F 0 "R7" H 7810 1880 60  0000 C CNN
F 1 "Р1-8В-0.125" H 7860 1720 60  0000 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 7800 1800 60  0001 C CNN
F 3 "" H 7800 1800 60  0001 C CNN
	1    7800 1800
	1    0    0    -1  
$EndComp
$Comp
L MOTOR:Светодиод HL1
U 1 1 5B69F32E
P 8700 1800
F 0 "HL1" H 8550 2100 60  0000 C CNN
F 1 "Светодиод_3Л341Е" H 8750 1500 60  0000 C CNN
F 2 "MOTOR_VD_VT_HL:Светодиод_SMD_3528" H 8700 1800 60  0001 C CNN
F 3 "" H 8700 1800 60  0001 C CNN
	1    8700 1800
	1    0    0    -1  
$EndComp
Text GLabel 9050 1800 2    60   Input ~ 0
GND
$Comp
L MOTOR:Резистор_0,125Вт R6
U 1 1 5B69F66C
P 6950 3350
F 0 "R6" H 6960 3430 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 7010 3270 60  0000 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 6950 3350 60  0001 C CNN
F 3 "" H 6950 3350 60  0001 C CNN
	1    6950 3350
	1    0    0    -1  
$EndComp
Text GLabel 6550 3350 1    60   Input ~ 0
reset
Text GLabel 7350 3350 2    60   Input ~ 0
VCC
$Comp
L MOTOR:Микросхема_5559ИН10 DD1
U 1 1 5B6B29F9
P 3000 4450
F 0 "DD1" H 3300 4550 60  0000 C CNN
F 1 "5559ИН10" H 3000 3900 60  0000 C CNN
F 2 "MOTOR_DD:Микросхема_5559ИНхх" H 3000 4450 60  0001 C CNN
F 3 "" H 3000 4450 60  0001 C CNN
	1    3000 4450
	1    0    0    -1  
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C3
U 1 1 5B6B2A5A
P 4050 5000
F 0 "C3" H 4050 5200 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 4100 4800 60  0001 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_1812" H 4050 5000 60  0001 C CNN
F 3 "" H 4050 5000 60  0001 C CNN
	1    4050 5000
	0    1    1    0   
$EndComp
Text GLabel 6050 4550 0    60   Input ~ 0
VCC
Text GLabel 7150 5050 2    60   Input ~ 0
VCC
Text GLabel 7150 4850 2    60   Input ~ 0
GND
$Comp
L MOTOR:Конденсатор_керамический C4
U 1 1 5B6B3978
P 7500 4900
F 0 "C4" H 7500 5100 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 7550 4700 60  0001 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_1812" H 7500 4900 60  0001 C CNN
F 3 "" H 7500 4900 60  0001 C CNN
	1    7500 4900
	0    1    1    0   
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C5
U 1 1 5B6B3A63
P 7650 4900
F 0 "C5" H 7650 5100 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 7700 4700 60  0001 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_1812" H 7650 4900 60  0001 C CNN
F 3 "" H 7650 4900 60  0001 C CNN
	1    7650 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 4850 7500 4850
$Comp
L MOTOR:Резистор_0,125Вт R4
U 1 1 5B6B3CC6
P 5450 4500
F 0 "R4" H 5460 4580 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 5510 4420 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 5450 4500 60  0001 C CNN
F 3 "" H 5450 4500 60  0001 C CNN
	1    5450 4500
	0    1    1    0   
$EndComp
$Comp
L MOTOR:Резистор_0,125Вт R5
U 1 1 5B6B3DCD
P 5600 4500
F 0 "R5" H 5610 4580 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 5660 4420 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 5600 4500 60  0001 C CNN
F 3 "" H 5600 4500 60  0001 C CNN
	1    5600 4500
	0    1    1    0   
$EndComp
Text GLabel 5450 4100 0    60   Input ~ 0
VCC
Text GLabel 1500 4550 0    60   Input ~ 0
RX
Text GLabel 1500 5150 0    60   Input ~ 0
TX
$Comp
L MOTOR:Резистор_0,125Вт R1
U 1 1 5B6B44EE
P 1900 4550
F 0 "R1" H 1910 4630 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 1960 4470 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 1900 4550 60  0001 C CNN
F 3 "" H 1900 4550 60  0001 C CNN
	1    1900 4550
	-1   0    0    1   
$EndComp
$Comp
L MOTOR:Резистор_0,125Вт R2
U 1 1 5B6B4632
P 1900 5150
F 0 "R2" H 1910 5230 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 1960 5070 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 1900 5150 60  0001 C CNN
F 3 "" H 1900 5150 60  0001 C CNN
	1    1900 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 4750 2100 4750
Text GLabel 2100 4750 0    60   Input ~ 0
EN
$Comp
L MOTOR:Резистор_0,125Вт R3
U 1 1 5B6B48AB
P 2100 5800
F 0 "R3" H 2110 5880 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 2160 5720 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 2100 5800 60  0001 C CNN
F 3 "" H 2100 5800 60  0001 C CNN
	1    2100 5800
	0    -1   -1   0   
$EndComp
Text GLabel 2100 6200 3    60   Input ~ 0
GND
Text GLabel 4100 3350 0    60   Input ~ 0
EN
NoConn ~ 7150 5250
NoConn ~ 7150 5150
NoConn ~ 7150 4950
NoConn ~ 7150 4750
NoConn ~ 7150 4650
NoConn ~ 7150 4550
NoConn ~ 6050 4950
NoConn ~ 6050 5150
NoConn ~ 6050 5250
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS5
U 1 1 5B704463
P 850 4450
F 0 "XS5" H 850 4800 60  0000 C CNN
F 1 "SCK" H 900 4100 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 850 4450 60  0001 C CNN
F 3 "" H 850 4450 60  0001 C CNN
	1    850  4450
	1    0    0    -1  
$EndComp
Text GLabel 850  4450 2    60   Input ~ 0
SCK
$Comp
L MOTOR:отверстие_под_пайку XS8
U 1 1 5B70499D
P 7400 4100
F 0 "XS8" H 7400 4450 60  0000 C CNN
F 1 "VCC" H 7450 3750 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 7400 4100 60  0001 C CNN
F 3 "" H 7400 4100 60  0001 C CNN
	1    7400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4550 4150 4550
Wire Wire Line
	3700 5150 4050 5150
Wire Wire Line
	3700 4750 4250 4750
Wire Wire Line
	4250 4750 4250 4650
Wire Wire Line
	4300 4900 4300 4850
Wire Wire Line
	4050 5100 4050 5150
Wire Wire Line
	4050 5200 4150 5200
Text GLabel 6150 3450 2    60   Input ~ 0
RX
Text GLabel 6150 3550 2    60   Input ~ 0
TX
Text GLabel 6150 2550 2    60   Input ~ 0
GND
Text GLabel 7400 1800 0    60   Input ~ 0
HL1
Text GLabel 4100 3250 0    60   Input ~ 0
HL1
Text GLabel 6050 4850 0    60   Input ~ 0
SCL
Text GLabel 6050 5050 0    60   Input ~ 0
SDA
Text GLabel 6150 3150 2    60   Input ~ 0
SDA
Text GLabel 6150 3250 2    60   Input ~ 0
SCL
NoConn ~ 6150 2650
NoConn ~ 6150 2750
NoConn ~ 6150 2850
NoConn ~ 6150 2950
NoConn ~ 6150 3050
NoConn ~ 6150 2250
NoConn ~ 6150 2350
NoConn ~ 6150 2450
NoConn ~ 4100 2150
NoConn ~ 4100 2250
NoConn ~ 4100 3150
NoConn ~ 4100 3050
NoConn ~ 4100 2950
NoConn ~ 4100 3450
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS6
U 1 1 5B70919E
P 3050 5750
F 0 "XS6" H 3050 6100 60  0000 C CNN
F 1 "SCK" H 3100 5400 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 3050 5750 60  0001 C CNN
F 3 "" H 3050 5750 60  0001 C CNN
	1    3050 5750
	1    0    0    -1  
$EndComp
Text GLabel 4250 4650 1    60   Input ~ 0
B
Text GLabel 4300 4850 1    60   Input ~ 0
A
Text GLabel 3050 5750 2    60   Input ~ 0
A
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS7
U 1 1 5B7094A2
P 3500 5750
F 0 "XS7" H 3500 6100 60  0000 C CNN
F 1 "SCK" H 3550 5400 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 3500 5750 60  0001 C CNN
F 3 "" H 3500 5750 60  0001 C CNN
	1    3500 5750
	1    0    0    -1  
$EndComp
Text GLabel 3500 5750 2    60   Input ~ 0
B
Text GLabel 5600 4900 3    60   Input ~ 0
SCL
Text GLabel 5450 4900 3    60   Input ~ 0
SDA
Text GLabel -3050 5950 0    60   Input ~ 0
VCC
Text GLabel -3050 5200 0    60   Input ~ 0
GND
$Comp
L MOTOR:Диод_шоттки VD1
U 1 1 5B75C7EE
P -2500 5600
F 0 "VD1" H -2500 5800 60  0000 C CNN
F 1 "Диод_КД257А" H -2500 5400 60  0000 C CNN
F 2 "MOTOR_VD_VT_HL:Диод_2Д663А95(КТ-99-1)" H -2500 5600 60  0001 C CNN
F 3 "" H -2500 5600 60  0001 C CNN
	1    -2500 5600
	0    1    1    0   
$EndComp
Text GLabel -750 5950 2    60   Input ~ 0
Ucc
Text GLabel -750 5200 2    60   Input ~ 0
GND1
Connection ~ -2500 5200
$Comp
L aks-rescue:Р1-8В-0.25-20K-RESCUE-aks FU1
U 1 1 5B75D420
P -1600 5200
F 0 "FU1" H -1625 5350 60  0000 C CNN
F 1 "Р1-8В-0.25-20K" H -1600 5050 60  0001 C CNN
F 2 "MOTOR_IMPORT_OTK:Предохранитель_SMD(1812)" H -1600 5200 60  0001 C CNN
F 3 "" H -1600 5200 60  0001 C CNN
	1    -1600 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	-1450 5200 -800 5200
Wire Wire Line
	-3050 5200 -2500 5200
Wire Wire Line
	-800 4300 -800 4750
Wire Wire Line
	-800 4750 -1050 4750
Connection ~ -800 5200
$Comp
L MOTOR:Резистор_0,125Вт R9
U 1 1 5B75DDA5
P -1450 4750
F 0 "R9" H -1450 4650 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H -1390 4670 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H -1450 4750 60  0001 C CNN
F 3 "" H -1450 4750 60  0001 C CNN
	1    -1450 4750
	-1   0    0    1   
$EndComp
$Comp
L MOTOR:Светодиод HL2
U 1 1 5B75E293
P -2150 4750
F 0 "HL2" H -2300 5050 60  0000 C CNN
F 1 "Светодиод_3Л341Е" H -2100 4450 60  0000 C CNN
F 2 "MOTOR_VD_VT_HL:Светодиод_SMD_3528" H -2150 4750 60  0001 C CNN
F 3 "" H -2150 4750 60  0001 C CNN
	1    -2150 4750
	-1   0    0    1   
$EndComp
Text GLabel 1200 2500 2    60   Input ~ 0
Ucc
$Comp
L MOTOR:Резистор_0,125Вт R8
U 1 1 5B7A63B1
P -2000 4300
F 0 "R8" H -2000 4200 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H -1940 4220 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H -2000 4300 60  0001 C CNN
F 3 "" H -2000 4300 60  0001 C CNN
	1    -2000 4300
	-1   0    0    1   
$EndComp
$Comp
L MOTOR:Светодиод HL3
U 1 1 5B7A6441
P -1200 4300
F 0 "HL3" H -1350 4600 60  0000 C CNN
F 1 "Светодиод_3Л341Е" H -500 4300 60  0000 C CNN
F 2 "MOTOR_VD_VT_HL:Светодиод_SMD_3528" H -1200 4300 60  0001 C CNN
F 3 "" H -1200 4300 60  0001 C CNN
	1    -1200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2400 4300 -2500 4300
Wire Wire Line
	-900 4300 -800 4300
Connection ~ -800 4750
Text GLabel 4150 4550 1    60   Input ~ 0
VCC
Text GLabel 4150 5200 2    60   Input ~ 0
GND
Wire Wire Line
	7500 4850 7650 4850
Wire Wire Line
	-2500 5200 -1750 5200
Wire Wire Line
	-800 5200 -750 5200
Wire Wire Line
	-800 4750 -800 5200
Text GLabel 6200 5775 0    60   Input ~ 0
SCL
Text GLabel 6175 6100 0    60   Input ~ 0
SDA
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS10
U 1 1 5BC4E048
P 6200 5775
F 0 "XS10" H 6200 6125 60  0000 C CNN
F 1 "SCL" H 6350 5775 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 6200 5775 60  0001 C CNN
F 3 "" H 6200 5775 60  0001 C CNN
	1    6200 5775
	1    0    0    -1  
$EndComp
$Comp
L aks-rescue:отверстие_под_пайку-RESCUE-aks XS9
U 1 1 5BC4E3BE
P 6175 6100
F 0 "XS9" H 6175 6450 60  0000 C CNN
F 1 "SDA" H 6300 6100 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 6175 6100 60  0001 C CNN
F 3 "" H 6175 6100 60  0001 C CNN
	1    6175 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5050 7500 5050
Wire Wire Line
	-3050 5950 -2500 5950
Wire Wire Line
	-2500 4300 -2500 4750
Wire Wire Line
	-1200 4300 -1600 4300
Wire Wire Line
	-2450 4750 -2500 4750
Connection ~ -2500 4750
Wire Wire Line
	-2500 4750 -2500 5200
Wire Wire Line
	-2150 4750 -1850 4750
Wire Wire Line
	-2500 5600 -2500 5200
Wire Wire Line
	-2500 5950 -2500 5900
Connection ~ -2500 5950
Wire Wire Line
	-2500 5950 -750 5950
Connection ~ 4050 5150
Wire Wire Line
	4050 5150 4050 5200
Wire Wire Line
	4150 4550 4150 4950
Wire Wire Line
	4150 4950 4050 4950
Wire Wire Line
	3700 4950 3700 4900
Wire Wire Line
	3700 4900 4300 4900
Wire Wire Line
	2100 4750 2100 4950
Wire Wire Line
	2300 4950 2100 4950
Connection ~ 2100 4950
Wire Wire Line
	2100 4950 2100 5400
Wire Wire Line
	2400 2750 2450 2750
Wire Wire Line
	2600 2750 2900 2750
Wire Wire Line
	2650 3350 2900 3350
Wire Wire Line
	2500 3350 2450 3350
Connection ~ 2900 2750
Connection ~ 2900 3350
Wire Wire Line
	2900 3350 3300 3350
Wire Wire Line
	8200 1800 8700 1800
Wire Wire Line
	9000 1800 9050 1800
Wire Wire Line
	2900 2750 4100 2750
NoConn ~ 6150 3650
Wire Wire Line
	7500 5000 7650 5000
Text GLabel 5600 4100 1    60   Input ~ 0
VCC
$Comp
L MOTOR:LIS3DH DD3
U 1 1 5BC908E6
P 6050 4550
F 0 "DD3" H 6600 4865 50  0000 C CNN
F 1 "LIS3DH" H 6600 4774 50  0000 C CNN
F 2 "MOTOR_IMPORT_OTK:акселерометр" H 6050 4550 50  0001 C CNN
F 3 "" H 6050 4550 50  0001 C CNN
	1    6050 4550
	1    0    0    -1  
$EndComp
Connection ~ 7500 4850
Wire Wire Line
	7500 5000 7500 5050
Connection ~ 7500 5000
Text GLabel 8400 4650 0    60   Input ~ 0
VCC
Text GLabel 9500 5150 2    60   Input ~ 0
VCC
Text GLabel 9500 4950 2    60   Input ~ 0
GND
$Comp
L MOTOR:Конденсатор_керамический C6
U 1 1 5BC96C92
P 9850 5000
F 0 "C6" H 9850 5200 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 9900 4800 60  0001 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_1812" H 9850 5000 60  0001 C CNN
F 3 "" H 9850 5000 60  0001 C CNN
	1    9850 5000
	0    1    1    0   
$EndComp
$Comp
L MOTOR:Конденсатор_керамический C7
U 1 1 5BC96C98
P 10000 5000
F 0 "C7" H 10000 5200 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 10050 4800 60  0001 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_1812" H 10000 5000 60  0001 C CNN
F 3 "" H 10000 5000 60  0001 C CNN
	1    10000 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 4950 9850 4950
NoConn ~ 9500 5350
NoConn ~ 9500 5250
NoConn ~ 9500 5050
NoConn ~ 9500 4850
NoConn ~ 9500 4750
NoConn ~ 9500 4650
NoConn ~ 8400 5050
NoConn ~ 8400 5250
NoConn ~ 8400 5350
Text GLabel 8400 4950 0    60   Input ~ 0
SCL
Text GLabel 8400 5150 0    60   Input ~ 0
SDA
Wire Wire Line
	9850 4950 10000 4950
Wire Wire Line
	9500 5150 9850 5150
Wire Wire Line
	9850 5100 10000 5100
$Comp
L MOTOR:LIS3DH DD4
U 1 1 5BC96CBB
P 8400 4650
F 0 "DD4" H 8950 4965 50  0000 C CNN
F 1 "LIS3DH" H 8950 4874 50  0000 C CNN
F 2 "MOTOR_IMPORT_OTK:акселерометр" H 8400 4650 50  0001 C CNN
F 3 "" H 8400 4650 50  0001 C CNN
	1    8400 4650
	1    0    0    -1  
$EndComp
Connection ~ 9850 4950
Wire Wire Line
	9850 5100 9850 5150
Connection ~ 9850 5100
Wire Wire Line
	7600 4100 7400 4100
Text GLabel 7600 4100 2    60   Input ~ 0
reset
$EndSCHEMATC
