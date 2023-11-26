	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r0, #0
	bl	RCC_AHB1EnableClock
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	sub	r3, fp, #20
	mov	r2, #0
	str	r2, [r3]
	strh	r2, [r3, #4]	@ movhi
	strb	r2, [r3, #6]
	mov	r3, #5
	strb	r3, [fp, #-19]
	mov	r3, #1
	strb	r3, [fp, #-18]
	sub	r3, fp, #20
	mov	r0, r3
	bl	GPIO_PinInit
	mov	r3, r0
	str	r3, [fp, #-8]
	mov	r2, #1
	mov	r1, #5
	mov	r0, #0
	bl	GPIO_SetPinValue
	mov	r3, r0
	str	r3, [fp, #-12]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.size	main, .-main
	.ident	"GCC: (Arm GNU Toolchain 12.3.Rel1 (Build arm-12.35)) 12.3.1 20230626"
