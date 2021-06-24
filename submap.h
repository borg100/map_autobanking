#include <gb/gb.h>

void set_bkg_data_nonbanked(UINT8 first_tile, UINT8 nb_tiles, const UINT8 *tile_data, UINT8 bank);
void set_bkg_submap_nonbanked(UINT8 x, UINT8 y, UINT8 w, UINT8 h, const UINT8 *map_data, UINT8 map_w, UINT8 bank);
void set_level(UINT8 map_width, UINT8 map_height, const void *tile_data, UINT8 tile_bank, const void *map_data, UINT8 map_bank);