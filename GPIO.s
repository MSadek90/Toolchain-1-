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
	.file	"GPIO.c"
	.text
	.data
	.align	2
	.type	Array, %object
	.size	Array, 32
Array:
	.word	1073872896
	.word	1073873920
	.word	1073874944
	.word	1073875968
	.word	1073876992
	.word	1073878016
	.word	1073879040
	.word	1073880064
	.text
	.align	2
	.global	GPIO_PinInit
	.syntax unified
	.arm
	.type	GPIO_PinInit, %function
GPIO_PinInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsl	r3, r3, #1
	mov	r1, #3
	lsl	r3, r1, r3
	mvn	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L10
	ldr	r3, [r3, r0, lsl #2]
	and	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsl	r3, r3, #1
	lsl	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L10
	ldr	r3, [r3, r0, lsl #2]
	orr	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsl	r3, r3, #1
	mov	r1, #3
	lsl	r3, r1, r3
	mvn	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L10
	ldr	r3, [r3, r0, lsl #2]
	and	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsl	r3, r3, #1
	lsl	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L10
	ldr	r3, [r3, r0, lsl #2]
	orr	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L4
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L9
.L4:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	mov	r3, #1
	lsl	r3, r3, r1
	mvn	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L10
	ldr	r3, [r3, r0, lsl #2]
	and	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsl	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L10
	ldr	r3, [r3, r0, lsl #2]
	orr	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsl	r3, r3, #1
	mov	r1, #3
	lsl	r3, r1, r3
	mvn	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L10
	ldr	r3, [r3, r0, lsl #2]
	and	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsl	r3, r3, #1
	lsl	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, .L10
	ldr	r3, [r3, r0, lsl #2]
	orr	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L9
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	lsr	r2, r2, #3
	and	r0, r2, #255
	mov	r2, r0
	add	r2, r2, #8
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	and	r3, r3, #7
	lsl	r3, r3, #2
	mov	r1, #15
	lsl	r3, r1, r3
	mvn	r3, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	ip, r3
	ldr	r3, .L10
	ldr	r3, [r3, ip, lsl #2]
	and	r1, r1, r2
	add	r2, r0, #8
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L10
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	lsr	r2, r2, #3
	and	r0, r2, #255
	mov	r2, r0
	add	r2, r2, #8
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	and	r3, r3, #7
	lsl	r3, r3, #2
	mov	r1, #15
	lsl	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	ip, r3
	ldr	r3, .L10
	ldr	r3, [r3, ip, lsl #2]
	orr	r1, r2, r1
	add	r2, r0, #8
	str	r1, [r3, r2, lsl #2]
	b	.L9
.L3:
	mov	r3, #2
	strb	r3, [fp, #-5]
	b	.L7
.L2:
	mov	r3, #3
	strb	r3, [fp, #-5]
	b	.L7
.L9:
	nop
.L7:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L11:
	.align	2
.L10:
	.word	Array
	.size	GPIO_PinInit, .-GPIO_PinInit
	.align	2
	.global	GPIO_SetPinValue
	.syntax unified
	.arm
	.type	GPIO_SetPinValue, %function
GPIO_SetPinValue:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	strb	r3, [fp, #-13]
	mov	r3, r1
	strb	r3, [fp, #-14]
	mov	r3, r2
	strb	r3, [fp, #-15]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L13
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L13
	ldrb	r3, [fp, #-15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L14
	cmp	r3, #1
	beq	.L15
	b	.L20
.L14:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r2, .L21
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, [r3, #20]
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	mov	r1, #1
	lsl	r3, r1, r3
	mvn	r3, r3
	mov	r0, r3
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r1, .L21
	ldr	r3, [r1, r3, lsl #2]
	and	r2, r2, r0
	str	r2, [r3, #20]
	b	.L17
.L15:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r2, .L21
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, [r3, #20]
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	mov	r1, #1
	lsl	r3, r1, r3
	mov	r0, r3
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r1, .L21
	ldr	r3, [r1, r3, lsl #2]
	orr	r2, r2, r0
	str	r2, [r3, #20]
	b	.L17
.L20:
	mov	r3, #2
	strb	r3, [fp, #-5]
	b	.L18
.L17:
	b	.L18
.L13:
	mov	r3, #2
	strb	r3, [fp, #-5]
.L18:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L22:
	.align	2
.L21:
	.word	Array
	.size	GPIO_SetPinValue, .-GPIO_SetPinValue
	.align	2
	.global	GPIO_PinToggle
	.syntax unified
	.arm
	.type	GPIO_PinToggle, %function
GPIO_PinToggle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	mov	r2, r1
	strb	r3, [fp, #-13]
	mov	r3, r2
	strb	r3, [fp, #-14]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L24
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L24
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r2, .L27
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, [r3, #20]
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	mov	r1, #1
	lsl	r3, r1, r3
	mov	r0, r3
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r1, .L27
	ldr	r3, [r1, r3, lsl #2]
	eor	r2, r2, r0
	str	r2, [r3, #20]
	b	.L25
.L24:
	mov	r3, #2
	strb	r3, [fp, #-5]
.L25:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L28:
	.align	2
.L27:
	.word	Array
	.size	GPIO_PinToggle, .-GPIO_PinToggle
	.align	2
	.global	GPIO_READ_PIN
	.syntax unified
	.arm
	.type	GPIO_READ_PIN, %function
GPIO_READ_PIN:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	str	r2, [fp, #-20]
	strb	r3, [fp, #-13]
	mov	r3, r1
	strb	r3, [fp, #-14]
	mov	r3, #1
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L30
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L30
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r2, .L33
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, [r3, #16]
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	lsr	r3, r2, r3
	and	r2, r3, #1
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	b	.L31
.L30:
	mov	r3, #2
	strb	r3, [fp, #-5]
.L31:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L34:
	.align	2
.L33:
	.word	Array
	.size	GPIO_READ_PIN, .-GPIO_READ_PIN
	.ident	"GCC: (Arm GNU Toolchain 12.3.Rel1 (Build arm-12.35)) 12.3.1 20230626"
