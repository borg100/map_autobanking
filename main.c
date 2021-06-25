#include <gb/gb.h>

#include "submap.h"

#include "maps/test_a/test_a_map.h"
#include "maps/test_a/test_a_tiles.h"

#include "maps/test_b/test_b_map.h"
#include "maps/test_b/test_b_tiles.h"

UINT8 joy;

void main()
{
    DISPLAY_OFF;
    SHOW_BKG;

    set_level(
        TEST_A_MAP_WIDTH,
        TEST_A_MAP_HEIGHT,
        OFFSET(TEST_A_TILE_DATA),
        BANK(TEST_A_TILE_DATA),
        OFFSET(TEST_A_MAP_DATA),
        BANK(TEST_A_MAP_DATA));

    DISPLAY_ON;

    while (TRUE)
    {
        joy = joypad();

        if (joy & J_SELECT)
        {
            set_level(
                TEST_A_MAP_WIDTH,
                TEST_A_MAP_HEIGHT,
                OFFSET(TEST_A_TILE_DATA),
                BANK(TEST_A_TILE_DATA),
                OFFSET(TEST_A_MAP_DATA),
                BANK(TEST_A_MAP_DATA));
        }
        else if (joy & J_START)
        {
            set_level(
                TEST_B_MAP_WIDTH,
                TEST_B_MAP_HEIGHT,
                OFFSET(TEST_B_TILE_DATA),
                BANK(TEST_B_TILE_DATA),
                OFFSET(TEST_B_MAP_DATA),
                BANK(TEST_B_MAP_DATA));
        }

        wait_vbl_done();
    }
}