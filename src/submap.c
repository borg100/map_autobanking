#include <gb/gb.h>

void set_banked_bkg_data(UINT8 start, UINT8 count, const void *tile_data, UINT8 bank)
#ifndef __INTELLISENSE__
    NONBANKED
#endif
{
    UINT8 __save = _current_bank;
    SWITCH_ROM_MBC1(bank);
    set_bkg_data(start, count, tile_data);
    SWITCH_ROM_MBC1(__save);
}

void set_banked_bkg_submap(UINT8 x, UINT8 y, UINT8 w, UINT8 h, const void *map_data, UINT8 map_w, UINT8 bank)
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
    DISPLAY_OFF;
    set_banked_bkg_data(0, 255u, tile_data, tile_bank);
    set_banked_bkg_submap(0, 0, map_width, map_height, map_data, map_width, map_bank);
    DISPLAY_ON;
}