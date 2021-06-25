#include <gb/gb.h>

#define __BANK_PREFIX(A) __bank_##A
#define BANK(A) (UBYTE) & (__BANK_PREFIX(A))
#define __SIZE_PREFIX(A) __size_##A
#define SIZE(A) (UWORD) & (__SIZE_PREFIX(A))
#define OFFSET(A) (void *)&(A)

void set_banked_bkg_data(UINT8 start, UINT8 count, const void *tile_data, UINT8 bank);
void set_banked_bkg_submap(UINT8 x, UINT8 y, UINT8 w, UINT8 h, const void *map_data, UINT8 map_w, UINT8 bank);
void set_level(UINT8 map_width, UINT8 map_height, const void *tile_data, UINT8 tile_bank, const void *map_data, UINT8 map_bank);