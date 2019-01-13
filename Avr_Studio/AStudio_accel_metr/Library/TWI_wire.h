/*
 * AStudio_accel_metr.c
 *
 * Created: 03.01.2019 21:02:57
 * Author : mini
 */ 
#include <util/twi.h>

void TWI_init_speed(uint8_t prescal)	{
	TWSR = 0;	// TWPS = 1;
	
	TWBR = prescal;
	
	// SCLfreq = CPU/(16+ 2*prescal*4^TWPS )
	// TWPS = 1;
	// prescal = 18 -> SCLfreq = 100 kHz
	// prescal = 250 -> SCLfreq = 7,9 kHz
}

void TWI_start_write_stop(uint8_t addres, uint8_t DATA)	{
	
	TWCR = 0;
	TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN);
	      //запуск TWI / TWI мастер / TWI включен
	while( !(TWCR & (1<<TWINT)) );
	// проверка, что TWINT сброшен, т.е. операция выполнена
	/*
	тут должна быть проверка регистров статуса, вместо него пока просто задержка
	*/
			UART_write( TWSR );
			delay_counters(300000);
			UART_write( 0xC1 );
			delay_counters(300000);
	
	
	TWDR = addres;
			
	TWCR = (1<<TWINT) | (1<<TWEN);
		  //запуск TWI
	while( !(TWCR & (1<<TWINT)) );
	// проверка, что TWINT выставлен, т.е. операция выполнена
	/*
	тут тоже должна быть проверка регистров статуса, вместо него тоже пока просто задержка
	*/
			UART_write( TWSR );
			delay_counters(300000);
			UART_write( 0xC2 );
			delay_counters(300000);
	/*
	TWDR = DATA;
	
	TWCR = (1<<TWINT) | (1<<TWEN);
	while( !(TWCR & (1<<TWINT)) );
	*/
	/*
	тут тоже должна быть проверка регистров статуса, вместо него тоже пока просто задержка
	*/
			UART_write( TWSR );
			delay_counters(300000);
			UART_write( 0xC3 );
			delay_counters(300000);
			
	TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWSTO);
	
}

uint8_t TWI_start_read_stop(uint8_t addres)	{
	uint8_t DATA = 0xFF;
	
	TWCR = 0;
	TWCR =  (1<<TWINT) | (1<<TWSTA) | (1<<TWEN);
	      //запуск TWI / TWI мастер / TWI включен
	while( !(TWCR & (1<<TWINT)) );
	// проверка, что TWINT сброшен, т.е. операция выполнена
	/*
	тут должна быть проверка регистров статуса, вместо него пока просто задержка
	*/
			delay_counters(300000);
	
	TWDR = addres;
	
	TWCR = (1<<TWINT) | (1<<TWEN);
		  //запуск TWI
	while( !(TWCR & (1<<TWINT)) );
	// проверка, что TWINT выставлен, т.е. операция выполнена
	
	/*
	тут тоже должна быть проверка регистров статуса, вместо него тоже пока просто задержка
	*/
			delay_counters(300000);
		
	TWCR = (1<<TWINT) | (1<<TWEN);
	DATA = TWDR;	
	
	TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWSTO);
	
	return DATA;
}
