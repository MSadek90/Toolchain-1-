# 0 "main.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "main.c"
# 1 "RCC_Interface.h" 1
# 13 "RCC_Interface.h"
typedef enum
{
    RCC_ErrorState_OK,
    RCC_ErrorState_NOT_OK,
    RCC_ErrorState_NULL_POINTER,
    RCC_ErrorState_WRONG_OPTION,
    RCC_ErrorState_TIMEOUT,
} RCC_ErrorState_t;

typedef enum
{
    RCC_CLOCKTYPE_HSE,
    RCC_CLOCKTYPE_HSI,
    RCC_CLOCKTYPE_PLL
} RCC_Clock_t;

typedef enum
{
    RCC_STATUSTYPE_ON,
    RCC_STATUSTYPE_OFF
} RCC_Status_t;

typedef enum
{
    RCC_AHB1_PERIPHERALTYPE_GPIOA,
    RCC_AHB1_PERIPHERALTYPE_GPIOB,
    RCC_AHB1_PERIPHERALTYPE_GPIOC,
    RCC_AHB1_PERIPHERALTYPE_GPIOD,
    RCC_AHB1_PERIPHERALTYPE_GPIOE,
    RCC_AHB1_PERIPHERALTYPE_GPIOF,
    RCC_AHB1_PERIPHERALTYPE_GPIOG,
    RCC_AHB1_PERIPHERALTYPE_GPIOH,
    RCC_AHB1_PERIPHERALTYPE_CRC = 12,
    RCC_AHB1_PERIPHERALTYPE_BKPSRAM = 18,
    RCC_AHB1_PERIPHERALTYPE_DMA1 = 21,
    RCC_AHB1_PERIPHERALTYPE_DMA2,
    RCC_AHB1_PERIPHERALTYPE_OTGHS = 29,
    RCC_AHB1_PERIPHERALTYPE_OTGHSULPI
} RCC_AHB1_Peripheral_t;

typedef enum
{
    RCC_APB2_PERIPHERALTYPE_TIM1,
    RCC_APB2_PERIPHERALTYPE_TIM8,
    RCC_APB2_PERIPHERALTYPE_USART1=3,
    RCC_APB2_PERIPHERALTYPE_USART6,
    RCC_APB2_PERIPHERALTYPE_ADC1=6,
    RCC_APB2_PERIPHERALTYPE_ADC2,
    RCC_APB2_PERIPHERALTYPE_ADC3,
    RCC_APB2_PERIPHERALTYPE_SDIO=10,
    RCC_APB2_PERIPHERALTYPE_SPI1,
    RCC_APB2_PERIPHERALTYPE_SPI4,
    RCC_APB2_PERIPHERALTYPE_SYSCFG,
    RCC_APB2_PERIPHERALTYPE_EXTI,
    RCC_APB2_PERIPHERALTYPE_TIM9,
    RCC_APB2_PERIPHERALTYPE_TIM10,
    RCC_APB2_PERIPHERALTYPE_TIM11,
    RCC_APB2_PERIPHERALTYPE_SAI1=21,
    RCC_APB2_PERIPHERALTYPE_SAI2=23
} RCC_APB2_Peripheral_t;

typedef enum
{
    RCC_APB1_PERIPHERALTYPE_TIM2,
    RCC_APB1_PERIPHERALTYPE_TIM3,
    RCC_APB1_PERIPHERALTYPE_TIM4,
    RCC_APB1_PERIPHERALTYPE_TIM5,
    RCC_APB1_PERIPHERALTYPE_TIM6,
    RCC_APB1_PERIPHERALTYPE_TIM7,
    RCC_APB1_PERIPHERALTYPE_TIM12,
    RCC_APB1_PERIPHERALTYPE_TIM13,
    RCC_APB1_PERIPHERALTYPE_TIM14,
    RCC_APB1_PERIPHERALTYPE_WWDG = 11,
    RCC_APB1_PERIPHERALTYPE_SPI2 = 14,
    RCC_APB1_PERIPHERALTYPE_SPI3,
    RCC_APB1_PERIPHERALTYPE_USART2 = 17,
    RCC_APB1_PERIPHERALTYPE_USART3,
    RCC_APB1_PERIPHERALTYPE_USART4,
    RCC_APB1_PERIPHERALTYPE_USART5,
    RCC_APB1_PERIPHERALTYPE_I2C1,
    RCC_APB1_PERIPHERALTYPE_I2C2,
    RCC_APB1_PERIPHERALTYPE_USB,
    RCC_APB1_PERIPHERALTYPE_CAN = 25,
    RCC_APB1_PERIPHERALTYPE_BKP = 27,
    RCC_APB1_PERIPHERALTYPE_PWR,
    RCC_APB1_PERIPHERALTYPE_DAC
} RCC_APB1_Peripheral_t;

