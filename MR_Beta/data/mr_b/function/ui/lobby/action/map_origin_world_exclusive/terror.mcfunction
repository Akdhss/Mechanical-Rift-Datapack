say map selected [terror]

scoreboard players reset @s mr_player_map_menu_toggle
function mr_b:set_placement/spawn_reset
tp @s 102 56 52
execute positioned 96.50 57.00 29.53 run function mr_b:set_placement/player_spawn
execute positioned 77.48 57.00 53.59 run function mr_b:set_placement/east_spawn
execute positioned 122.40 57.00 53.52 run function mr_b:set_placement/north_spawn
execute positioned 123.67 57.00 5.60 run function mr_b:set_placement/west_spawn
execute positioned 77.54 57.00 4.58 run function mr_b:set_placement/south_spawn
execute positioned 102 56 52 run function mr_b:set_placement/lobby_spawn


scoreboard players reset @s mr_player_map_menu_toggle