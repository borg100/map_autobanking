call .\clean.bat

gb_map_converter.exe -i .\src\maps\test_a\test_a.png -o .\src\maps\test_a -l
gb_map_converter.exe -i .\src\maps\test_b\test_b.png -o .\src\maps\test_b -l

lcc.exe -Wa-l -Wl-m  -c -o .\obj\main.o .\src\main.c

lcc.exe -Wa-l -Wl-m  -c -o .\obj\submap.o .\src\submap.c

lcc.exe -Wa-l -Wl-m  -c -o .\obj\test_a_map.o .\src\maps\test_a\test_a_map.c
lcc.exe -Wa-l -Wl-m  -c -o .\obj\test_a_tiles.o .\src\maps\test_a\test_a_tiles.c

lcc.exe -Wa-l -Wl-m  -c -o .\obj\test_b_map.o .\src\maps\test_b\test_b_map.c
lcc.exe -Wa-l -Wl-m  -c -o .\obj\test_b_tiles.o .\src\maps\test_b\test_b_tiles.c

lcc.exe -Wa-l -Wl-m  -autobank -Wb-ext=.rel -Wb-v -Wl-yt0x1B -Wl-yoA -Wl-ya4 -o .\bin\main.gb ^
.\obj\main.o ^
.\obj\submap.o ^
.\obj\test_a_map.o .\obj\test_a_tiles.o ^
.\obj\test_b_map.o .\obj\test_b_tiles.o