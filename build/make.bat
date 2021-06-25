call .\clean.bat

.\map_tool\gb_map_converter.exe -i ..\maps\test_a\test_a.png -o ..\maps\test_a
.\map_tool\gb_map_converter.exe -i ..\maps\test_b\test_b.png -o ..\maps\test_b

lcc.exe -Wa-l -Wl-m  -c -o main.o ..\main.c

lcc.exe -Wa-l -Wl-m  -c -o submap.o ..\submap.c

lcc.exe -Wa-l -Wl-m  -c -o test_a_map.o ..\maps\test_a\test_a_map.c
lcc.exe -Wa-l -Wl-m  -c -o test_a_tiles.o ..\maps\test_a\test_a_tiles.c

lcc.exe -Wa-l -Wl-m  -c -o test_b_map.o ..\maps\test_b\test_b_map.c
lcc.exe -Wa-l -Wl-m  -c -o test_b_tiles.o ..\maps\test_b\test_b_tiles.c

lcc.exe -Wa-l -Wl-m  -autobank -Wb-ext=.rel -Wb-v -Wl-yt0x1B -Wl-yoA -Wl-ya4 -o main.gb ^
main.o ^
submap.o ^
test_a_map.o test_a_tiles.o ^
test_b_map.o test_b_tiles.o