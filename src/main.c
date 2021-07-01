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
            set_level(&village_overworld);
        }
        else if (joy & J_START)
        {
            set_level(&village_house_1);
        }
        else if (joy & J_LEFT)
        {
            set_level(&village_house_2);
        }
        else if (joy & J_RIGHT)
        {
            set_level(&village_house_3);
        }
        else if (joy & J_UP)
        {
            set_level(&village_house_4);
        }
        else if (joy & J_DOWN)
        {
            set_level(&village_house_5);
        }

        wait_vbl_done();
    }
}