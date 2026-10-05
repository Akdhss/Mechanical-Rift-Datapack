say map selected [skyline]

scoreboard players reset @s mr_player_map_menu_toggle
function mr_b:set_placement/spawn_reset
execute positioned -209.057 111 173.9 run function mr_b:set_placement/player_spawn
execute positioned -154.9 119 208 run function mr_b:set_placement/east_spawn
execute positioned -173 119 120 run function mr_b:set_placement/north_spawn
execute positioned -243 119 227 run function mr_b:set_placement/south_spawn
execute positioned -266 119 138 run function mr_b:set_placement/west_spawn
execute positioned -209 103 174 run function mr_b:set_placement/lobby_spawn

tp @s -209 103 174

scoreboard players reset @s mr_player_map_menu_toggle