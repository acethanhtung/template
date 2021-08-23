;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _TIM4_ClearFlag
	.globl _TIM4_GetFlagStatus
	.globl _TIM4_SetCounter
	.globl _TIM4_Cmd
	.globl _TIM4_TimeBaseInit
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _GPIO_DeInit
	.globl _CLK_HSIPrescalerConfig
	.globl _delay_ms
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	main.c: 5: void delay_ms(uint16_t u16Delay)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	sub	sp, #2
;	main.c: 8: while (u16Delay) {
	ldw	y, (0x05, sp)
	ldw	(0x01, sp), y
00104$:
	ldw	x, (0x01, sp)
	jreq	00107$
;	main.c: 9: TIM4_SetCounter(0);
	push	#0x00
	call	_TIM4_SetCounter
	pop	a
;	main.c: 10: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	push	#0x01
	call	_TIM4_ClearFlag
	pop	a
;	main.c: 11: while (TIM4_GetFlagStatus(TIM4_FLAG_UPDATE) == RESET) {
00101$:
	push	#0x01
	call	_TIM4_GetFlagStatus
	addw	sp, #1
	tnz	a
	jreq	00101$
;	main.c: 13: --u16Delay;
	ldw	x, (0x01, sp)
	decw	x
	ldw	(0x01, sp), x
	jra	00104$
00107$:
;	main.c: 15: }
	addw	sp, #2
	ret
;	main.c: 17: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 20: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	push	#0x00
	call	_CLK_HSIPrescalerConfig
	pop	a
;	main.c: 21: GPIO_DeInit(GPIOB);
	push	#0x05
	push	#0x50
	call	_GPIO_DeInit
	addw	sp, #2
;	main.c: 22: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);
	push	#0xe0
	push	#0x20
	push	#0x05
	push	#0x50
	call	_GPIO_Init
	addw	sp, #4
;	main.c: 23: TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125 - 1);
	push	#0x7c
	push	#0x07
	call	_TIM4_TimeBaseInit
	addw	sp, #2
;	main.c: 24: TIM4_Cmd(ENABLE);
	push	#0x01
	call	_TIM4_Cmd
	pop	a
;	main.c: 26: while(1) {
00102$:
;	main.c: 27: delay_ms(500);
	push	#0xf4
	push	#0x01
	call	_delay_ms
	addw	sp, #2
;	main.c: 28: GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
	push	#0x20
	push	#0x05
	push	#0x50
	call	_GPIO_WriteReverse
	addw	sp, #3
	jra	00102$
;	main.c: 30: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
