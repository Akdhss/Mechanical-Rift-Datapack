# warn-off-file execute-group
execute as @s[tag=item_set_bought] run function mr_b:shop/invalid_item_set_purchase
execute as @s[tag=item_set_bought] run return fail


execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 1 if score @s mr_shop_player_currency matches ..349 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 2 if score @s mr_shop_player_currency matches ..749 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 3 if score @s mr_shop_player_currency matches ..849 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 4 if score @s mr_shop_player_currency matches ..849 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 5 if score @s mr_shop_player_currency matches ..849 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 6 if score @s mr_shop_player_currency matches ..849 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 7 if score @s mr_shop_player_currency matches ..849 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 8 if score @s mr_shop_player_currency matches ..849 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 9 if score @s mr_shop_player_currency matches ..849 run function mr_b:shop/insufficient_funds
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 10 if score @s mr_shop_player_currency matches ..849 run function mr_b:shop/insufficient_funds

execute if entity @s[tag=failed_purchase] run return fail


function mr_b:shop/buy_success
