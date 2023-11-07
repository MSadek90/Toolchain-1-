#include "RCC_Interface.h"
#include "GPIO.h"
#include "ErrType.h"

#include "stm32f446xx.h"

int main(void)
{
	 RCC_AHB1EnableClock(0u);
	
	int x=0,y=0;
	PIN_CONFIG_T LedPin=
	{
		.PORT=PORTA,
		.PIN=PIN5,
		.Mode=OUTPUT,
		.OTYPE=Output_push_pull0,
		.SPEED=LOW_Speed,
		.P_UPDOWN=NO_PULL_UP_DOWN
	};
	
	x=GPIO_PinInit(&LedPin);
	
	y=GPIO_SetPinValue(PORTA,PIN5,ONE);
}
