EESchema Schematic File Version 4
LIBS:aks-rescue
LIBS:power
LIBS:device
LIBS:74xx
LIBS:audio
LIBS:interface
LIBS:MOTOR
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
L ATmega8 DD2
U 1 1 5B69DF51
P 4300 2150
F 0 "DD2" H 5900 2450 60  0000 C CNN
F 1 "ATmega8" H 5150 350 60  0000 C CNN
F 2 "MOTOR_IMPORT_OTK:ATMEGA-8-161AU" H 4950 1500 60  0001 C CNN
F 3 "" H 4950 1500 60  0001 C CNN
	1    4300 2150
	1    0    0    -1  
$EndComp
$Comp
L отверстие_под_пайку-RESCUE-aks XS1
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
L отверстие_под_пайку-RESCUE-aks XS2
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
L отверстие_под_пайку-RESCUE-aks XS3
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
L отверстие_под_пайку-RESCUE-aks XS4
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
L РК456МДУ ZQ1
U 1 1 5B69F039
P 3000 3050
F 0 "ZQ1" H 3000 3250 60  0000 C CNN
F 1 "РК456МДУ" H 3000 2875 60  0000 C CNN
F 2 "MOTOR_RLC:Резонатор_РК456МДУ(DIP)" H 3000 3050 60  0001 C CNN
F 3 "" H 3000 3050 60  0001 C CNN
	1    3000 3050
	0    1    1    0   
$EndComp
$Comp
L К10-83-50В-12пФ C1
U 1 1 5B69F0D0
P 2600 2750
F 0 "C1" H 2600 2950 60  0000 C CNN
F 1 "К10-83-50В-12пФ" H 2650 2550 60  0000 C CNN
F 2 "motorchik:Конденсатор_SMD_К10-83(0603)" H 2600 2750 60  0001 C CNN
F 3 "" H 2600 2750 60  0001 C CNN
	1    2600 2750
	1    0    0    -1  
$EndComp
$Comp
L К10-83-50В-12пФ C2
U 1 1 5B69F116
P 2650 3350
F 0 "C2" H 2650 3550 60  0000 C CNN
F 1 "К10-83-50В-12пФ" H 2700 3150 60  0000 C CNN
F 2 "motorchik:Конденсатор_SMD_К10-83(0603)" H 2650 3350 60  0001 C CNN
F 3 "" H 2650 3350 60  0001 C CNN
	1    2650 3350
	1    0    0    -1  
$EndComp
Text GLabel 2400 2750 0    60   Input ~ 0
GND
Text GLabel 2450 3350 0    60   Input ~ 0
GND
Wire Wire Line
	2850 2750 3000 2750
Connection ~ 3000 2750
Wire Wire Line
	2900 3350 3000 3350
Wire Wire Line
	3300 3350 3300 2850
Wire Wire Line
	3300 2850 4100 2850
Connection ~ 3000 3350
$Comp
L Р1-8В-0.125 R7
U 1 1 5B69F2D3
P 7050 2550
F 0 "R7" H 7060 2630 60  0000 C CNN
F 1 "Р1-8В-0.125" H 7110 2470 60  0000 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 7050 2550 60  0001 C CNN
F 3 "" H 7050 2550 60  0001 C CNN
	1    7050 2550
	1    0    0    -1  
$EndComp
$Comp
L Светодиод_3Л341Е HL1
U 1 1 5B69F32E
P 7950 2550
F 0 "HL1" H 7800 2850 60  0000 C CNN
F 1 "Светодиод_3Л341Е" H 8000 2250 60  0000 C CNN
F 2 "MOTOR_VD_VT_HL:Светодиод_SMD_3528" H 7950 2550 60  0001 C CNN
F 3 "" H 7950 2550 60  0001 C CNN
	1    7950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2550 7550 2550
Text GLabel 8300 2550 2    60   Input ~ 0
GND
$Comp
L Р1-8В-0.125 R6
U 1 1 5B69F66C
P 6850 3350
F 0 "R6" H 6860 3430 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 6910 3270 60  0000 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 6850 3350 60  0001 C CNN
F 3 "" H 6850 3350 60  0001 C CNN
	1    6850 3350
	1    0    0    -1  
