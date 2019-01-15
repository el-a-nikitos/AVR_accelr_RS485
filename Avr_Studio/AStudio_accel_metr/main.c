/*
 * AStudio_accel_metr.c
 *
 * Created: 03.01.2019 21:02:57
 * Author : mini
 */ 
#define F_CPU 16000000UL

#include "Library/GPIO.h"
#include "Library/UART_Serial.h"
#include "Library/TWI_wire.h"
//#include "Library/i2c_master.h"
#include "Library/i2c.h"

#define LIS3DH_REG_OUT_X_L   0x28
#define LIS3DH_REG_TEMPCFG   0x1F
#define LIS3DH_REG_CTRL1     0x20
#define LIS3DH_REG_CTRL2     0x21
#define LIS3DH_REG_CTRL3     0x22
#define LIS3DH_REG_CTRL4     0x23
#define LIS3DH_REG_OUTADC3_L 0x0C
#define LIS3DH_REG_WHOAMI    0x0F

int8_t _i2caddr = 0x19;
int8_t who_I_am = 0xAA;

int main(void)
{
    pinMode_portB(0, OUTPUT);		// PB0 на выход
	pinMode_portB(1, OUTPUT);		// PB1 на выход
	digitalWrite_portB(1, HIGH);	// PB1 в высокий уровень/ RS485 на выход
	
	UART_open(103);
	
	digitalWrite_portB(0, HIGH);
	
	TWI_init_speed(95);	// 18 -> 100kHz; 250 -> 7,9 kHz
	
	UART_write( 0xA0 );
	UART_write( 0xA1 );
	
	//i2c_programm_init(); 
	
	UART_write( 0xA2 );
	UART_write( 0xA3 );
 
    while (1) 
    {
		digitalWrite_portB(0, LOW);
		delay_counters(800000);

		digitalWrite_portB(0, HIGH);
		delay_counters(50000);
		
		TWI_start_write_stop(_i2caddr, LIS3DH_REG_WHOAMI);

		delay_counters(200);

		who_I_am = TWI_start_read_stop(_i2caddr);
		
		UART_write( who_I_am );
	
    }
	return 0;
}
