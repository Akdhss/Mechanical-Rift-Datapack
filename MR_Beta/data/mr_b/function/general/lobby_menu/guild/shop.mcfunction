scoreboard players reset @s mr_player_lobby_menu_toggle
execute unless score @s mr_player_lobby_menu_toggle matches 1 run function mr_b:general/lobby_menu/menu_off
clear @s
scoreboard players set @s mr_shop_player_currency 1000
function mr_b:shop/book_const