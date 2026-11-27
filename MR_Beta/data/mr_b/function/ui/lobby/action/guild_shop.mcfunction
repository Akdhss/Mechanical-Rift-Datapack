# Runs as the player. The old shop entry clears the inventory, so give the launcher back afterwards.
execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id at @s run function mr_b:ui/lobby/cart_remove
scoreboard players reset @s mr_player_lobby_menu_toggle
clear @s
scoreboard players set @s mr_shop_player_currency 1000
function mr_b:shop/book_const
function mr_b:ui/lobby/give
