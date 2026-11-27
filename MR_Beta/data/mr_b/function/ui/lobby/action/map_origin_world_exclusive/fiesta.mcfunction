say map selected [fiesta]

scoreboard players reset @s mr_player_map_menu_toggle
function mr_b:set_placement/spawn_reset
execute positioned 81 60 608 run function mr_b:set_placement/east_spawn
execute positioned 73 58 627 run function mr_b:set_placement/north_spawn
execute positioned 124 62 570 run function mr_b:set_placement/south_spawn
execute positioned 132 76 624 run function mr_b:set_placement/west_spawn
execute positioned 102 57 610 run function mr_b:set_placement/player_spawn
execute positioned 136 57 583 run function mr_b:set_placement/lobby_spawn
tp @s 136 57 583
scoreboard players reset @s mr_player_map_menu_toggle
