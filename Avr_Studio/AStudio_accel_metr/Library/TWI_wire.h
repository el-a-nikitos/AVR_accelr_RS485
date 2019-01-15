/*
 * AStudio_accel_metr.c
 *
 * Created: 03.01.2019 21:02:57
 * Author : mini
 */ 
#include <util/twi.h>

void TWI_init_speed(uint8_t prescal)	{
	TWBR = prescal;
	
	// SCLfreq = CPU/(16+ 2*prescal*4^TWPS )
	// TWPS = 0;
	// prescal = 18 -> SCLfreq = 100 kHz
	// prescal = 250 -> SCLfreq = 7,9 kHz
}

void TWI_start_write_stop(uint8_t addres, uint8_t DATA)	{
	
	TWCR = 0;
	TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN);
	      //������ TWI / TWI ������ / TWI �������
	while( !(TWCR & (1<<TWINT)) );
	
	// ��������, ��� TWINT �������, �.�. �������� ���������
	/*
	��� ������ ���� �������� ��������� �������
	*/
	TWDR = (addres<<1)|(0<<0);
	TWCR = (1<<TWINT) | (1<<TWEN);
		  //������ TWI
	while( !(TWCR & (1<<TWINT)) );
	// ��������, ��� TWINT ���������, �.�. �������� ���������
	/*
	��� ���� ������ ���� �������� ��������� �������
	*/
	TWDR = DATA;
	TWCR = (1<<TWINT) | (1<<TWEN);
	while( !(TWCR & (1<<TWINT)) );
	/*
	��� ���� ������ ���� �������� ��������� �������
	*/
	TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWSTO);
	
}

uint8_t TWI_start_read_stop(uint8_t addres)	{
	uint8_t DATA = 0xFF;
	
	TWCR = 0;
	TWCR = (1<<TWINT) | (1<<TWSTA) | (1<<TWEN);
	//������ TWI / TWI ������ / TWI �������
	while( !(TWCR & (1<<TWINT)) );
	// ����� ��� ������
	TWDR = (addres<<1)|(1<<0);
	TWCR = (1<<TWINT) | (1<<TWEN);

	while( !(TWCR & (1<<TWINT)) );
	// ��������, ��� TWINT ���������, �.�. �������� ���������
	TWCR = (1<<TWINT) | (1<<TWEN);
	while( !(TWCR & (1<<TWINT)) );
	
	DATA = TWDR;

	TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWSTO);
	
	return DATA;
}

