#include <gb/gb.h>

#include "submap.h"

#include "maps/test_a/test_a_map.h"
#include "maps/test_a/test_a_tiles.h"

#include "maps/test_b/test_b_map.h"
#include "maps/test_b/test_b_tiles.h"

UINT8 joy;


extern const void __bank_test_a_map;
extern const void __bank_test_a_tiles;

extern const void __bank_test_b_map;
extern const void __bank_test_b_tiles;

void main()
{
    DISPLAY_OFF;

    set_level(
        TEST_A_MAP_WIDTH,
        TEST_A_MAP_HEIGHT,
        TEST_A_TILE_DATA,
        (UINT8)&__bank_test_a_tiles,
        TEST_A_MAP_DATA,
        (UINT8)&__bank_test_a_map);

    DISPLAY_ON;
    SHOW_BKG;

    while (TRUE)
    {
        joy = joypad();

        if (joy & J_SELECT)
        {
            set_level(
                TEST_A_MAP_WIDTH,
                TEST_A_MAP_HEIGHT,
                TEST_A_TILE_DATA,
                (UINT8)&__bank_test_a_tiles,
                TEST_A_MAP_DATA,
                (UINT8)&__bank_test_a_map);
        }
        else if (joy & J_START)
        {
            set_level(
                TEST_B_MAP_WIDTH,
                TEST_B_MAP_HEIGHT,
                TEST_B_TILE_DATA,
                (UINT8)&__bank_test_b_tiles,
                TEST_B_MAP_DATA,
                (UINT8)&__bank_test_b_map);
        }
    }
}