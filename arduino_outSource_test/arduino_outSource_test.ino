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

float maxAccel = 0;
float minAccel = 160;
float deltaAccel = 0;
float error = 0;

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
  
  if (accel>maxAccel)  {
    maxAccel = accel;
  }
  
  if (accel<minAccel)  {
    minAccel = accel;
  }
  
  deltaAccel = maxAccel - minAccel;
  error = 100*deltaAccel/16/9.81;
  
  /* Display the results (acceleration is measured in m/s^2) */
  Serial.print("\tX: "); Serial.print(event.acceleration.x);
  Serial.print(" \tY: "); Serial.print(event.acceleration.y); 
  Serial.print(" \tZ: "); Serial.print(event.acceleration.z); 
  Serial.print(" \tA: "); Serial.print(accel); 
  Serial.print(" \tminA: "); Serial.print(minAccel); 
  Serial.print(" \tmaxA: "); Serial.print(maxAccel); 
  Serial.print("\tm/s^2 ");
  Serial.print(" \tError: "); Serial.print(error); 
  Serial.print("\t%");

  Serial.println();
 
  delay(500); 
}
