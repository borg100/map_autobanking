#include <gb/gb.h>

#include "submap.h"

#include "maps/test_a/test_a_map.h"
#include "maps/test_a/test_a_tiles.h"

#include "maps/test_b/test_b_map.h"
#include "maps/test_b/test_b_tiles.h"

UINT8 joy;

void init_test_a()
{
    BGP_REG = TEST_A_PALETTE;
    set_level(
        TEST_A_MAP_WIDTH,
        TEST_A_MAP_HEIGHT,
        OFFSET(test_a_tile_data),
        BANK(test_a_tile_data),
        OFFSET(test_a_map_data),
        BANK(test_a_map_data));
}

void init_test_b()
{
    BGP_REG = TEST_B_PALETTE;
    set_level(
        TEST_B_MAP_WIDTH,
        TEST_B_MAP_HEIGHT,
        OFFSET(test_b_tile_data),
        BANK(test_b_tile_data),
        OFFSET(test_b_map_data),
        BANK(test_b_map_data));
}

void main()
{
    DISPLAY_OFF;
    SHOW_BKG;

    init_test_a();

    DISPLAY_ON;

    while (TRUE)
    {
        joy = joypad();

        if (joy & J_SELECT)
        {
            init_test_a();
        }
        else if (joy & J_START)
        {
            init_test_b();
        }

        wait_vbl_done();
    }
}