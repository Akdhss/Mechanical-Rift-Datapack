

execute if entity @e[name=player_spawn] run function mr_b:shop/sell_all

scoreboard players set @s mr_shop_player_currency 0
scoreboard players reset @s mr_player_lobby_menu_toggle
scoreboard players reset @s mr_player_party_menu_toggle
scoreboard players reset @s mr_player_setting_menu_toggle
scoreboard players reset @s mr_player_map_menu_toggle
clear @s