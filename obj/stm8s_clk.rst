                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.1.0 #12072 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivExp
                                     13 	.globl _CLK_DeInit
                                     14 	.globl _CLK_FastHaltWakeUpCmd
                                     15 	.globl _CLK_HSECmd
                                     16 	.globl _CLK_HSICmd
                                     17 	.globl _CLK_LSICmd
                                     18 	.globl _CLK_CCOCmd
                                     19 	.globl _CLK_ClockSwitchCmd
                                     20 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     21 	.globl _CLK_PeripheralClockConfig
                                     22 	.globl _CLK_ClockSwitchConfig
                                     23 	.globl _CLK_HSIPrescalerConfig
                                     24 	.globl _CLK_CCOConfig
                                     25 	.globl _CLK_ITConfig
                                     26 	.globl _CLK_SYSCLKConfig
                                     27 	.globl _CLK_SWIMConfig
                                     28 	.globl _CLK_ClockSecuritySystemEnable
                                     29 	.globl _CLK_GetSYSCLKSource
                                     30 	.globl _CLK_GetClockFreq
                                     31 	.globl _CLK_AdjustHSICalibrationValue
                                     32 	.globl _CLK_SYSCLKEmergencyClear
                                     33 	.globl _CLK_GetFlagStatus
                                     34 	.globl _CLK_GetITStatus
                                     35 	.globl _CLK_ClearITPendingBit
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 
                                     49 ; default segment ordering for linker
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area CONST
                                     54 	.area INITIALIZER
                                     55 	.area CODE
                                     56 
                                     57 ;--------------------------------------------------------
                                     58 ; global & static initialisations
                                     59 ;--------------------------------------------------------
                                     60 	.area HOME
                                     61 	.area GSINIT
                                     62 	.area GSFINAL
                                     63 	.area GSINIT
                                     64 ;--------------------------------------------------------
                                     65 ; Home
                                     66 ;--------------------------------------------------------
                                     67 	.area HOME
                                     68 	.area HOME
                                     69 ;--------------------------------------------------------
                                     70 ; code
                                     71 ;--------------------------------------------------------
                                     72 	.area CODE
                                     73 ;	lib/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     74 ;	-----------------------------------------
                                     75 ;	 function CLK_DeInit
                                     76 ;	-----------------------------------------
      00826F                         77 _CLK_DeInit:
                                     78 ;	lib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      00826F 35 01 50 C0      [ 1]   79 	mov	0x50c0+0, #0x01
                                     80 ;	lib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008273 35 00 50 C1      [ 1]   81 	mov	0x50c1+0, #0x00
                                     82 ;	lib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008277 35 E1 50 C4      [ 1]   83 	mov	0x50c4+0, #0xe1
                                     84 ;	lib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00827B 35 00 50 C5      [ 1]   85 	mov	0x50c5+0, #0x00
                                     86 ;	lib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      00827F 35 18 50 C6      [ 1]   87 	mov	0x50c6+0, #0x18
                                     88 ;	lib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008283 35 FF 50 C7      [ 1]   89 	mov	0x50c7+0, #0xff
                                     90 ;	lib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008287 35 FF 50 CA      [ 1]   91 	mov	0x50ca+0, #0xff
                                     92 ;	lib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00828B 35 00 50 C8      [ 1]   93 	mov	0x50c8+0, #0x00
                                     94 ;	lib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00828F 35 00 50 C9      [ 1]   95 	mov	0x50c9+0, #0x00
                                     96 ;	lib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008293                         97 00101$:
      008293 C6 50 C9         [ 1]   98 	ld	a, 0x50c9
      008296 44               [ 1]   99 	srl	a
      008297 25 FA            [ 1]  100 	jrc	00101$
                                    101 ;	lib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008299 35 00 50 C9      [ 1]  102 	mov	0x50c9+0, #0x00
                                    103 ;	lib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      00829D 35 00 50 CC      [ 1]  104 	mov	0x50cc+0, #0x00
                                    105 ;	lib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      0082A1 35 00 50 CD      [ 1]  106 	mov	0x50cd+0, #0x00
                                    107 ;	lib/src/stm8s_clk.c: 88: }
      0082A5 81               [ 4]  108 	ret
                                    109 ;	lib/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    110 ;	-----------------------------------------
                                    111 ;	 function CLK_FastHaltWakeUpCmd
                                    112 ;	-----------------------------------------
      0082A6                        113 _CLK_FastHaltWakeUpCmd:
                                    114 ;	lib/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      0082A6 C6 50 C0         [ 1]  115 	ld	a, 0x50c0
                                    116 ;	lib/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      0082A9 0D 03            [ 1]  117 	tnz	(0x03, sp)
      0082AB 27 06            [ 1]  118 	jreq	00102$
                                    119 ;	lib/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      0082AD AA 04            [ 1]  120 	or	a, #0x04
      0082AF C7 50 C0         [ 1]  121 	ld	0x50c0, a
      0082B2 81               [ 4]  122 	ret
      0082B3                        123 00102$:
                                    124 ;	lib/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      0082B3 A4 FB            [ 1]  125 	and	a, #0xfb
      0082B5 C7 50 C0         [ 1]  126 	ld	0x50c0, a
                                    127 ;	lib/src/stm8s_clk.c: 114: }
      0082B8 81               [ 4]  128 	ret
                                    129 ;	lib/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    130 ;	-----------------------------------------
                                    131 ;	 function CLK_HSECmd
                                    132 ;	-----------------------------------------
      0082B9                        133 _CLK_HSECmd:
                                    134 ;	lib/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082B9 C6 50 C1         [ 1]  135 	ld	a, 0x50c1
                                    136 ;	lib/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      0082BC 0D 03            [ 1]  137 	tnz	(0x03, sp)
      0082BE 27 06            [ 1]  138 	jreq	00102$
                                    139 ;	lib/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0082C0 AA 01            [ 1]  140 	or	a, #0x01
      0082C2 C7 50 C1         [ 1]  141 	ld	0x50c1, a
      0082C5 81               [ 4]  142 	ret
      0082C6                        143 00102$:
                                    144 ;	lib/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0082C6 A4 FE            [ 1]  145 	and	a, #0xfe
      0082C8 C7 50 C1         [ 1]  146 	ld	0x50c1, a
                                    147 ;	lib/src/stm8s_clk.c: 136: }
      0082CB 81               [ 4]  148 	ret
                                    149 ;	lib/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    150 ;	-----------------------------------------
                                    151 ;	 function CLK_HSICmd
                                    152 ;	-----------------------------------------
      0082CC                        153 _CLK_HSICmd:
                                    154 ;	lib/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0082CC C6 50 C0         [ 1]  155 	ld	a, 0x50c0
                                    156 ;	lib/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      0082CF 0D 03            [ 1]  157 	tnz	(0x03, sp)
      0082D1 27 06            [ 1]  158 	jreq	00102$
                                    159 ;	lib/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0082D3 AA 01            [ 1]  160 	or	a, #0x01
      0082D5 C7 50 C0         [ 1]  161 	ld	0x50c0, a
      0082D8 81               [ 4]  162 	ret
      0082D9                        163 00102$:
                                    164 ;	lib/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0082D9 A4 FE            [ 1]  165 	and	a, #0xfe
      0082DB C7 50 C0         [ 1]  166 	ld	0x50c0, a
                                    167 ;	lib/src/stm8s_clk.c: 158: }
      0082DE 81               [ 4]  168 	ret
                                    169 ;	lib/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    170 ;	-----------------------------------------
                                    171 ;	 function CLK_LSICmd
                                    172 ;	-----------------------------------------
      0082DF                        173 _CLK_LSICmd:
                                    174 ;	lib/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0082DF C6 50 C0         [ 1]  175 	ld	a, 0x50c0
                                    176 ;	lib/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      0082E2 0D 03            [ 1]  177 	tnz	(0x03, sp)
      0082E4 27 06            [ 1]  178 	jreq	00102$
                                    179 ;	lib/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0082E6 AA 08            [ 1]  180 	or	a, #0x08
      0082E8 C7 50 C0         [ 1]  181 	ld	0x50c0, a
      0082EB 81               [ 4]  182 	ret
      0082EC                        183 00102$:
                                    184 ;	lib/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0082EC A4 F7            [ 1]  185 	and	a, #0xf7
      0082EE C7 50 C0         [ 1]  186 	ld	0x50c0, a
                                    187 ;	lib/src/stm8s_clk.c: 181: }
      0082F1 81               [ 4]  188 	ret
                                    189 ;	lib/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    190 ;	-----------------------------------------
                                    191 ;	 function CLK_CCOCmd
                                    192 ;	-----------------------------------------
      0082F2                        193 _CLK_CCOCmd:
                                    194 ;	lib/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0082F2 C6 50 C9         [ 1]  195 	ld	a, 0x50c9
                                    196 ;	lib/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      0082F5 0D 03            [ 1]  197 	tnz	(0x03, sp)
      0082F7 27 06            [ 1]  198 	jreq	00102$
                                    199 ;	lib/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0082F9 AA 01            [ 1]  200 	or	a, #0x01
      0082FB C7 50 C9         [ 1]  201 	ld	0x50c9, a
      0082FE 81               [ 4]  202 	ret
      0082FF                        203 00102$:
                                    204 ;	lib/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      0082FF A4 FE            [ 1]  205 	and	a, #0xfe
      008301 C7 50 C9         [ 1]  206 	ld	0x50c9, a
                                    207 ;	lib/src/stm8s_clk.c: 204: }
      008304 81               [ 4]  208 	ret
                                    209 ;	lib/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    210 ;	-----------------------------------------
                                    211 ;	 function CLK_ClockSwitchCmd
                                    212 ;	-----------------------------------------
      008305                        213 _CLK_ClockSwitchCmd:
                                    214 ;	lib/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      008305 C6 50 C5         [ 1]  215 	ld	a, 0x50c5
                                    216 ;	lib/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      008308 0D 03            [ 1]  217 	tnz	(0x03, sp)
      00830A 27 06            [ 1]  218 	jreq	00102$
                                    219 ;	lib/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00830C AA 02            [ 1]  220 	or	a, #0x02
      00830E C7 50 C5         [ 1]  221 	ld	0x50c5, a
      008311 81               [ 4]  222 	ret
      008312                        223 00102$:
                                    224 ;	lib/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008312 A4 FD            [ 1]  225 	and	a, #0xfd
      008314 C7 50 C5         [ 1]  226 	ld	0x50c5, a
                                    227 ;	lib/src/stm8s_clk.c: 228: }
      008317 81               [ 4]  228 	ret
                                    229 ;	lib/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    230 ;	-----------------------------------------
                                    231 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    232 ;	-----------------------------------------
      008318                        233 _CLK_SlowActiveHaltWakeUpCmd:
                                    234 ;	lib/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008318 C6 50 C0         [ 1]  235 	ld	a, 0x50c0
                                    236 ;	lib/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      00831B 0D 03            [ 1]  237 	tnz	(0x03, sp)
      00831D 27 06            [ 1]  238 	jreq	00102$
                                    239 ;	lib/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      00831F AA 20            [ 1]  240 	or	a, #0x20
      008321 C7 50 C0         [ 1]  241 	ld	0x50c0, a
      008324 81               [ 4]  242 	ret
      008325                        243 00102$:
                                    244 ;	lib/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      008325 A4 DF            [ 1]  245 	and	a, #0xdf
      008327 C7 50 C0         [ 1]  246 	ld	0x50c0, a
                                    247 ;	lib/src/stm8s_clk.c: 253: }
      00832A 81               [ 4]  248 	ret
                                    249 ;	lib/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    250 ;	-----------------------------------------
                                    251 ;	 function CLK_PeripheralClockConfig
                                    252 ;	-----------------------------------------
      00832B                        253 _CLK_PeripheralClockConfig:
      00832B 52 02            [ 2]  254 	sub	sp, #2
                                    255 ;	lib/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00832D 7B 05            [ 1]  256 	ld	a, (0x05, sp)
      00832F A4 0F            [ 1]  257 	and	a, #0x0f
      008331 88               [ 1]  258 	push	a
      008332 A6 01            [ 1]  259 	ld	a, #0x01
      008334 6B 02            [ 1]  260 	ld	(0x02, sp), a
      008336 84               [ 1]  261 	pop	a
      008337 4D               [ 1]  262 	tnz	a
      008338 27 05            [ 1]  263 	jreq	00128$
      00833A                        264 00127$:
      00833A 08 01            [ 1]  265 	sll	(0x01, sp)
      00833C 4A               [ 1]  266 	dec	a
      00833D 26 FB            [ 1]  267 	jrne	00127$
      00833F                        268 00128$:
                                    269 ;	lib/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00833F 7B 01            [ 1]  270 	ld	a, (0x01, sp)
      008341 43               [ 1]  271 	cpl	a
      008342 6B 02            [ 1]  272 	ld	(0x02, sp), a
                                    273 ;	lib/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      008344 7B 05            [ 1]  274 	ld	a, (0x05, sp)
      008346 A5 10            [ 1]  275 	bcp	a, #0x10
      008348 26 15            [ 1]  276 	jrne	00108$
                                    277 ;	lib/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00834A C6 50 C7         [ 1]  278 	ld	a, 0x50c7
                                    279 ;	lib/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      00834D 0D 06            [ 1]  280 	tnz	(0x06, sp)
      00834F 27 07            [ 1]  281 	jreq	00102$
                                    282 ;	lib/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008351 1A 01            [ 1]  283 	or	a, (0x01, sp)
      008353 C7 50 C7         [ 1]  284 	ld	0x50c7, a
      008356 20 1A            [ 2]  285 	jra	00110$
      008358                        286 00102$:
                                    287 ;	lib/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008358 14 02            [ 1]  288 	and	a, (0x02, sp)
      00835A C7 50 C7         [ 1]  289 	ld	0x50c7, a
      00835D 20 13            [ 2]  290 	jra	00110$
      00835F                        291 00108$:
                                    292 ;	lib/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00835F C6 50 CA         [ 1]  293 	ld	a, 0x50ca
                                    294 ;	lib/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      008362 0D 06            [ 1]  295 	tnz	(0x06, sp)
      008364 27 07            [ 1]  296 	jreq	00105$
                                    297 ;	lib/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008366 1A 01            [ 1]  298 	or	a, (0x01, sp)
      008368 C7 50 CA         [ 1]  299 	ld	0x50ca, a
      00836B 20 05            [ 2]  300 	jra	00110$
      00836D                        301 00105$:
                                    302 ;	lib/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00836D 14 02            [ 1]  303 	and	a, (0x02, sp)
      00836F C7 50 CA         [ 1]  304 	ld	0x50ca, a
      008372                        305 00110$:
                                    306 ;	lib/src/stm8s_clk.c: 295: }
      008372 5B 02            [ 2]  307 	addw	sp, #2
      008374 81               [ 4]  308 	ret
                                    309 ;	lib/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    310 ;	-----------------------------------------
                                    311 ;	 function CLK_ClockSwitchConfig
                                    312 ;	-----------------------------------------
      008375                        313 _CLK_ClockSwitchConfig:
                                    314 ;	lib/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      008375 C6 50 C3         [ 1]  315 	ld	a, 0x50c3
      008378 90 97            [ 1]  316 	ld	yl, a
                                    317 ;	lib/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00837A C6 50 C5         [ 1]  318 	ld	a, 0x50c5
                                    319 ;	lib/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      00837D 88               [ 1]  320 	push	a
      00837E 7B 04            [ 1]  321 	ld	a, (0x04, sp)
      008380 4A               [ 1]  322 	dec	a
      008381 84               [ 1]  323 	pop	a
      008382 26 37            [ 1]  324 	jrne	00122$
                                    325 ;	lib/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      008384 AA 02            [ 1]  326 	or	a, #0x02
      008386 C7 50 C5         [ 1]  327 	ld	0x50c5, a
      008389 C6 50 C5         [ 1]  328 	ld	a, 0x50c5
                                    329 ;	lib/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      00838C 0D 05            [ 1]  330 	tnz	(0x05, sp)
      00838E 27 07            [ 1]  331 	jreq	00102$
                                    332 ;	lib/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      008390 AA 04            [ 1]  333 	or	a, #0x04
      008392 C7 50 C5         [ 1]  334 	ld	0x50c5, a
      008395 20 05            [ 2]  335 	jra	00103$
      008397                        336 00102$:
                                    337 ;	lib/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      008397 A4 FB            [ 1]  338 	and	a, #0xfb
      008399 C7 50 C5         [ 1]  339 	ld	0x50c5, a
      00839C                        340 00103$:
                                    341 ;	lib/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      00839C AE 50 C4         [ 2]  342 	ldw	x, #0x50c4
      00839F 7B 04            [ 1]  343 	ld	a, (0x04, sp)
      0083A1 F7               [ 1]  344 	ld	(x), a
                                    345 ;	lib/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      0083A2 5F               [ 1]  346 	clrw	x
      0083A3 5A               [ 2]  347 	decw	x
      0083A4                        348 00105$:
      0083A4 C6 50 C5         [ 1]  349 	ld	a, 0x50c5
      0083A7 44               [ 1]  350 	srl	a
      0083A8 24 06            [ 1]  351 	jrnc	00107$
      0083AA 5D               [ 2]  352 	tnzw	x
      0083AB 27 03            [ 1]  353 	jreq	00107$
                                    354 ;	lib/src/stm8s_clk.c: 346: DownCounter--;
      0083AD 5A               [ 2]  355 	decw	x
      0083AE 20 F4            [ 2]  356 	jra	00105$
      0083B0                        357 00107$:
                                    358 ;	lib/src/stm8s_clk.c: 349: if(DownCounter != 0)
      0083B0 5D               [ 2]  359 	tnzw	x
      0083B1 27 05            [ 1]  360 	jreq	00109$
                                    361 ;	lib/src/stm8s_clk.c: 351: Swif = SUCCESS;
      0083B3 A6 01            [ 1]  362 	ld	a, #0x01
      0083B5 97               [ 1]  363 	ld	xl, a
      0083B6 20 34            [ 2]  364 	jra	00123$
      0083B8                        365 00109$:
                                    366 ;	lib/src/stm8s_clk.c: 355: Swif = ERROR;
      0083B8 5F               [ 1]  367 	clrw	x
      0083B9 20 31            [ 2]  368 	jra	00123$
      0083BB                        369 00122$:
                                    370 ;	lib/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      0083BB 0D 05            [ 1]  371 	tnz	(0x05, sp)
      0083BD 27 07            [ 1]  372 	jreq	00112$
                                    373 ;	lib/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      0083BF AA 04            [ 1]  374 	or	a, #0x04
      0083C1 C7 50 C5         [ 1]  375 	ld	0x50c5, a
      0083C4 20 05            [ 2]  376 	jra	00113$
      0083C6                        377 00112$:
                                    378 ;	lib/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0083C6 A4 FB            [ 1]  379 	and	a, #0xfb
      0083C8 C7 50 C5         [ 1]  380 	ld	0x50c5, a
      0083CB                        381 00113$:
                                    382 ;	lib/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      0083CB AE 50 C4         [ 2]  383 	ldw	x, #0x50c4
      0083CE 7B 04            [ 1]  384 	ld	a, (0x04, sp)
      0083D0 F7               [ 1]  385 	ld	(x), a
                                    386 ;	lib/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0083D1 5F               [ 1]  387 	clrw	x
      0083D2 5A               [ 2]  388 	decw	x
      0083D3                        389 00115$:
      0083D3 C6 50 C5         [ 1]  390 	ld	a, 0x50c5
      0083D6 A5 08            [ 1]  391 	bcp	a, #0x08
      0083D8 27 06            [ 1]  392 	jreq	00117$
      0083DA 5D               [ 2]  393 	tnzw	x
      0083DB 27 03            [ 1]  394 	jreq	00117$
                                    395 ;	lib/src/stm8s_clk.c: 376: DownCounter--;
      0083DD 5A               [ 2]  396 	decw	x
      0083DE 20 F3            [ 2]  397 	jra	00115$
      0083E0                        398 00117$:
                                    399 ;	lib/src/stm8s_clk.c: 379: if(DownCounter != 0)
      0083E0 5D               [ 2]  400 	tnzw	x
      0083E1 27 08            [ 1]  401 	jreq	00119$
                                    402 ;	lib/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      0083E3 72 12 50 C5      [ 1]  403 	bset	20677, #1
                                    404 ;	lib/src/stm8s_clk.c: 383: Swif = SUCCESS;
      0083E7 A6 01            [ 1]  405 	ld	a, #0x01
      0083E9 97               [ 1]  406 	ld	xl, a
                                    407 ;	lib/src/stm8s_clk.c: 387: Swif = ERROR;
      0083EA 21                     408 	.byte 0x21
      0083EB                        409 00119$:
      0083EB 5F               [ 1]  410 	clrw	x
      0083EC                        411 00123$:
                                    412 ;	lib/src/stm8s_clk.c: 390: if(Swif != ERROR)
      0083EC 9F               [ 1]  413 	ld	a, xl
      0083ED 4D               [ 1]  414 	tnz	a
      0083EE 27 2E            [ 1]  415 	jreq	00136$
                                    416 ;	lib/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0083F0 0D 06            [ 1]  417 	tnz	(0x06, sp)
      0083F2 26 0C            [ 1]  418 	jrne	00132$
      0083F4 90 9F            [ 1]  419 	ld	a, yl
      0083F6 A1 E1            [ 1]  420 	cp	a, #0xe1
      0083F8 26 06            [ 1]  421 	jrne	00132$
                                    422 ;	lib/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0083FA 72 11 50 C0      [ 1]  423 	bres	20672, #0
      0083FE 20 1E            [ 2]  424 	jra	00136$
      008400                        425 00132$:
                                    426 ;	lib/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      008400 0D 06            [ 1]  427 	tnz	(0x06, sp)
      008402 26 0C            [ 1]  428 	jrne	00128$
      008404 90 9F            [ 1]  429 	ld	a, yl
      008406 A1 D2            [ 1]  430 	cp	a, #0xd2
      008408 26 06            [ 1]  431 	jrne	00128$
                                    432 ;	lib/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00840A 72 17 50 C0      [ 1]  433 	bres	20672, #3
      00840E 20 0E            [ 2]  434 	jra	00136$
      008410                        435 00128$:
                                    436 ;	lib/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008410 0D 06            [ 1]  437 	tnz	(0x06, sp)
      008412 26 0A            [ 1]  438 	jrne	00136$
      008414 90 9F            [ 1]  439 	ld	a, yl
      008416 A1 B4            [ 1]  440 	cp	a, #0xb4
      008418 26 04            [ 1]  441 	jrne	00136$
                                    442 ;	lib/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00841A 72 11 50 C1      [ 1]  443 	bres	20673, #0
      00841E                        444 00136$:
                                    445 ;	lib/src/stm8s_clk.c: 406: return(Swif);
      00841E 9F               [ 1]  446 	ld	a, xl
                                    447 ;	lib/src/stm8s_clk.c: 407: }
      00841F 81               [ 4]  448 	ret
                                    449 ;	lib/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    450 ;	-----------------------------------------
                                    451 ;	 function CLK_HSIPrescalerConfig
                                    452 ;	-----------------------------------------
      008420                        453 _CLK_HSIPrescalerConfig:
                                    454 ;	lib/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008420 C6 50 C6         [ 1]  455 	ld	a, 0x50c6
      008423 A4 E7            [ 1]  456 	and	a, #0xe7
      008425 C7 50 C6         [ 1]  457 	ld	0x50c6, a
                                    458 ;	lib/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      008428 C6 50 C6         [ 1]  459 	ld	a, 0x50c6
      00842B 1A 03            [ 1]  460 	or	a, (0x03, sp)
      00842D C7 50 C6         [ 1]  461 	ld	0x50c6, a
                                    462 ;	lib/src/stm8s_clk.c: 425: }
      008430 81               [ 4]  463 	ret
                                    464 ;	lib/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    465 ;	-----------------------------------------
                                    466 ;	 function CLK_CCOConfig
                                    467 ;	-----------------------------------------
      008431                        468 _CLK_CCOConfig:
                                    469 ;	lib/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      008431 C6 50 C9         [ 1]  470 	ld	a, 0x50c9
      008434 A4 E1            [ 1]  471 	and	a, #0xe1
      008436 C7 50 C9         [ 1]  472 	ld	0x50c9, a
                                    473 ;	lib/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      008439 C6 50 C9         [ 1]  474 	ld	a, 0x50c9
      00843C 1A 03            [ 1]  475 	or	a, (0x03, sp)
      00843E C7 50 C9         [ 1]  476 	ld	0x50c9, a
                                    477 ;	lib/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      008441 72 10 50 C9      [ 1]  478 	bset	20681, #0
                                    479 ;	lib/src/stm8s_clk.c: 449: }
      008445 81               [ 4]  480 	ret
                                    481 ;	lib/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    482 ;	-----------------------------------------
                                    483 ;	 function CLK_ITConfig
                                    484 ;	-----------------------------------------
      008446                        485 _CLK_ITConfig:
      008446 88               [ 1]  486 	push	a
                                    487 ;	lib/src/stm8s_clk.c: 467: switch (CLK_IT)
      008447 7B 04            [ 1]  488 	ld	a, (0x04, sp)
      008449 A0 0C            [ 1]  489 	sub	a, #0x0c
      00844B 26 04            [ 1]  490 	jrne	00140$
      00844D 4C               [ 1]  491 	inc	a
      00844E 6B 01            [ 1]  492 	ld	(0x01, sp), a
      008450 C5                     493 	.byte 0xc5
      008451                        494 00140$:
      008451 0F 01            [ 1]  495 	clr	(0x01, sp)
      008453                        496 00141$:
      008453 7B 04            [ 1]  497 	ld	a, (0x04, sp)
      008455 A0 1C            [ 1]  498 	sub	a, #0x1c
      008457 26 02            [ 1]  499 	jrne	00143$
      008459 4C               [ 1]  500 	inc	a
      00845A 21                     501 	.byte 0x21
      00845B                        502 00143$:
      00845B 4F               [ 1]  503 	clr	a
      00845C                        504 00144$:
                                    505 ;	lib/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      00845C 0D 05            [ 1]  506 	tnz	(0x05, sp)
      00845E 27 13            [ 1]  507 	jreq	00110$
                                    508 ;	lib/src/stm8s_clk.c: 467: switch (CLK_IT)
      008460 0D 01            [ 1]  509 	tnz	(0x01, sp)
      008462 26 09            [ 1]  510 	jrne	00102$
      008464 4D               [ 1]  511 	tnz	a
      008465 27 1D            [ 1]  512 	jreq	00112$
                                    513 ;	lib/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      008467 72 14 50 C5      [ 1]  514 	bset	20677, #2
                                    515 ;	lib/src/stm8s_clk.c: 471: break;
      00846B 20 17            [ 2]  516 	jra	00112$
                                    517 ;	lib/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      00846D                        518 00102$:
                                    519 ;	lib/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      00846D 72 14 50 C8      [ 1]  520 	bset	20680, #2
                                    521 ;	lib/src/stm8s_clk.c: 474: break;
      008471 20 11            [ 2]  522 	jra	00112$
                                    523 ;	lib/src/stm8s_clk.c: 477: }
      008473                        524 00110$:
                                    525 ;	lib/src/stm8s_clk.c: 481: switch (CLK_IT)
      008473 0D 01            [ 1]  526 	tnz	(0x01, sp)
      008475 26 09            [ 1]  527 	jrne	00106$
      008477 4D               [ 1]  528 	tnz	a
      008478 27 0A            [ 1]  529 	jreq	00112$
                                    530 ;	lib/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      00847A 72 15 50 C5      [ 1]  531 	bres	20677, #2
                                    532 ;	lib/src/stm8s_clk.c: 485: break;
      00847E 20 04            [ 2]  533 	jra	00112$
                                    534 ;	lib/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      008480                        535 00106$:
                                    536 ;	lib/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      008480 72 15 50 C8      [ 1]  537 	bres	20680, #2
                                    538 ;	lib/src/stm8s_clk.c: 491: }
      008484                        539 00112$:
                                    540 ;	lib/src/stm8s_clk.c: 493: }
      008484 84               [ 1]  541 	pop	a
      008485 81               [ 4]  542 	ret
                                    543 ;	lib/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    544 ;	-----------------------------------------
                                    545 ;	 function CLK_SYSCLKConfig
                                    546 ;	-----------------------------------------
      008486                        547 _CLK_SYSCLKConfig:
      008486 88               [ 1]  548 	push	a
                                    549 ;	lib/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008487 C6 50 C6         [ 1]  550 	ld	a, 0x50c6
                                    551 ;	lib/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      00848A 0D 04            [ 1]  552 	tnz	(0x04, sp)
      00848C 2B 15            [ 1]  553 	jrmi	00102$
                                    554 ;	lib/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      00848E A4 E7            [ 1]  555 	and	a, #0xe7
      008490 C7 50 C6         [ 1]  556 	ld	0x50c6, a
                                    557 ;	lib/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      008493 C6 50 C6         [ 1]  558 	ld	a, 0x50c6
      008496 6B 01            [ 1]  559 	ld	(0x01, sp), a
      008498 7B 04            [ 1]  560 	ld	a, (0x04, sp)
      00849A A4 18            [ 1]  561 	and	a, #0x18
      00849C 1A 01            [ 1]  562 	or	a, (0x01, sp)
      00849E C7 50 C6         [ 1]  563 	ld	0x50c6, a
      0084A1 20 13            [ 2]  564 	jra	00104$
      0084A3                        565 00102$:
                                    566 ;	lib/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      0084A3 A4 F8            [ 1]  567 	and	a, #0xf8
      0084A5 C7 50 C6         [ 1]  568 	ld	0x50c6, a
                                    569 ;	lib/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      0084A8 C6 50 C6         [ 1]  570 	ld	a, 0x50c6
      0084AB 6B 01            [ 1]  571 	ld	(0x01, sp), a
      0084AD 7B 04            [ 1]  572 	ld	a, (0x04, sp)
      0084AF A4 07            [ 1]  573 	and	a, #0x07
      0084B1 1A 01            [ 1]  574 	or	a, (0x01, sp)
      0084B3 C7 50 C6         [ 1]  575 	ld	0x50c6, a
      0084B6                        576 00104$:
                                    577 ;	lib/src/stm8s_clk.c: 515: }
      0084B6 84               [ 1]  578 	pop	a
      0084B7 81               [ 4]  579 	ret
                                    580 ;	lib/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    581 ;	-----------------------------------------
                                    582 ;	 function CLK_SWIMConfig
                                    583 ;	-----------------------------------------
      0084B8                        584 _CLK_SWIMConfig:
                                    585 ;	lib/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0084B8 C6 50 CD         [ 1]  586 	ld	a, 0x50cd
                                    587 ;	lib/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      0084BB 0D 03            [ 1]  588 	tnz	(0x03, sp)
      0084BD 27 06            [ 1]  589 	jreq	00102$
                                    590 ;	lib/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0084BF AA 01            [ 1]  591 	or	a, #0x01
      0084C1 C7 50 CD         [ 1]  592 	ld	0x50cd, a
      0084C4 81               [ 4]  593 	ret
      0084C5                        594 00102$:
                                    595 ;	lib/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      0084C5 A4 FE            [ 1]  596 	and	a, #0xfe
      0084C7 C7 50 CD         [ 1]  597 	ld	0x50cd, a
                                    598 ;	lib/src/stm8s_clk.c: 538: }
      0084CA 81               [ 4]  599 	ret
                                    600 ;	lib/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    601 ;	-----------------------------------------
                                    602 ;	 function CLK_ClockSecuritySystemEnable
                                    603 ;	-----------------------------------------
      0084CB                        604 _CLK_ClockSecuritySystemEnable:
                                    605 ;	lib/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      0084CB 72 10 50 C8      [ 1]  606 	bset	20680, #0
                                    607 ;	lib/src/stm8s_clk.c: 551: }
      0084CF 81               [ 4]  608 	ret
                                    609 ;	lib/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    610 ;	-----------------------------------------
                                    611 ;	 function CLK_GetSYSCLKSource
                                    612 ;	-----------------------------------------
      0084D0                        613 _CLK_GetSYSCLKSource:
                                    614 ;	lib/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      0084D0 C6 50 C3         [ 1]  615 	ld	a, 0x50c3
                                    616 ;	lib/src/stm8s_clk.c: 562: }
      0084D3 81               [ 4]  617 	ret
                                    618 ;	lib/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    619 ;	-----------------------------------------
                                    620 ;	 function CLK_GetClockFreq
                                    621 ;	-----------------------------------------
      0084D4                        622 _CLK_GetClockFreq:
      0084D4 52 04            [ 2]  623 	sub	sp, #4
                                    624 ;	lib/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0084D6 C6 50 C3         [ 1]  625 	ld	a, 0x50c3
                                    626 ;	lib/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      0084D9 6B 04            [ 1]  627 	ld	(0x04, sp), a
      0084DB A1 E1            [ 1]  628 	cp	a, #0xe1
      0084DD 26 25            [ 1]  629 	jrne	00105$
                                    630 ;	lib/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      0084DF C6 50 C6         [ 1]  631 	ld	a, 0x50c6
      0084E2 A4 18            [ 1]  632 	and	a, #0x18
                                    633 ;	lib/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      0084E4 44               [ 1]  634 	srl	a
      0084E5 44               [ 1]  635 	srl	a
      0084E6 44               [ 1]  636 	srl	a
                                    637 ;	lib/src/stm8s_clk.c: 582: clockfrequency = HSI_VALUE >> HSIDivExp[tmp];
      0084E7 5F               [ 1]  638 	clrw	x
      0084E8 97               [ 1]  639 	ld	xl, a
      0084E9 D6 80 24         [ 1]  640 	ld	a, (_HSIDivExp+0, x)
      0084EC 5F               [ 1]  641 	clrw	x
      0084ED 02               [ 1]  642 	rlwa	x
      0084EE A6 24            [ 1]  643 	ld	a, #0x24
      0084F0 01               [ 1]  644 	rrwa	x
      0084F1 90 AE 00 F4      [ 2]  645 	ldw	y, #0x00f4
      0084F5 4D               [ 1]  646 	tnz	a
      0084F6 27 06            [ 1]  647 	jreq	00123$
      0084F8                        648 00122$:
      0084F8 90 54            [ 2]  649 	srlw	y
      0084FA 56               [ 2]  650 	rrcw	x
      0084FB 4A               [ 1]  651 	dec	a
      0084FC 26 FA            [ 1]  652 	jrne	00122$
      0084FE                        653 00123$:
      0084FE 1F 03            [ 2]  654 	ldw	(0x03, sp), x
      008500 17 01            [ 2]  655 	ldw	(0x01, sp), y
      008502 20 1C            [ 2]  656 	jra	00106$
      008504                        657 00105$:
                                    658 ;	lib/src/stm8s_clk.c: 584: else if ( clocksource == CLK_SOURCE_LSI)
      008504 7B 04            [ 1]  659 	ld	a, (0x04, sp)
      008506 A1 D2            [ 1]  660 	cp	a, #0xd2
      008508 26 0C            [ 1]  661 	jrne	00102$
                                    662 ;	lib/src/stm8s_clk.c: 586: clockfrequency = LSI_VALUE;
      00850A AE F4 00         [ 2]  663 	ldw	x, #0xf400
      00850D 1F 03            [ 2]  664 	ldw	(0x03, sp), x
      00850F AE 00 01         [ 2]  665 	ldw	x, #0x0001
      008512 1F 01            [ 2]  666 	ldw	(0x01, sp), x
      008514 20 0A            [ 2]  667 	jra	00106$
      008516                        668 00102$:
                                    669 ;	lib/src/stm8s_clk.c: 590: clockfrequency = HSE_VALUE;
      008516 AE 24 00         [ 2]  670 	ldw	x, #0x2400
      008519 1F 03            [ 2]  671 	ldw	(0x03, sp), x
      00851B AE 00 F4         [ 2]  672 	ldw	x, #0x00f4
      00851E 1F 01            [ 2]  673 	ldw	(0x01, sp), x
      008520                        674 00106$:
                                    675 ;	lib/src/stm8s_clk.c: 593: return((uint32_t)clockfrequency);
      008520 1E 03            [ 2]  676 	ldw	x, (0x03, sp)
      008522 16 01            [ 2]  677 	ldw	y, (0x01, sp)
                                    678 ;	lib/src/stm8s_clk.c: 594: }
      008524 5B 04            [ 2]  679 	addw	sp, #4
      008526 81               [ 4]  680 	ret
                                    681 ;	lib/src/stm8s_clk.c: 603: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                    682 ;	-----------------------------------------
                                    683 ;	 function CLK_AdjustHSICalibrationValue
                                    684 ;	-----------------------------------------
      008527                        685 _CLK_AdjustHSICalibrationValue:
                                    686 ;	lib/src/stm8s_clk.c: 609: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      008527 C6 50 CC         [ 1]  687 	ld	a, 0x50cc
      00852A A4 F8            [ 1]  688 	and	a, #0xf8
      00852C 1A 03            [ 1]  689 	or	a, (0x03, sp)
      00852E C7 50 CC         [ 1]  690 	ld	0x50cc, a
                                    691 ;	lib/src/stm8s_clk.c: 610: }
      008531 81               [ 4]  692 	ret
                                    693 ;	lib/src/stm8s_clk.c: 621: void CLK_SYSCLKEmergencyClear(void)
                                    694 ;	-----------------------------------------
                                    695 ;	 function CLK_SYSCLKEmergencyClear
                                    696 ;	-----------------------------------------
      008532                        697 _CLK_SYSCLKEmergencyClear:
                                    698 ;	lib/src/stm8s_clk.c: 623: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      008532 72 11 50 C5      [ 1]  699 	bres	20677, #0
                                    700 ;	lib/src/stm8s_clk.c: 624: }
      008536 81               [ 4]  701 	ret
                                    702 ;	lib/src/stm8s_clk.c: 633: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    703 ;	-----------------------------------------
                                    704 ;	 function CLK_GetFlagStatus
                                    705 ;	-----------------------------------------
      008537                        706 _CLK_GetFlagStatus:
      008537 52 02            [ 2]  707 	sub	sp, #2
                                    708 ;	lib/src/stm8s_clk.c: 643: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      008539 1E 05            [ 2]  709 	ldw	x, (0x05, sp)
      00853B 4F               [ 1]  710 	clr	a
      00853C 97               [ 1]  711 	ld	xl, a
                                    712 ;	lib/src/stm8s_clk.c: 646: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      00853D 1F 01            [ 2]  713 	ldw	(0x01, sp), x
      00853F A3 01 00         [ 2]  714 	cpw	x, #0x0100
      008542 26 05            [ 1]  715 	jrne	00111$
                                    716 ;	lib/src/stm8s_clk.c: 648: tmpreg = CLK->ICKR;
      008544 C6 50 C0         [ 1]  717 	ld	a, 0x50c0
      008547 20 27            [ 2]  718 	jra	00112$
      008549                        719 00111$:
                                    720 ;	lib/src/stm8s_clk.c: 650: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      008549 1E 01            [ 2]  721 	ldw	x, (0x01, sp)
      00854B A3 02 00         [ 2]  722 	cpw	x, #0x0200
      00854E 26 05            [ 1]  723 	jrne	00108$
                                    724 ;	lib/src/stm8s_clk.c: 652: tmpreg = CLK->ECKR;
      008550 C6 50 C1         [ 1]  725 	ld	a, 0x50c1
      008553 20 1B            [ 2]  726 	jra	00112$
      008555                        727 00108$:
                                    728 ;	lib/src/stm8s_clk.c: 654: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      008555 1E 01            [ 2]  729 	ldw	x, (0x01, sp)
      008557 A3 03 00         [ 2]  730 	cpw	x, #0x0300
      00855A 26 05            [ 1]  731 	jrne	00105$
                                    732 ;	lib/src/stm8s_clk.c: 656: tmpreg = CLK->SWCR;
      00855C C6 50 C5         [ 1]  733 	ld	a, 0x50c5
      00855F 20 0F            [ 2]  734 	jra	00112$
      008561                        735 00105$:
                                    736 ;	lib/src/stm8s_clk.c: 658: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008561 1E 01            [ 2]  737 	ldw	x, (0x01, sp)
      008563 A3 04 00         [ 2]  738 	cpw	x, #0x0400
      008566 26 05            [ 1]  739 	jrne	00102$
                                    740 ;	lib/src/stm8s_clk.c: 660: tmpreg = CLK->CSSR;
      008568 C6 50 C8         [ 1]  741 	ld	a, 0x50c8
      00856B 20 03            [ 2]  742 	jra	00112$
      00856D                        743 00102$:
                                    744 ;	lib/src/stm8s_clk.c: 664: tmpreg = CLK->CCOR;
      00856D C6 50 C9         [ 1]  745 	ld	a, 0x50c9
      008570                        746 00112$:
                                    747 ;	lib/src/stm8s_clk.c: 667: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      008570 88               [ 1]  748 	push	a
      008571 7B 07            [ 1]  749 	ld	a, (0x07, sp)
      008573 6B 03            [ 1]  750 	ld	(0x03, sp), a
      008575 84               [ 1]  751 	pop	a
      008576 14 02            [ 1]  752 	and	a, (0x02, sp)
      008578 27 03            [ 1]  753 	jreq	00114$
                                    754 ;	lib/src/stm8s_clk.c: 669: bitstatus = SET;
      00857A A6 01            [ 1]  755 	ld	a, #0x01
                                    756 ;	lib/src/stm8s_clk.c: 673: bitstatus = RESET;
      00857C 21                     757 	.byte 0x21
      00857D                        758 00114$:
      00857D 4F               [ 1]  759 	clr	a
      00857E                        760 00115$:
                                    761 ;	lib/src/stm8s_clk.c: 677: return((FlagStatus)bitstatus);
                                    762 ;	lib/src/stm8s_clk.c: 678: }
      00857E 5B 02            [ 2]  763 	addw	sp, #2
      008580 81               [ 4]  764 	ret
                                    765 ;	lib/src/stm8s_clk.c: 686: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                    766 ;	-----------------------------------------
                                    767 ;	 function CLK_GetITStatus
                                    768 ;	-----------------------------------------
      008581                        769 _CLK_GetITStatus:
                                    770 ;	lib/src/stm8s_clk.c: 693: if (CLK_IT == CLK_IT_SWIF)
      008581 7B 03            [ 1]  771 	ld	a, (0x03, sp)
      008583 A1 1C            [ 1]  772 	cp	a, #0x1c
      008585 26 0D            [ 1]  773 	jrne	00108$
                                    774 ;	lib/src/stm8s_clk.c: 696: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008587 C6 50 C5         [ 1]  775 	ld	a, 0x50c5
      00858A 14 03            [ 1]  776 	and	a, (0x03, sp)
                                    777 ;	lib/src/stm8s_clk.c: 698: bitstatus = SET;
      00858C A0 0C            [ 1]  778 	sub	a, #0x0c
      00858E 26 02            [ 1]  779 	jrne	00102$
      008590 4C               [ 1]  780 	inc	a
      008591 81               [ 4]  781 	ret
      008592                        782 00102$:
                                    783 ;	lib/src/stm8s_clk.c: 702: bitstatus = RESET;
      008592 4F               [ 1]  784 	clr	a
      008593 81               [ 4]  785 	ret
      008594                        786 00108$:
                                    787 ;	lib/src/stm8s_clk.c: 708: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008594 C6 50 C8         [ 1]  788 	ld	a, 0x50c8
      008597 14 03            [ 1]  789 	and	a, (0x03, sp)
                                    790 ;	lib/src/stm8s_clk.c: 710: bitstatus = SET;
      008599 A0 0C            [ 1]  791 	sub	a, #0x0c
      00859B 26 02            [ 1]  792 	jrne	00105$
      00859D 4C               [ 1]  793 	inc	a
      00859E 81               [ 4]  794 	ret
      00859F                        795 00105$:
                                    796 ;	lib/src/stm8s_clk.c: 714: bitstatus = RESET;
      00859F 4F               [ 1]  797 	clr	a
                                    798 ;	lib/src/stm8s_clk.c: 719: return bitstatus;
                                    799 ;	lib/src/stm8s_clk.c: 720: }
      0085A0 81               [ 4]  800 	ret
                                    801 ;	lib/src/stm8s_clk.c: 728: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                    802 ;	-----------------------------------------
                                    803 ;	 function CLK_ClearITPendingBit
                                    804 ;	-----------------------------------------
      0085A1                        805 _CLK_ClearITPendingBit:
                                    806 ;	lib/src/stm8s_clk.c: 733: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      0085A1 7B 03            [ 1]  807 	ld	a, (0x03, sp)
      0085A3 A1 0C            [ 1]  808 	cp	a, #0x0c
      0085A5 26 05            [ 1]  809 	jrne	00102$
                                    810 ;	lib/src/stm8s_clk.c: 736: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      0085A7 72 17 50 C8      [ 1]  811 	bres	20680, #3
      0085AB 81               [ 4]  812 	ret
      0085AC                        813 00102$:
                                    814 ;	lib/src/stm8s_clk.c: 741: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      0085AC 72 17 50 C5      [ 1]  815 	bres	20677, #3
                                    816 ;	lib/src/stm8s_clk.c: 744: }
      0085B0 81               [ 4]  817 	ret
                                    818 	.area CODE
                                    819 	.area CONST
      008024                        820 _HSIDivExp:
      008024 00                     821 	.db #0x00	; 0
      008025 01                     822 	.db #0x01	; 1
      008026 02                     823 	.db #0x02	; 2
      008027 03                     824 	.db #0x03	; 3
      008028                        825 _CLKPrescTable:
      008028 01                     826 	.db #0x01	; 1
      008029 02                     827 	.db #0x02	; 2
      00802A 04                     828 	.db #0x04	; 4
      00802B 08                     829 	.db #0x08	; 8
      00802C 0A                     830 	.db #0x0a	; 10
      00802D 10                     831 	.db #0x10	; 16
      00802E 14                     832 	.db #0x14	; 20
      00802F 28                     833 	.db #0x28	; 40
                                    834 	.area INITIALIZER
                                    835 	.area CABS (ABS)
