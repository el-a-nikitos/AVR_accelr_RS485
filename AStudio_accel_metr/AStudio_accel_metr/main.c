/*
 * AStudio_accel_metr.c
 *
 * Created: 03.01.2019 21:02:57
 * Author : mini
 */ 

#include "Library/GPIO.h"
#include "Library/Serial.h"
#include "Library/i2c_master.h"

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
	
 i2c_init();
 for (int k=0; k<=127; k++)
 {
	 test_addr=i2c_start(j);
	 Seral_write(j);
	 Seral_write(test_addr);
	 Seral_write(255);
	 delay_counters(80000);
	 
	 if (test_addr==0)
	 {
		 digitalWrite_portB(0, LOW);
		 accel_adr = test_addr;
	 }
	 j++;
	 
	 i2c_stop();
 }
 
 
 //i2c_stop();
 
    while (1) 
    {
		//digitalWrite_portB(0, LOW);
		//delay_counters(80000);

		//digitalWrite_portB(0, HIGH);
		//delay_counters(5000);
		
		i2c_start(_i2caddr);
		Seral_write( 130 );
		delay_counters(80000);
		i2c_write(LIS3DH_REG_WHOAMI);
		Seral_write( 131 );
		delay_counters(80000);
		//who_I_am = i2c_read_nack();
		i2c_stop();
		Seral_write( 132 );
		delay_counters(80000);
		
		Seral_write( who_I_am );
		
		delay_counters(80000);

    }
	return 0;
}