typedef enum
{
    RCC_HSE_DIVFACTOR_DIV0,
    RCC_HSE_DIVFACTOR_DIV2
} RCC_HSE_DivFactor;

typedef enum
{
    RCC_PLL_MULFACTOR_MUL2,
    RCC_PLL_MULFACTOR_MUL3,
    RCC_PLL_MULFACTOR_MUL4,
    RCC_PLL_MULFACTOR_MUL5,
    RCC_PLL_MULFACTOR_MUL6,
    RCC_PLL_MULFACTOR_MUL7,
    RCC_PLL_MULFACTOR_MUL8,
    RCC_PLL_MULFACTOR_MUL9,
    RCC_PLL_MULFACTOR_MUL10,
    RCC_PLL_MULFACTOR_MUL11,
    RCC_PLL_MULFACTOR_MUL12,
    RCC_PLL_MULFACTOR_MUL13,
    RCC_PLL_MULFACTOR_MUL14,
    RCC_PLL_MULFACTOR_MUL15,
    RCC_PLL_MULFACTOR_MUL16
} RCC_PLL_MulFactor;

typedef enum
{
    RCC_PLL_CLKSRC_HSI,
    RCC_PLL_CLKSRC_HSE
} RCC_PLL_ClkSrc_t;




RCC_ErrorState_t RCC_SetClkSts(RCC_Clock_t Copy_ClockType, RCC_Status_t Copy_StatusType);

RCC_ErrorState_t RCC_SetSysClk(RCC_Clock_t Copy_ClockType);

RCC_ErrorState_t RCC_SetHSEConfig(RCC_HSE_DivFactor Copy_DivFactor);

RCC_ErrorState_t RCC_SetPLLConfig(RCC_PLL_MulFactor Copy_PllMulFactor, RCC_PLL_ClkSrc_t Copy_PllSource);

void RCC_AHB1EnableClock(RCC_AHB1_Peripheral_t Copy_Ahb1PeripheralName);

RCC_ErrorState_t RCC_AHB1DisableClock(RCC_AHB1_Peripheral_t Copy_Ahb1PeripheralName);

RCC_ErrorState_t RCC_APB1EnableClock(RCC_APB1_Peripheral_t Copy_Apb1PeripheralName);

RCC_ErrorState_t RCC_APB1DisableClock(RCC_APB1_Peripheral_t Copy_Apb1PeripheralName);

RCC_ErrorState_t RCC_APB2EnableClock(RCC_APB2_Peripheral_t Copy_Apb2PeripheralName);

RCC_ErrorState_t RCC_APB2DisableClock(RCC_APB2_Peripheral_t Copy_Apb2PeripheralName);
# 2 "main.c" 2
# 1 "GPIO.h" 1
# 12 "GPIO.h"
# 1 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\lib\\gcc\\arm-none-eabi\\12.3.1\\include\\stdint.h" 1 3 4
# 9 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\lib\\gcc\\arm-none-eabi\\12.3.1\\include\\stdint.h" 3 4
# 1 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 1 3 4
# 12 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 3 4
# 1 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 1 3 4







# 1 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\sys\\features.h" 1 3 4
# 28 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\sys\\features.h" 3 4
# 1 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\_newlib_version.h" 1 3 4
# 29 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\sys\\features.h" 2 3 4
# 9 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 2 3 4
# 41 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4

# 41 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\machine\\_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 2 3 4
# 1 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\sys\\_intsup.h" 1 3 4
# 35 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 190 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
       
# 14 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 2 3 4
# 1 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\sys\\_stdint.h" 1 3 4
# 20 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\sys\\_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "c:\\program files (x86)\\arm gnu toolchain arm-none-eabi\\12.3 rel1\\lib\\gcc\\arm-none-eabi\\12.3.1\\include\\stdint.h" 2 3 4
# 13 "GPIO.h" 2
# 1 "ErrType.h" 1
# 14 "GPIO.h" 2
# 28 "GPIO.h"

# 28 "GPIO.h"
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
# 54 "GPIO.h"
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
# 3 "main.c" 2


# 1 "stm32f446xx.h" 1
# 6 "main.c" 2

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
