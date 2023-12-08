VAR = arm-none-eabi-gcc

CFLAG = -c -mcpu=$(MARCH) -std=gnu11 -mthumb 

MARCH = cortex-m4


main.o: main.c
	$(VAR) $(CFLAG) $^ -o $@
 
