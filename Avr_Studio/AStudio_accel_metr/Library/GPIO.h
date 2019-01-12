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
	INPUT = 0,
	OUTPUT
	} enumLevel;

#include <avr/io.h>


void digitalWrite_portB(byte byteNumber, enumLevel Level)	{
	byte byteBuferPort = PORTB;
	byteBuferPort &= ~(HIGH<<byteNumber);
	byteBuferPort |= (Level<<byteNumber);
	PORTB = byteBuferPort;
}

void pinMode_portB(byte byteNumber, enumLevel Level)	{
	byte byteBuferPort = DDRB;
	byteBuferPort &= ~(HIGH<<byteNumber);
	byteBuferPort |= (Level<<byteNumber);
	DDRB = byteBuferPort;
}

void delay_counters(unsigned long long_delay){
	for(unsigned long i = 0;i<long_delay;i++)
	{
		asm volatile("nop");
	}
}
