#include <Wire.h>
int8_t _i2caddr = 0x19;//0b01111111;
int8_t WhoAmI = 0;

#define LIS3DH_REG_WHOAMI        0x0F

void setup() {
  Serial.begin(9600);
  Wire.begin();
  Serial.print("start test");
}

void loop() {
  Wire.beginTransmission(_i2caddr);
  Wire.write( LIS3DH_REG_WHOAMI ); // 0x80 for autoincrement
  Wire.endTransmission();
  
  //Wire.requestFrom(_i2caddr, 1);  
  //WhoAmI = Wire.read();


  Serial.print("Sensor ID: ");
  Serial.print( WhoAmI  );  

  Serial.println();
  delay(1);
}