$EndComp
Text GLabel 6550 3350 1    60   Input ~ 0
reset
Text GLabel 7150 3350 2    60   Input ~ 0
VCC
$Comp
L LIS3DH DD3
U 1 1 5B6A004E
P 6250 4550
F 0 "DD3" H 7050 4700 60  0000 C CNN
F 1 "LIS3DH" H 6650 3800 60  0000 C CNN
F 2 "MOTOR_IMPORT_OTK:акселерометр" H 6250 4550 60  0001 C CNN
F 3 "" H 6250 4550 60  0001 C CNN
	1    6250 4550
	1    0    0    -1  
$EndComp
$Comp
L 5559ИН10 DD1
U 1 1 5B6B29F9
P 3000 4450
F 0 "DD1" H 3300 4550 60  0000 C CNN
F 1 "5559ИН10" H 3000 3900 60  0000 C CNN
F 2 "motorchik:5559ИН10" H 3000 4450 60  0001 C CNN
F 3 "" H 3000 4450 60  0001 C CNN
	1    3000 4450
	1    0    0    -1  
$EndComp
$Comp
L К10-83-25В-4,7мкФ(2220) C3
U 1 1 5B6B2A5A
P 4150 5000
F 0 "C3" H 4150 5200 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 4200 4800 60  0001 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_1812" H 4150 5000 60  0001 C CNN
F 3 "" H 4150 5000 60  0001 C CNN
	1    4150 5000
	0    1    1    0   
$EndComp
Text GLabel 6050 4550 0    60   Input ~ 0
VCC
Text GLabel 7300 5050 2    60   Input ~ 0
VCC
Text GLabel 7300 4850 2    60   Input ~ 0
GND
$Comp
L К10-83-25В-4,7мкФ(2220) C4
U 1 1 5B6B3978
P 7650 4950
F 0 "C4" H 7650 5150 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 7700 4750 60  0001 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_1812" H 7650 4950 60  0001 C CNN
F 3 "" H 7650 4950 60  0001 C CNN
	1    7650 4950
	0    1    1    0   
$EndComp
$Comp
L К10-83-25В-4,7мкФ(2220) C5
U 1 1 5B6B3A63
P 7800 4950
F 0 "C5" H 7800 5150 60  0000 C CNN
F 1 "К10-83-25В-4,7мкФ(2220)" H 7850 4750 60  0001 C CNN
F 2 "MOTOR_RLC:Конденсатор_SMD_1812" H 7800 4950 60  0001 C CNN
F 3 "" H 7800 4950 60  0001 C CNN
	1    7800 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	7300 5050 7650 5050
Connection ~ 7650 5050
Wire Wire Line
	7300 4850 7650 4850
Wire Wire Line
	7650 4850 7650 4900
Wire Wire Line
	7800 4850 7800 4900
Connection ~ 7650 4850
$Comp
L Р1-8В-0.125 R4
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
L Р1-8В-0.125 R5
U 1 1 5B6B3DCD
P 5600 4500
F 0 "R5" H 5610 4580 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 5660 4420 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 5600 4500 60  0001 C CNN
F 3 "" H 5600 4500 60  0001 C CNN
	1    5600 4500
	0    1    1    0   
$EndComp
Text GLabel 5400 4200 0    60   Input ~ 0
VCC
Wire Wire Line
	5400 4200 5450 4200
Connection ~ 5450 4200
Text GLabel 1700 4550 0    60   Input ~ 0
RX
Text GLabel 1700 5000 0    60   Input ~ 0
TX
$Comp
L Р1-8В-0.125 R1
U 1 1 5B6B44EE
P 2000 4550
F 0 "R1" H 2010 4630 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 2060 4470 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 2000 4550 60  0001 C CNN
F 3 "" H 2000 4550 60  0001 C CNN
	1    2000 4550
	-1   0    0    1   
