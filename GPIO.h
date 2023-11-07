/*
 * GPIO.h
 *
 *  Created on: Jul 20, 2023
 *      Author: Sadek
 */

#ifndef GPIO_H_
#define GPIO_H_// stm32f446r


#include <stdint.h>
#include "ErrType.h"


#define GPIOA_BASE_Address     0x40020000U
#define GPIOB_BASE_Address     0x40020400U
#define GPIOC_BASE_Address     0x40020800U
#define GPIOD_BASE_Address     0x40020C00U
#define GPIOE_BASE_Address     0x40021000U
#define GPIOF_BASE_Address     0x40021400U
#define GPIOG_BASE_Address     0x40021800U
#define GPIOH_BASE_Address     0x40021C00U




typedef struct 
{
	
volatile uint32_t MODER;
volatile uint32_t OTYPER;
volatile uint32_t OSPEEDER;
volatile uint32_t PUPDR;
volatile uint32_t IDR;
volatile uint32_t ODR;
volatile uint32_t BSRR;
volatile uint32_t LCKR;
volatile uint32_t AFR[2];

}GPIO_REG_TYPE;

#define GPIOA                            ((GPIO_REG_TYPE*)GPIOA_BASE_Address)
#define GPIOB                            ((GPIO_REG_TYPE*)GPIOB_BASE_Address)
#define GPIOC                            ((GPIO_REG_TYPE*)GPIOC_BASE_Address)
#define GPIOD                            ((GPIO_REG_TYPE*)GPIOD_BASE_Address)
#define GPIOE                            ((GPIO_REG_TYPE*)GPIOE_BASE_Address)
#define GPIOF                            ((GPIO_REG_TYPE*)GPIOF_BASE_Address)
#define GPIOG                            ((GPIO_REG_TYPE*)GPIOG_BASE_Address)
#define GPIOH                            ((GPIO_REG_TYPE*)GPIOH_BASE_Address)
							


typedef enum{
	PORTA=0,
    PORTB,
    PORTC,
    PORTD,
	PORTE,
    PORTF,
    PORTG,
	PORTH,
	NUM_OF_PORTS
}PORT_Type;



typedef enum
{
	PIN0=0,
	PIN1,
	PIN2,
	PIN3,
	PIN4,
	PIN5,
	PIN6,
	PIN7,
	PIN8,
	PIN9,
	PIN10,
	PIN11,
	PIN12,
	PIN13,
	PIN14,
	PIN15 
}PIN_Number;

typedef enum
{
	INPUT=0,
	OUTPUT,
	ALternate,
	Analog

}MODE_Type;

typedef enum
{
	Output_push_pull0=0,
	Output_open_Drain
}Output_Type;

typedef enum
{
	LOW_Speed=0,
    MEDUIM_Speed,
	FAST_Speed,
	HIGH_Speed
}Output_Speed_Type;




typedef enum
{
	NO_PULL_UP_DOWN=0,
    PULL_UP,
	PULL_DOWN
	
}PULL_UP_DOWN_Type;
	
	
	
	
typedef enum
{
	AF0=0,
	AF1,
	AF2,
	AF3,
	AF4,
	AF5,
	AF6,
	AF7,
	AF8,
	AF9,
	AF10,
	AF11,
	AF12,
	AF13,
	AF14,
	AF15,
	
}Alternate_Type;
	
	
	
typedef struct
{
	PORT_Type PORT;
	PIN_Number PIN;
	MODE_Type Mode;
	Output_Type OTYPE;
	Output_Speed_Type SPEED;
	PULL_UP_DOWN_Type P_UPDOWN;
	Alternate_Type ALT;
	
}PIN_CONFIG_T;
	

typedef enum
{
	ZERO=0,
	ONE,
}PIN_VALUE_T;
	
uint8_t GPIO_PinInit(PIN_CONFIG_T *P);
uint8_t GPIO_SetPinValue(PORT_Type port , PIN_Number number ,PIN_VALUE_T value);
uint8_t GPIO_Toggle(PORT_Type port , PIN_Number number);
uint8_t GPIO_READ_PIN(PORT_Type port,PIN_Number number, int *value);

	
	
	
	
#endif 
