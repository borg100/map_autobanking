;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12439 (MINGW32)
;--------------------------------------------------------
	.module submap
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _set_level
	.globl _set_bkg_submap_nonbanked
	.globl _set_bkg_data_nonbanked
	.globl _set_bkg_submap
	.globl _set_bkg_data
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;submap.c:3: void set_bkg_data_nonbanked(UINT8 first_tile, UINT8 nb_tiles, const UINT8 *tile_data, UINT8 bank)
;	---------------------------------
; Function set_bkg_data_nonbanked
; ---------------------------------
_set_bkg_data_nonbanked::
;submap.c:8: UINT8 __save = _current_bank;
	ldh	a, (__current_bank + 0)
	ld	c, a
;submap.c:9: SWITCH_ROM_MBC1(bank);
	ldhl	sp,	#6
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	de, #0x2000
;submap.c:10: set_bkg_data(first_tile, nb_tiles, tile_data);
	ld	a, (hl-)
	dec	hl
	ld	(de), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	ld	d, a
	push	de
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_set_bkg_data
	add	sp, #4
;submap.c:11: SWITCH_ROM_MBC1(__save);
	ld	a, c
	ldh	(__current_bank + 0), a
	ld	hl, #0x2000
	ld	(hl), c
;submap.c:12: }
	ret
;submap.c:14: void set_bkg_submap_nonbanked(UINT8 x, UINT8 y, UINT8 w, UINT8 h, const UINT8 *map_data, UINT8 map_w, UINT8 bank)
;	---------------------------------
; Function set_bkg_submap_nonbanked
; ---------------------------------
_set_bkg_submap_nonbanked::
;submap.c:19: UINT8 __save = _current_bank;
	ldh	a, (__current_bank + 0)
	ld	c, a
;submap.c:20: SWITCH_ROM_MBC1(bank);
	ldhl	sp,	#9
	ld	a, (hl)
	ldh	(__current_bank + 0), a
	ld	de, #0x2000
;submap.c:21: set_bkg_submap(x, y, w, h, map_data, map_w);
	ld	a, (hl-)
	ld	(de), a
	push	bc
	ld	a, (hl-)
	dec	hl
	push	af
	inc	sp
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	ld	d, a
	push	de
	ld	a, (hl-)
	ld	d, a
	ld	a, (hl-)
	ld	e, a
	push	de
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	call	_set_bkg_submap
	add	sp, #7
	pop	bc
;submap.c:22: SWITCH_ROM_MBC1(__save);
	ld	a, c
	ldh	(__current_bank + 0), a
	ld	hl, #0x2000
	ld	(hl), c
;submap.c:23: }
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;submap.c:25: void set_level(UINT8 map_width, UINT8 map_height, const void *tile_data, UINT8 tile_bank, const void *map_data, UINT8 map_bank)
;	---------------------------------
; Function set_level
; ---------------------------------
_set_level::
;submap.c:27: set_bkg_data_nonbanked(0, 255u, tile_data, tile_bank);
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl+)
	ld	b, a
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	ld	hl, #0xff00
	push	hl
	call	_set_bkg_data_nonbanked
	add	sp, #5
;submap.c:28: set_bkg_submap_nonbanked(0, 0, map_width, map_height, map_data, map_width, map_bank);
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	c, a
	ld	a, (hl+)
	ld	b, a
	ld	a, (hl)
	push	af
	inc	sp
	ldhl	sp,	#3
	ld	a, (hl+)
	push	af
	inc	sp
	push	bc
	ld	a, (hl-)
	ld	d, a
	ld	e, (hl)
	push	de
	xor	a, a
	rrca
	push	af
	call	_set_bkg_submap_nonbanked
	add	sp, #8
;submap.c:29: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
