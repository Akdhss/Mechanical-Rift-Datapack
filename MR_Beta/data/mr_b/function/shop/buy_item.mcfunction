
execute if score @s mr_shop_item matches 1 if score @s mr_shop_player_currency matches ..49 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 2 if score @s mr_shop_player_currency matches ..74 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 3 if score @s mr_shop_player_currency matches ..74 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 4 if score @s mr_shop_player_currency matches ..124 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 5 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 6 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 7 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 8 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 9 if score @s mr_shop_player_currency matches ..74 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 10 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 11 if score @s mr_shop_player_currency matches ..49 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 12 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 13 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 14 if score @s mr_shop_player_currency matches ..199 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_item matches 15 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds

execute if entity @s[tag=failed_purchase] run return fail


function mr_b:shop/buy_success
