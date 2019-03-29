#define PD0 0
#define PD1 1
#define PD2 2
#define PD3 3
#define PD4 4
#define PD5 5
#define PD6 6
#define PD7 7
#define PB0 8
#define PB1 9
#define PB2 10
#define PB3 11
#define PB4 12
#define PB5 13

void setup() {

  pinMode(PB1, OUTPUT);
  pinMode(PD3, OUTPUT);
  
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(PB1, HIGH);
  delay(50);
  digitalWrite(PB1, LOW);
  delay(2000);

  digitalWrite(PD3, HIGH);
  delay(500);
  digitalWrite(PD3, LOW);
  delay(1000);
}
