#include <Wire.h>
#include "/Users/Toxa/Documents/Arduino/mad.h"


void setup() {
  Serial.begin(9600);

  //analogReference(INTERNAL);
  
  pinMode(PB0, OUTPUT);
  pinMode(PB1, OUTPUT);
  
}

void loop() {

  digitalWrite(PB1, HIGH);
  int Ucc = analogRead(A0);
  Serial.println( Ucc );
  
  digitalWrite(PB0, HIGH);
  delay(10);
  digitalWrite(PB0, LOW);
  delay(990);
  
  
}
