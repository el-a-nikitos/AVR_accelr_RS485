/*
 * AStudio_accel_metr.c
 *
 * Created: 03.01.2019 21:02:57
 * Author : mini
 */ 

#include "Library/GPIO.h"
#include "Library/UART_Serial.h"
#include "Library/TWI_wire.h"

#define LIS3DH_REG_OUT_X_L   0x28
#define LIS3DH_REG_TEMPCFG   0x1F
#define LIS3DH_REG_CTRL1     0x20
#define LIS3DH_REG_CTRL2     0x21
#define LIS3DH_REG_CTRL3     0x22
#define LIS3DH_REG_CTRL4     0x23
#define LIS3DH_REG_OUTADC3_L 0x0C
#define LIS3DH_REG_WHOAMI    0x0F

int8_t _i2caddr = 25;//0x19;
int8_t who_I_am = 128;

byte i = 0;
uint8_t test_addr, accel_adr=129;
uint8_t j = 0;

int main(void)
{
    pinMode_portB(0, OUTPUT);		// PB0 на выход
	pinMode_portB(1, OUTPUT);		// PB1 на выход
	digitalWrite_portB(1, HIGH);	// PB1 в высокий уровень/ RS485 на выход
	
	Seral_open(103);
	
	digitalWrite_portB(0, HIGH);
	
 TWI_init_speed(18);	// 18 -> 100kHz
 

 
    while (1) 
    {
		digitalWrite_portB(0, LOW);
		delay_counters(800000);

		digitalWrite_portB(0, HIGH);
		//delay_counters(50000);
		
		
		//i2c_start(_i2caddr);
		Seral_write( 0x0 );
		delay_counters(30000);
		
		//i2c_write(LIS3DH_REG_WHOAMI);
		Seral_write( 0x1 );
		delay_counters(30000);
		
		//i2c_stop();
		Seral_write( 0x2 );
		delay_counters(30000);
		
		//i2c_start(_i2caddr);
		Seral_write( 0x3 );
		delay_counters(30000);
		
		//who_I_am = i2c_read_nack();
		Seral_write( 0x4 );
		delay_counters(30000);
		
		//i2c_stop();
		Seral_write( 0x5 );
		delay_counters(30000);
		
		
		Seral_write( who_I_am );
		

    }
	return 0;
}
