#include <Wire.h>
#include "/Users/Toxa/Documents/Arduino/mad.h"


void setup() {
  
  pinMode(PB0, OUTPUT);
  
}

void loop() {

  digitalWrite(PB0, HIGH);
  delay(500);
  digitalWrite(PB0, LOW);
  delay(500);
  
}
