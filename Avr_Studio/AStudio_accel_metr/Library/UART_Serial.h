
typedef enum UART_speed	{
	s4800 = 207, 
	s9600 = 103,
	s19200 = 51,
	s38400 = 25,
	s115200 = 8
} UART_speed;


void UART_open(unsigned char ubrr)	{
	//UBRRH = (unsigned char)(ubrr>>8);
	UBRRH = 0;
	UBRRL = (unsigned char)(ubrr);
	
	
	UCSRB = (1<<RXEN)|(1<<TXEN);
	UCSRC = (1<<URSEL)|(1<<USBS)|(3<<UCSZ0);
}
 
 
 void UART_write(byte data)	{
	 while ( !((UCSRA)&(1<<UDRE)) );
	 
	 UDR = data;
 }