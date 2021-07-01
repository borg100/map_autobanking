#include <gb/gb.h>
#include "maps.h"

UINT8 joy;

void main()
{
    DISPLAY_OFF;
    SHOW_BKG;

    BGP_REG = 0x1B;
    set_level(&village_overworld);

    DISPLAY_ON;

    while (TRUE)
    {
        joy = joypad();

        if (joy & J_SELECT)
        {
            set_level(&village_house_1);
        }
        else if (joy & J_START)
        {
            set_level(&village_house_2);
        }
        else if (joy & J_LEFT)
        {
            set_level(&village_overworld);
        }

        wait_vbl_done();
    }
}