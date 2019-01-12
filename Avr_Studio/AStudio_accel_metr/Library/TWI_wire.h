/*
 * AStudio_accel_metr.c
 *
 * Created: 03.01.2019 21:02:57
 * Author : mini
 */ 
void TWI_init_speed(uint8_t prescal)	{
	TWSR = 0;	// TWPS = 1;
	
	TWBR = prescal;
	
	// SCLfreq = CPU/(16+ 2*prescal*4^TWPS )
	// TWPS = 1;
	// prescal = 18 -> SCLfreq = 100 kHz
}
