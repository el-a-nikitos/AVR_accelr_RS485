/*
 * AStudio_accel_metr.c
 *
 * Created: 03.01.2019 21:02:57
 * Author : mini
 */ 
typedef unsigned char byte;

typedef enum enumLevel	{
	LOW = 0,
	HIGH,
	} enumLevel;

#include <avr/io.h>

void write_portB(byte byteNumber, enumLevel Level)	{
	byte byteBuferPort = PORTB;
	byteBuferPort &= ~(HIGH<<byteNumber);
	byteBuferPort |= (Level<<byteNumber);
	PORTB = byteBuferPort;
}

void delay_counters(unsigned long long_delay){
	for(unsigned long i = 0;i<long_delay;i++)
	{
		asm volatile("nop");
	}
}

int main(void)
{
    DDRB |= (1<<0);	// PB0 на выход
    while (1) 
    {
		//PORTB |= (1<<0);
		write_portB(0, LOW);
		delay_counters(200000);
		//PORTB &= ~(1<<0);
		write_portB(0, HIGH);
		delay_counters(5000);
    }
	return 0;
}
