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

#define LIS3DH_REG_OUT_X_L		0x28
#define LIS3DH_REG_OUT_X_H      0x29
#define LIS3DH_REG_OUT_Y_L      0x2A
#define LIS3DH_REG_OUT_Y_H      0x2B
#define LIS3DH_REG_OUT_Z_L      0x2C
#define LIS3DH_REG_OUT_Z_H      0x2D
#define LIS3DH_REG_TEMPCFG		0x1F
#define LIS3DH_REG_CTRL1		0x20
#define LIS3DH_REG_CTRL2		0x21
#define LIS3DH_REG_CTRL3		0x22
#define LIS3DH_REG_CTRL4		0x23
#define LIS3DH_REG_OUTADC3_L	0x0C
#define LIS3DH_REG_OUTADC3_H    0x0D
#define LIS3DH_REG_WHOAMI		0x0F

int8_t _i2caddr = 0x19;
int8_t who_I_am = 0xAA, Temp_H = 0xFF, Temp_L = 0xFF;
int8_t aX_L = 0, aX_H = 0, aY_L = 0, aY_H = 0, aZ_L = 0, aZ_H = 0;

int main(void)
{
    pinMode_portB(0, OUTPUT);		// PB0 на выход
	pinMode_portB(1, OUTPUT);		// PB1 на выход
	digitalWrite_portB(1, HIGH);	// PB1 в высокий уровень/ RS485 на выход
	
	UART_open(103);
	
	digitalWrite_portB(0, HIGH);
	
	TWI_init_speed(95);	// 18 -> 100kHz; 250 -> 7,9 kHz
	
	TWI_write_byte(_i2caddr, LIS3DH_REG_TEMPCFG, 0b11000000);
	/*
	LIS3DH_REG_TEMPCFG:	7->ADC_enable 
						6->Temp_enable 
						5->zero 
						4->zero 
						3->zero 
						2->zero 
						1->zero 
						0->zero
						*/
	TWI_write_byte(_i2caddr, LIS3DH_REG_CTRL1, 0b10010111);
	/*
	LIS3DH_REG_TEMPCFG:	7->Data rate.3	speed 
						6->Data rate.2
						5->Data rate.1
						4->Data rate.0 
						3->Low power mode
						2->Z-axis enable
						1->Y-axis enable
						0->X-axis enable
						*/
	TWI_write_byte(_i2caddr, LIS3DH_REG_CTRL3, 0b00010000);
	/*
	LIS3DH_REG_TEMPCFG:	7->Clck INT1 interrupt
						6->AOI1 INT1 interrupt
						5->AOI2 INT1 interrupt
						4->DRDY1 INT1 interrupt
						3->DRDY2 INT1 interrupt
						2->FIFO Wtermark INT1 interrupt
						1->FIFO overrun INT1 interrupt
						0->zero
						*/
	TWI_write_byte(_i2caddr, LIS3DH_REG_CTRL4, 0b10110000);
	/*
	LIS3DH_REG_TEMPCFG:	7->Output register not update/ whle read MSB LSB
						6->Big/little endian data
						5->full_scale.1
						4->full_scale.2
						3->High resolution
						2->self_test.1
						1->self_test.0
						0->SPI mode
						*/
    while (1) 
    {
		digitalWrite_portB(0, LOW);
		delay_counters(800000);

		digitalWrite_portB(0, HIGH);
		delay_counters(30000);
		
		who_I_am = TWI_read_byte(_i2caddr, LIS3DH_REG_WHOAMI);
		
		Temp_H = TWI_read_byte(_i2caddr, LIS3DH_REG_OUTADC3_H);
		
		aX_L = TWI_read_byte(_i2caddr, LIS3DH_REG_OUT_X_L);
		aX_H = TWI_read_byte(_i2caddr, LIS3DH_REG_OUT_X_H);
		aY_L = TWI_read_byte(_i2caddr, LIS3DH_REG_OUT_Y_L);
		aY_H = TWI_read_byte(_i2caddr, LIS3DH_REG_OUT_Y_H);
		aZ_L = TWI_read_byte(_i2caddr, LIS3DH_REG_OUT_Z_L);
		aZ_H = TWI_read_byte(_i2caddr, LIS3DH_REG_OUT_Z_H);
		
		UART_write( who_I_am );
		/*
		UART_write( Temp_H );
		
		UART_write( 100 );
		UART_write( aX_L );
		UART_write( aX_H );
		
		UART_write( 101 );
		UART_write( aY_L );
		UART_write( aY_H );
		
		UART_write( 102 );
		UART_write( aZ_L );
		UART_write( aZ_H );
		
		UART_write( who_I_am + 1 );
		*/
		
    }
	return 0;
}