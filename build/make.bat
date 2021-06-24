@REM X:\gb\projects\map_autobanking\build\map_tool\gb_map_converter.exe -i maps/test_a/test_a.png -o maps/test_a
@REM X:\gb\projects\map_autobanking\build\map_tool\gb_map_converter.exe -i maps/test_b/test_b.png -o maps/test_b

lcc.exe -Wa-l -Wl-m  -c -o build/main.o main.c

lcc.exe -Wa-l -Wl-m  -c -o build/submap.o submap.c

lcc.exe -Wa-l -Wl-m  -c -o build/test_a_map.o maps/test_a/test_a_map.c
lcc.exe -Wa-l -Wl-m  -c -o build/test_a_tiles.o maps/test_a/test_a_tiles.c

lcc.exe -Wa-l -Wl-m  -c -o build/test_b_map.o maps/test_b/test_b_map.c
lcc.exe -Wa-l -Wl-m  -c -o build/test_b_tiles.o maps/test_b/test_b_tiles.c

lcc.exe -Wa-l -Wl-m  -autobank -Wb-ext=.rel -Wb-v -Wl-yt0x1B -Wl-yoA -Wl-ya4 -o build/main.gb ^
build/main.o ^
build/submap.o ^
build/test_a_map.o build/test_a_tiles.o ^
build/test_b_map.o build/test_b_tiles.o