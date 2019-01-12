#include <Wire.h>
int ax = 0, ay = 0, az = 0;
int Temp = 0;
int8_t _i2caddr = 0x19, numByte = 6;

#define LIS3DH_REG_STATUS1       0x07
#define LIS3DH_REG_OUTADC1_L     0x08
#define LIS3DH_REG_OUTADC1_H     0x09
#define LIS3DH_REG_OUTADC2_L     0x0A
#define LIS3DH_REG_OUTADC2_H     0x0B
#define LIS3DH_REG_OUTADC3_L     0x0C
#define LIS3DH_REG_OUTADC3_H     0x0D
#define LIS3DH_REG_INTCOUNT      0x0E
#define LIS3DH_REG_WHOAMI        0x0F
#define LIS3DH_REG_TEMPCFG       0x1F
#define LIS3DH_REG_CTRL1         0x20
#define LIS3DH_REG_CTRL2         0x21
#define LIS3DH_REG_CTRL3         0x22
#define LIS3DH_REG_CTRL4         0x23
#define LIS3DH_REG_CTRL5         0x24
#define LIS3DH_REG_CTRL6         0x25
#define LIS3DH_REG_REFERENCE     0x26
#define LIS3DH_REG_STATUS2       0x27
#define LIS3DH_REG_OUT_X_L       0x28
#define LIS3DH_REG_OUT_X_H       0x29
#define LIS3DH_REG_OUT_Y_L       0x2A
#define LIS3DH_REG_OUT_Y_H       0x2B
#define LIS3DH_REG_OUT_Z_L       0x2C
#define LIS3DH_REG_OUT_Z_H       0x2D
#define LIS3DH_REG_FIFOCTRL      0x2E
#define LIS3DH_REG_FIFOSRC       0x2F
#define LIS3DH_REG_INT1CFG       0x30
#define LIS3DH_REG_INT1SRC       0x31
#define LIS3DH_REG_INT1THS       0x32
#define LIS3DH_REG_INT1DUR       0x33
#define LIS3DH_REG_CLICKCFG      0x38
#define LIS3DH_REG_CLICKSRC      0x39
#define LIS3DH_REG_CLICKTHS      0x3A
#define LIS3DH_REG_TIMELIMIT     0x3B
#define LIS3DH_REG_TIMELATENCY   0x3C
#define LIS3DH_REG_TIMEWINDOW    0x3D
#define LIS3DH_REG_ACTTHS        0x3E
#define LIS3DH_REG_ACTDUR        0x3F

void setup() {
  Serial.begin(9600);
  Wire.begin();
  Serial.print("start test");
  
  //writeRegister8(LIS3DH_REG_TEMPCFG, 0b11000000);  // разрешаем работу АЦП3 и датчика температуры
  //writeRegister8(LIS3DH_REG_CTRL4, 0b10110000);    // запрет обновления даных, пока читается регистр, установка диапазона в 16G
                                                     // [BlockDataUpDate BigLitEnd FullScale1 FullScale0 HighResol SelfTest1 SelfTest0 SPI]
                                                     // [7               6         5          4          3         2         1         0  ]
  /*
  REG_TEMPCFG: 128
  REG_CTRL1: 119
  REG_CTRL2: 0
  REG_CTRL3: 16
  REG_CTRL4: 184
  REG_CTRL5: 0
  REG_CTRL6: 0
  REG_REFERENCE: 0
 */
   writeRegister8(LIS3DH_REG_TEMPCFG, 0b11000000);
   writeRegister8(LIS3DH_REG_CTRL1, 0b10010111);
   
   writeRegister8(LIS3DH_REG_CTRL3, 0b00010000);
   writeRegister8(LIS3DH_REG_CTRL4, 0b10110000);
}

void loop() {
  Wire.beginTransmission(_i2caddr);
  Wire.write(LIS3DH_REG_OUT_X_L | 0x80); // 0x80 for autoincrement
  Wire.endTransmission();
  /*
  Wire.requestFrom(0x19, 6);
  
  ax = Wire.read(); ax |= ((uint16_t)Wire.read()) << 8;
  ay = Wire.read(); ay |= ((uint16_t)Wire.read()) << 8;
  az = Wire.read(); az |= ((uint16_t)Wire.read()) << 8;
  */
  
  //ax = readRegister8(LIS3DH_REG_WHOAMI);
  Serial.print("Sensor ID: ");
  Serial.print( readRegister8( LIS3DH_REG_WHOAMI ) );  
  Serial.print("\tTEMP_CFG: ");
  Serial.print( readRegister8( LIS3DH_REG_TEMPCFG ) );
  
  Temp = getFullData(readRegister8( LIS3DH_REG_OUTADC3_L ), readRegister8( LIS3DH_REG_OUTADC3_H ));
  
  Serial.print("\tT:");
  Serial.print( (float)Temp );
  
  Serial.print("\tCTRL1:");
  Serial.print( readRegister8( LIS3DH_REG_CTRL1 ) );

  Serial.print("\tCTRL4:");
  Serial.print( readRegister8( LIS3DH_REG_CTRL4 ) );
  
  Serial.print("\tAccel_X_L:");
  Serial.print( readRegister8( LIS3DH_REG_OUT_X_L ) );
  Serial.print("\tAccel_X_H:");
  Serial.print( readRegister8( LIS3DH_REG_OUT_X_H ) );
  ax = getFullData(readRegister8( LIS3DH_REG_OUT_X_L ), readRegister8( LIS3DH_REG_OUT_X_H ));
  Serial.print("\tAx:");
  Serial.print( ((float)ax*32*9.81/1024), 3 );
  
  ay = getFullData(readRegister8( LIS3DH_REG_OUT_Y_L ), readRegister8( LIS3DH_REG_OUT_Y_H ));
  Serial.print("\tAy:");
  Serial.print( ((float)ay*32*9.81/1024), 3 );
  
  az = getFullData(readRegister8( LIS3DH_REG_OUT_Z_L ), readRegister8( LIS3DH_REG_OUT_Z_H ));
  Serial.print("\tAz:");
  Serial.print( ((float)az*32*9.81/1024), 3 );

  Serial.println();
  delay(500);
}

int getFullData(int8_t RegL, int8_t RegH)  {
  return  (RegL + RegH*256)/32;
}

void writeRegister8(uint8_t reg, uint8_t value) {  // (регистр, значение)
  
    Wire.beginTransmission((uint8_t)_i2caddr);
    Wire.write((uint8_t)reg);
    Wire.write((uint8_t)value);
    Wire.endTransmission();
  } 

uint8_t readRegister8(uint8_t reg) {
    Wire.beginTransmission(_i2caddr);
    Wire.write((uint8_t)reg);
    Wire.endTransmission();

    Wire.requestFrom(_i2caddr, 1);
    
    return Wire.read();
  } 
