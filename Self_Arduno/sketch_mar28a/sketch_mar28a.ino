void setup() {
  // put your setup code here, to run once:
  //DDRB |= (1<<PB1);
  pinMode(9, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  PORTB |= (1<<1);
  delay(50);
  PORTB &= ~(1<<1);
  delay(1000);
}
