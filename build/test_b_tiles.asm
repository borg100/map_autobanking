;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12439 (MINGW32)
;--------------------------------------------------------
	.module test_b_tiles
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TEST_B_TILE_DATA
	.globl ___bank_test_b_tiles
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	.area _CODE_255
___bank_test_b_tiles	=	0x00ff
_TEST_B_TILE_DATA:
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0xe5	; 229
	.db #0xe2	; 226
	.db #0x8a	; 138
	.db #0x95	; 149
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xf9	; 249
	.db #0xe4	; 228
	.db #0xe3	; 227
	.db #0x8a	; 138
	.db #0x95	; 149
	.db #0x54	; 84	'T'
	.db #0x2b	; 43
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0xab	; 171
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x9f	; 159
	.db #0x47	; 71	'G'
	.db #0xa7	; 167
	.db #0x29	; 41
	.db #0xd1	; 209
	.db #0x54	; 84	'T'
	.db #0xaa	; 170
	.db #0x2a	; 42
	.db #0xd5	; 213
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x2a	; 42
	.db #0xd5	; 213
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x9f	; 159
	.db #0x1f	; 31
	.db #0x47	; 71	'G'
	.db #0xa7	; 167
	.db #0xa9	; 169
	.db #0x51	; 81	'Q'
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xe7	; 231
	.db #0xe0	; 224
	.db #0xdf	; 223
	.db #0xc7	; 199
	.db #0xbf	; 191
	.db #0x9f	; 159
	.db #0xbf	; 191
	.db #0x9f	; 159
	.db #0xbf	; 191
	.db #0xa7	; 167
	.db #0xbf	; 191
	.db #0xb8	; 184
	.db #0xbf	; 191
	.db #0x9f	; 159
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xcf	; 207
	.db #0x0f	; 15
	.db #0xf7	; 247
	.db #0xc7	; 199
	.db #0xfb	; 251
	.db #0xf3	; 243
	.db #0xfb	; 251
	.db #0xf3	; 243
	.db #0xfb	; 251
	.db #0xcb	; 203
	.db #0xfb	; 251
	.db #0x3b	; 59
	.db #0xfb	; 251
	.db #0xf3	; 243
	.db #0x55	; 85	'U'
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x55	; 85	'U'
	.db #0x55	; 85	'U'
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0xab	; 171
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0xab	; 171
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0xab	; 171
	.db #0xaa	; 170
	.db #0x54	; 84	'T'
	.db #0x50	; 80	'P'
	.db #0xa9	; 169
	.db #0xa0	; 160
	.db #0x46	; 70	'F'
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x2a	; 42
	.db #0xd5	; 213
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x2a	; 42
	.db #0xd5	; 213
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x2a	; 42
	.db #0x55	; 85	'U'
	.db #0x15	; 21
	.db #0x8a	; 138
	.db #0x02	; 2
	.db #0x65	; 101	'e'
	.db #0x54	; 84	'T'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0xaa	; 170
	.db #0xaa	; 170
	.db #0x54	; 84	'T'
	.db #0x9f	; 159
	.db #0xa7	; 167
	.db #0x87	; 135
	.db #0xb8	; 184
	.db #0x83	; 131
	.db #0xbc	; 188
	.db #0x83	; 131
	.db #0xbc	; 188
	.db #0x83	; 131
	.db #0xdc	; 220
	.db #0xc3	; 195
	.db #0xe4	; 228
	.db #0xe0	; 224
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xf3	; 243
	.db #0xcb	; 203
	.db #0xc3	; 195
	.db #0x3b	; 59
	.db #0x83	; 131
	.db #0x7b	; 123
	.db #0x83	; 131
	.db #0x7b	; 123
	.db #0x83	; 131
	.db #0x77	; 119	'w'
	.db #0x87	; 135
	.db #0x4f	; 79	'O'
	.db #0x0f	; 15
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0x55	; 85	'U'
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x54	; 84	'T'
	.db #0x50	; 80	'P'
	.db #0x29	; 41
	.db #0x20	; 32
	.db #0x46	; 70	'F'
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x60	; 96
	.db #0x87	; 135
	.db #0x80	; 128
	.db #0xf7	; 247
	.db #0xf7	; 247
	.db #0x01	; 1
	.db #0x98	; 152
	.db #0x07	; 7
	.db #0x60	; 96
	.db #0x1f	; 31
	.db #0x80	; 128
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x7e	; 126
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x06	; 6
	.db #0xf8	; 248
	.db #0x01	; 1
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x54	; 84	'T'
	.db #0xaa	; 170
	.db #0x2a	; 42
	.db #0x54	; 84	'T'
	.db #0x14	; 20
	.db #0x8a	; 138
	.db #0x02	; 2
	.db #0x64	; 100	'd'
	.db #0x80	; 128
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x06	; 6
	.db #0xe1	; 225
	.db #0x01	; 1
	.db #0xef	; 239
	.db #0xef	; 239
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xe7	; 231
	.db #0xe0	; 224
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xef	; 239
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe7	; 231
	.db #0x07	; 7
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0xe7	; 231
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xf7	; 247
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbe	; 190
	.db #0xff	; 255
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0x5f	; 95
	.db #0xa0	; 160
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x9f	; 159
	.db #0x40	; 64
	.db #0x90	; 144
	.db #0x47	; 71	'G'
	.db #0xd7	; 215
	.db #0x47	; 71	'G'
	.db #0xd7	; 215
	.db #0x47	; 71	'G'
	.db #0xd7	; 215
	.db #0x47	; 71	'G'
	.db #0xd0	; 208
	.db #0xfa	; 250
	.db #0x05	; 5
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0xf9	; 249
	.db #0x02	; 2
	.db #0x09	; 9
	.db #0xe2	; 226
	.db #0xeb	; 235
	.db #0xe2	; 226
	.db #0xeb	; 235
	.db #0xe2	; 226
	.db #0xeb	; 235
	.db #0xe2	; 226
	.db #0x0b	; 11
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x6d	; 109	'm'
	.db #0x7f	; 127
	.db #0x65	; 101	'e'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xc3	; 195
	.db #0xc3	; 195
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x26	; 38
	.db #0xfe	; 254
	.db #0x2e	; 46
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfb	; 251
	.db #0x80	; 128
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x83	; 131
	.db #0xfb	; 251
	.db #0x80	; 128
	.db #0xfa	; 250
	.db #0x81	; 129
	.db #0xfa	; 250
	.db #0x81	; 129
	.db #0xfc	; 252
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xd0	; 208
	.db #0x4f	; 79	'O'
	.db #0xd0	; 208
	.db #0x48	; 72	'H'
	.db #0xd7	; 215
	.db #0x48	; 72	'H'
	.db #0xd7	; 215
	.db #0x4f	; 79	'O'
	.db #0xd0	; 208
	.db #0x40	; 64
	.db #0xdf	; 223
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x0b	; 11
	.db #0xf2	; 242
	.db #0x0b	; 11
	.db #0x12	; 18
	.db #0xeb	; 235
	.db #0x12	; 18
	.db #0xeb	; 235
	.db #0xf2	; 242
	.db #0x0b	; 11
	.db #0x02	; 2
	.db #0xfb	; 251
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0xdf	; 223
	.db #0x01	; 1
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0xc1	; 193
	.db #0xdf	; 223
	.db #0x01	; 1
	.db #0x5f	; 95
	.db #0x81	; 129
	.db #0x5f	; 95
	.db #0x81	; 129
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x65	; 101	'e'
	.db #0x7f	; 127
	.db #0x65	; 101	'e'
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xdb	; 219
	.db #0xc3	; 195
	.db #0x18	; 24
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xd6	; 214
	.db #0xfe	; 254
	.db #0x56	; 86	'V'
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xdb	; 219
	.db #0xc3	; 195
	.db #0x18	; 24
	.db #0xdb	; 219
	.db #0x00	; 0
	.db #0xe7	; 231
	.db #0xff	; 255
	.db #0xff	; 255
	.area _INITIALIZER
	.area _CABS (ABS)
