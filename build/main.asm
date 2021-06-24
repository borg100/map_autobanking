;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12439 (MINGW32)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _set_level
	.globl _display_off
	.globl _joypad
	.globl _joy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_joy::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:20: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:22: DISPLAY_OFF;
	call	_display_off
;main.c:30: (UINT8)&__bank_test_a_map);
	ld	b, #<(___bank_test_a_map)
;main.c:29: TEST_A_MAP_DATA,
;main.c:28: (UINT8)&__bank_test_a_tiles,
	ld	c, #<(___bank_test_a_tiles)
;main.c:27: TEST_A_TILE_DATA,
;main.c:25: TEST_A_MAP_WIDTH,
	push	bc
	inc	sp
	ld	de, #_TEST_A_MAP_DATA
	push	de
	ld	a, c
	push	af
	inc	sp
	ld	de, #_TEST_A_TILE_DATA
	push	de
	ld	hl, #0x1214
	push	hl
	call	_set_level
	add	sp, #8
;main.c:32: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:33: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;main.c:35: while (TRUE)
00107$:
;main.c:37: joy = joypad();
	call	_joypad
;setupPair	HL
	ld	hl, #_joy
	ld	(hl), e
;main.c:39: if (joy & J_SELECT)
;setupPair	HL
	ld	a, (hl)
	bit	6, a
	jr	Z, 00104$
;main.c:47: (UINT8)&__bank_test_a_map);
	ld	a, #<(___bank_test_a_map)
;main.c:46: TEST_A_MAP_DATA,
;main.c:45: (UINT8)&__bank_test_a_tiles,
	ld	c, #<(___bank_test_a_tiles)
;main.c:44: TEST_A_TILE_DATA,
;main.c:42: TEST_A_MAP_WIDTH,
	push	af
	inc	sp
	ld	de, #_TEST_A_MAP_DATA
	push	de
	ld	a, c
	push	af
	inc	sp
	ld	de, #_TEST_A_TILE_DATA
	push	de
	ld	hl, #0x1214
	push	hl
	call	_set_level
	add	sp, #8
	jr	00107$
00104$:
;main.c:49: else if (joy & J_START)
	rlca
	jr	NC, 00107$
;main.c:57: (UINT8)&__bank_test_b_map);
	ld	c, #<(___bank_test_b_map)
;main.c:56: TEST_B_MAP_DATA,
	ld	de, #_TEST_B_MAP_DATA
;main.c:55: (UINT8)&__bank_test_b_tiles,
	ld	b, #<(___bank_test_b_tiles)
;main.c:54: TEST_B_TILE_DATA,
	ld	hl, #_TEST_B_TILE_DATA
;main.c:52: TEST_B_MAP_WIDTH,
	ld	a, c
	push	af
	inc	sp
	push	de
	push	bc
	inc	sp
	push	hl
	ld	hl, #0x1214
	push	hl
	call	_set_level
	add	sp, #8
;main.c:60: }
	jr	00107$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
