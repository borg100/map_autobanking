#include <gb/gb.h>

void set_bkg_data_nonbanked(UINT8 first_tile, UINT8 nb_tiles, const UINT8 *tile_data, UINT8 bank)
#ifndef __INTELLISENSE__
    NONBANKED
#endif
{
    UINT8 __save = _current_bank;
    SWITCH_ROM_MBC1(bank);
    set_bkg_data(first_tile, nb_tiles, tile_data);
    SWITCH_ROM_MBC1(__save);
}

void set_bkg_submap_nonbanked(UINT8 x, UINT8 y, UINT8 w, UINT8 h, const UINT8 *map_data, UINT8 map_w, UINT8 bank)
#ifndef __INTELLISENSE__
    NONBANKED
#endif
{
    UINT8 __save = _current_bank;
    SWITCH_ROM_MBC1(bank);
    set_bkg_submap(x, y, w, h, map_data, map_w);
    SWITCH_ROM_MBC1(__save);
}

void set_level(UINT8 map_width, UINT8 map_height, const void *tile_data, UINT8 tile_bank, const void *map_data, UINT8 map_bank)
{
    set_bkg_data_nonbanked(0, 255u, tile_data, tile_bank);
    set_bkg_submap_nonbanked(0, 0, map_width, map_height, map_data, map_width, map_bank);
}