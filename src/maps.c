#include "maps.h"

#include "../res/maps/village/village_overworld_map.h"
#include "../res/maps/village/village_overworld_tiles.h"

#include "../res/maps/village/village_house_1_map.h"
#include "../res/maps/village/village_house_1_tiles.h"

#include "../res/maps/village/village_house_2_map.h"
#include "../res/maps/village/village_house_2_tiles.h"

#include "../res/maps/village/village_house_3_map.h"
#include "../res/maps/village/village_house_3_tiles.h"

#include "../res/maps/village/village_house_4_map.h"
#include "../res/maps/village/village_house_4_tiles.h"

#include "../res/maps/village/village_house_5_map.h"
#include "../res/maps/village/village_house_5_tiles.h"

Map village_overworld = {
    .tile_data = OFFSET(village_overworld_tile_data),
    .tile_bank = BANK(village_overworld_tile_data),
    .map_data = OFFSET(village_overworld_map_data),
    .map_bank = BANK(village_overworld_map_data),
    .width = VILLAGE_OVERWORLD_MAP_WIDTH,
    .height = VILLAGE_OVERWORLD_MAP_HEIGHT,
    .is_submap = TRUE
};

Map village_house_1 = {
    .tile_data = OFFSET(village_house_1_tile_data),
    .tile_bank = BANK(village_house_1_tile_data),
    .map_data = OFFSET(village_house_1_map_data),
    .map_bank = BANK(village_house_1_map_data),
    .width = VILLAGE_HOUSE_1_MAP_WIDTH,
    .height = VILLAGE_HOUSE_1_MAP_HEIGHT,
    .is_submap = FALSE
};

Map village_house_2 = {
    .tile_data = OFFSET(village_house_2_tile_data),
    .tile_bank = BANK(village_house_2_tile_data),
    .map_data = OFFSET(village_house_2_map_data),
    .map_bank = BANK(village_house_2_map_data),
    .width = VILLAGE_HOUSE_2_MAP_WIDTH,
    .height = VILLAGE_HOUSE_2_MAP_HEIGHT,
    .is_submap = FALSE
};

Map village_house_3 = {
    .tile_data = OFFSET(village_house_3_tile_data),
    .tile_bank = BANK(village_house_3_tile_data),
    .map_data = OFFSET(village_house_3_map_data),
    .map_bank = BANK(village_house_3_map_data),
    .width = VILLAGE_HOUSE_3_MAP_WIDTH,
    .height = VILLAGE_HOUSE_3_MAP_HEIGHT,
    .is_submap = FALSE
};

Map village_house_4 = {
    .tile_data = OFFSET(village_house_4_tile_data),
    .tile_bank = BANK(village_house_4_tile_data),
    .map_data = OFFSET(village_house_4_map_data),
    .map_bank = BANK(village_house_4_map_data),
    .width = VILLAGE_HOUSE_4_MAP_WIDTH,
    .height = VILLAGE_HOUSE_4_MAP_HEIGHT,
    .is_submap = FALSE
};

Map village_house_5 = {
    .tile_data = OFFSET(village_house_5_tile_data),
    .tile_bank = BANK(village_house_5_tile_data),
    .map_data = OFFSET(village_house_5_map_data),
    .map_bank = BANK(village_house_5_map_data),
    .width = VILLAGE_HOUSE_5_MAP_WIDTH,
    .height = VILLAGE_HOUSE_5_MAP_HEIGHT,
    .is_submap = FALSE
};

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

void set_banked_bkg_tiles(UINT8 x, UINT8 y, UINT8 w, UINT8 h, const void *map_data, UINT8 bank)
#ifndef __INTELLISENSE__
    NONBANKED
#endif
{
    UINT8 __save = _current_bank;
    SWITCH_ROM_MBC1(bank);
    set_bkg_tiles(x, y, w, h, map_data);
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

void set_level(Map *map)
{
    // called when the level is changed.
    // load tiles and map data.
    DISPLAY_OFF;
    set_banked_bkg_data(0, 255u, map->tile_data, map->tile_bank);
    if (map->is_submap)
    {
        set_banked_bkg_submap(0, 0, 32u, 32u, map->map_data, map->width, map->map_bank);
    }
    else
    {
        set_banked_bkg_tiles(0, 0, map->width, map->height, map->map_data, map->map_bank);
    }
    DISPLAY_ON;
}