
say map selected [aztec]

scoreboard players reset @s mr_player_map_menu_toggle
function mr_b:set_placement/spawn_reset
execute positioned -17 57 80 run function mr_b:set_placement/lobby_spawn
execute positioned -26.44 57.00 51.40 run function mr_b:set_placement/east_spawn
execute positioned -26.45 57.00 33.48 run function mr_b:set_placement/north_spawn
execute positioned -38.53 57.00 51.40 run function mr_b:set_placement/south_spawn
execute positioned -38.44 57.00 33.55 run function mr_b:set_placement/west_spawn
execute positioned 32 57 68 run function mr_b:set_placement/player_spawn
tp @s -17 57 80
scoreboard players reset @s mr_player_map_menu_toggle
