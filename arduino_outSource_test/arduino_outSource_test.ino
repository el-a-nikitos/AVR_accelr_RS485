// Basic demo for accelerometer readings from Adafruit LIS3DH

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_LIS3DH.h>
#include <Adafruit_Sensor.h>

// Used for software SPI
#define LIS3DH_CLK 13
#define LIS3DH_MISO 12
#define LIS3DH_MOSI 11
// Used for hardware & software SPI
#define LIS3DH_CS 10

// software SPI
//Adafruit_LIS3DH lis = Adafruit_LIS3DH(LIS3DH_CS, LIS3DH_MOSI, LIS3DH_MISO, LIS3DH_CLK);
// hardware SPI
//Adafruit_LIS3DH lis = Adafruit_LIS3DH(LIS3DH_CS);
// I2C
Adafruit_LIS3DH lis = Adafruit_LIS3DH();

#if defined(ARDUINO_ARCH_SAMD)
// for Zero, output on USB Serial console, remove line below if using programming port to program the Zero!
   #define Serial SerialUSB
#endif

float lastAccel = 0;
float deltaAccel = 0;
float error = 0;

int _i2caddr = 0x19;

void setup(void) {
#ifndef ESP8266
  while (!Serial);     // will pause Zero, Leonardo, etc until serial console opens
#endif

  Serial.begin(9600);
  Serial.println("LIS3DH test!");
  
  if (! lis.begin(0x19)) {   // change this to 0x19 for alternative i2c address
    Serial.println("Couldnt start");
    while (1);
  }
  Serial.println("LIS3DH found!");
  
  lis.setRange(LIS3DH_RANGE_16_G);   // 2, 4, 8 or 16 G!
  
  Serial.print("Range = "); Serial.print(2 << lis.getRange());  
  Serial.println("G");
  
  lis.read();
  
  delay(1000);
}

void loop() {
  lis.read();      // get X Y and Z data at once
  // Then print out the raw data
/*  Serial.print("X:  "); Serial.print(lis.x); 
  Serial.print("  \tY:  "); Serial.print(lis.y); 
  Serial.print("  \tZ:  "); Serial.print(lis.z); 
*/
  /* Or....get a new sensor event, normalized */ 
  sensors_event_t event; 
  lis.getEvent(&event);
  
  float accel = sqrt( (event.acceleration.x)*(event.acceleration.x)+(event.acceleration.y)*(event.acceleration.y)+(event.acceleration.z)*(event.acceleration.z) );
  
  deltaAccel = abs(lastAccel - accel);
  error = 100*deltaAccel/16/9.81;

  lastAccel = accel;
  
  /* Display the results (acceleration is measured in m/s^2) */
  Serial.print("\tX: "); Serial.print(event.acceleration.x);
  Serial.print(" \tY: "); Serial.print(event.acceleration.y); 
  Serial.print(" \tZ: "); Serial.print(event.acceleration.z); 
  Serial.print(" \tA: "); Serial.print(accel); 
  Serial.print("\tm/s^2 ");
  Serial.print(" \t\tError: "); Serial.print(error); /*
  Serial.print("\tREG_TEMPCFG: ");
  Serial.print(readRegister8(LIS3DH_REG_TEMPCFG));
  Serial.print("\tREG_CTRL1: ");
  Serial.print(readRegister8(LIS3DH_REG_CTRL1));
  Serial.print("\tREG_CTRL2: ");
  Serial.print(readRegister8(LIS3DH_REG_CTRL2));
  Serial.print("\tREG_CTRL3: ");
  Serial.print(readRegister8(LIS3DH_REG_CTRL3));
  Serial.print("\tREG_CTRL4: ");
  Serial.print(readRegister8(LIS3DH_REG_CTRL4));
  Serial.print("\tREG_CTRL5: ");
  Serial.print(readRegister8(LIS3DH_REG_CTRL5));
  Serial.print("\tREG_CTRL6: ");
  Serial.print(readRegister8(LIS3DH_REG_CTRL6));
  Serial.print("\tREG_REFERENCE: ");
  Serial.print(readRegister8(LIS3DH_REG_REFERENCE));*/
  
  Serial.println();
 
  delay(500); 
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