$EndComp
$Comp
L Р1-8В-0.125 R2
U 1 1 5B6B4632
P 2000 5000
F 0 "R2" H 2010 5080 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 2060 4920 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 2000 5000 60  0001 C CNN
F 3 "" H 2000 5000 60  0001 C CNN
	1    2000 5000
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 4700 2100 4700
Wire Wire Line
	2100 4700 2100 4850
Wire Wire Line
	2100 4850 2300 4850
Text GLabel 2100 4700 0    60   Input ~ 0
EN
$Comp
L Р1-8В-0.125 R3
U 1 1 5B6B48AB
P 2100 5400
F 0 "R3" H 2110 5480 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H 2160 5320 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H 2100 5400 60  0001 C CNN
F 3 "" H 2100 5400 60  0001 C CNN
	1    2100 5400
	0    -1   -1   0   
$EndComp
Connection ~ 2100 4850
Text GLabel 2100 5700 3    60   Input ~ 0
GND
Text GLabel 4100 3350 0    60   Input ~ 0
EN
NoConn ~ 7300 5250
NoConn ~ 7300 5150
NoConn ~ 7300 4950
NoConn ~ 7300 4750
NoConn ~ 7300 4650
NoConn ~ 7300 4550
NoConn ~ 6050 4950
NoConn ~ 6050 5150
NoConn ~ 6050 5250
NoConn ~ 3500 3100
$Comp
L отверстие_под_пайку-RESCUE-aks XS5
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
L отверстие_под_пайку-RESCUE-aks XS8
U 1 1 5B70499D
P 7400 4100
F 0 "XS8" H 7400 4450 60  0000 C CNN
F 1 "VCC" H 7450 3750 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 7400 4100 60  0001 C CNN
F 3 "" H 7400 4100 60  0001 C CNN
	1    7400 4100
	1    0    0    -1  
$EndComp
Text GLabel 7400 4100 2    60   Input ~ 0
RESET
Wire Wire Line
	3700 4550 4150 4550
Wire Wire Line
	3700 5000 4050 5000
Wire Wire Line
	3700 4700 4200 4700
Wire Wire Line
	4200 4700 4200 4600
Wire Wire Line
	3700 4850 4300 4850
Wire Wire Line
	4300 4850 4300 4800
Wire Wire Line
	4150 4550 4150 4950
Wire Wire Line
	4050 5000 4050 5100
Wire Wire Line
	4050 5100 4150 5100
Text GLabel 6150 3450 2    60   Input ~ 0
RX
Text GLabel 6150 3550 2    60   Input ~ 0
TX
Text GLabel 6150 2550 2    60   Input ~ 0
GND
Text GLabel 6750 2550 0    60   Input ~ 0
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
L отверстие_под_пайку-RESCUE-aks XS6
U 1 1 5B70919E
P 3050 5750
F 0 "XS6" H 3050 6100 60  0000 C CNN
F 1 "SCK" H 3100 5400 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 3050 5750 60  0001 C CNN
F 3 "" H 3050 5750 60  0001 C CNN
	1    3050 5750
	1    0    0    -1  
$EndComp
Text GLabel 4200 4600 1    60   Input ~ 0
B
Text GLabel 4300 4800 1    60   Input ~ 0
A
Text GLabel 3050 5750 2    60   Input ~ 0
A
$Comp
L отверстие_под_пайку-RESCUE-aks XS7
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
Text GLabel 5600 4800 3    60   Input ~ 0
SCL
Text GLabel 5450 4800 3    60   Input ~ 0
SDA
Text GLabel -3050 5950 0    60   Input ~ 0
VCC
Text GLabel -3050 5200 0    60   Input ~ 0
GND
$Comp
L Диод_КД257А VD1
U 1 1 5B75C7EE
P -2500 5600
F 0 "VD1" H -2500 5800 60  0000 C CNN
F 1 "Диод_КД257А" H -2500 5400 60  0000 C CNN
F 2 "MOTOR_VD_VT_HL:Диод_2Д663А95(КТ-99-1)" H -2500 5600 60  0001 C CNN
F 3 "" H -2500 5600 60  0001 C CNN
	1    -2500 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	-3050 5950 -2500 5950
