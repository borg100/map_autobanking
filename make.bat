call .\clean.bat

@REM gb_map_converter.exe -v -a -l -i .\res\maps\village\village_overworld.png
@REM gb_map_converter.exe -v -a -l -i .\res\maps\village\village_house_1.png
@REM gb_map_converter.exe -v -a -l -i .\res\maps\village\village_house_2.png
@REM gb_map_converter.exe -v -a -l -i .\res\maps\village\village_house_3.png
@REM gb_map_converter.exe -v -a -l -i .\res\maps\village\village_house_4.png
@REM gb_map_converter.exe -v -a -l -i .\res\maps\village\village_house_5.png

mkdir obj\maps

lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_overworld_map.o .\res\maps\village\village_overworld_map.c
lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_overworld_tiles.o .\res\maps\village\village_overworld_tiles.c

lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_1_map.o .\res\maps\village\village_house_1_map.c
lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_1_tiles.o .\res\maps\village\village_house_1_tiles.c

lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_2_map.o .\res\maps\village\village_house_2_map.c
lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_2_tiles.o .\res\maps\village\village_house_2_tiles.c

lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_3_map.o .\res\maps\village\village_house_3_map.c
lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_3_tiles.o .\res\maps\village\village_house_3_tiles.c

lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_4_map.o .\res\maps\village\village_house_4_map.c
lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_4_tiles.o .\res\maps\village\village_house_4_tiles.c

lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_5_map.o .\res\maps\village\village_house_5_map.c
lcc.exe -Wa-l -Wl-m -c -o .\obj\maps\village_house_5_tiles.o .\res\maps\village\village_house_5_tiles.c

lcc.exe -Wa-l -Wl-m -c -o .\obj\main.o .\src\main.c
lcc.exe -Wa-l -Wl-m -c -o .\obj\maps.o .\src\maps.c

lcc.exe -Wa-l -Wl-m -autobank -Wb-ext=.rel -Wb-v -Wl-yt0x1B -Wl-yoA -Wl-ya4 -o .\bin\main.gb ^
.\obj\main.o ^
.\obj\maps.o ^
.\obj\maps\village_overworld_map.o .\obj\maps\village_overworld_tiles.o ^
.\obj\maps\village_house_1_map.o .\obj\maps\village_house_1_tiles.o ^
.\obj\maps\village_house_2_map.o .\obj\maps\village_house_2_tiles.o ^
.\obj\maps\village_house_3_map.o .\obj\maps\village_house_3_tiles.o ^
.\obj\maps\village_house_4_map.o .\obj\maps\village_house_4_tiles.o ^
.\obj\maps\village_house_5_map.o .\obj\maps\village_house_5_tiles.o