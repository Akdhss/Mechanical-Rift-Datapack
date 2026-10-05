scoreboard players add @s mr_player_map_menu_toggle 1
execute if score @s mr_player_map_menu_toggle matches 2.. run scoreboard players reset @s mr_player_map_menu_toggle


execute if score @s mr_player_map_menu_toggle matches 1 run function mr_b:general/lobby_menu/map_menu_on
#execute unless score @s mr_player_party_menu_toggle matches 1 run say party menu off