Text GLabel -750 5950 2    60   Input ~ 0
Ucc
Text GLabel -750 5200 2    60   Input ~ 0
GND
Connection ~ -2500 5950
Connection ~ -2500 5200
$Comp
L Р1-8В-0.25-20K-RESCUE-aks FU1
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
L Р1-8В-0.125 R9
U 1 1 5B75DDA5
P -1350 4750
F 0 "R9" H -1350 4650 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H -1290 4670 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H -1350 4750 60  0001 C CNN
F 3 "" H -1350 4750 60  0001 C CNN
	1    -1350 4750
	-1   0    0    1   
$EndComp
$Comp
L Светодиод_3Л341Е HL2
U 1 1 5B75E293
P -2150 4750
F 0 "HL2" H -2300 5050 60  0000 C CNN
F 1 "Светодиод_3Л341Е" H -2100 4450 60  0000 C CNN
F 2 "MOTOR_VD_VT_HL:Светодиод_SMD_3528" H -2150 4750 60  0001 C CNN
F 3 "" H -2150 4750 60  0001 C CNN
	1    -2150 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	-1650 4750 -1750 4750
Text GLabel 1200 2500 2    60   Input ~ 0
Ucc
$Comp
L Р1-8В-0.125 R8
U 1 1 5B7A63B1
P -2100 4300
F 0 "R8" H -2100 4200 60  0000 C CNN
F 1 "Р1-8В-0.125-20к" H -2040 4220 60  0001 C CNN
F 2 "MOTOR_RLC:Резистор_SMD_0805_0,125Вт" H -2100 4300 60  0001 C CNN
F 3 "" H -2100 4300 60  0001 C CNN
	1    -2100 4300
	-1   0    0    1   
$EndComp
$Comp
L Светодиод_3Л341Е HL3
U 1 1 5B7A6441
P -1250 4300
F 0 "HL3" H -1400 4600 60  0000 C CNN
F 1 "Светодиод_3Л341Е" H -550 4300 60  0000 C CNN
F 2 "MOTOR_VD_VT_HL:Светодиод_SMD_3528" H -1250 4300 60  0001 C CNN
F 3 "" H -1250 4300 60  0001 C CNN
	1    -1250 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2400 4300 -2500 4300
Wire Wire Line
	-2500 4300 -2500 4750
Wire Wire Line
	-1800 4300 -1650 4300
Wire Wire Line
	-900 4300 -800 4300
Connection ~ -800 4750
Connection ~ -2500 4750
Text GLabel 4150 4550 1    60   Input ~ 0
VCC
Text GLabel 4150 5100 2    60   Input ~ 0
GND
Wire Wire Line
	3000 2750 4100 2750
Wire Wire Line
	3000 3350 3300 3350
Wire Wire Line
	7650 5050 7800 5050
Wire Wire Line
	7650 4850 7800 4850
Wire Wire Line
	5450 4200 5600 4200
Wire Wire Line
	2100 4850 2100 5100
Wire Wire Line
	-2500 5950 -750 5950
Wire Wire Line
	-2500 5200 -1750 5200
Wire Wire Line
	-800 5200 -750 5200
Wire Wire Line
	-800 4750 -800 5200
Wire Wire Line
	-2500 4750 -2500 5200
Text GLabel 6200 5775 0    60   Input ~ 0
SCL
Text GLabel 6175 6100 0    60   Input ~ 0
SDA
$Comp
L отверстие_под_пайку-RESCUE-aks XS10
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
L отверстие_под_пайку-RESCUE-aks XS9
U 1 1 5BC4E3BE
P 6175 6100
F 0 "XS9" H 6175 6450 60  0000 C CNN
F 1 "SDA" H 6300 6100 60  0000 C CNN
F 2 "MOTOR_ICO:Отверстие_под_пайку_D1.2" H 6175 6100 60  0001 C CNN
F 3 "" H 6175 6100 60  0001 C CNN
	1    6175 6100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
