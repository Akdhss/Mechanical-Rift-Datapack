# warn-off-file target-selector-no-type
# warn-off-file execute-group
execute if score @s mr_shop_ability matches 2 if entity @s[advancements={mr_b:item_set_shop/item_set_4=true}] run function mr_b:shop/invalid_ability
execute if score @s mr_shop_ability matches 3 if entity @s[advancements={mr_b:item_set_shop/item_set_4=true}] run function mr_b:shop/invalid_ability
execute if score @s mr_shop_ability matches 4 if entity @s[advancements={mr_b:item_set_shop/item_set_3=true}] run function mr_b:shop/invalid_ability
execute if score @s mr_shop_ability matches 6 if entity @s[advancements={mr_b:item_set_shop/item_set_5=true}] run function mr_b:shop/invalid_ability
execute if score @s mr_shop_ability matches 6 if entity @s[advancements={mr_b:item_set_shop/item_set_8=true}] run function mr_b:shop/invalid_ability
execute if score @s mr_shop_ability matches 11 if entity @s[advancements={mr_b:item_set_shop/item_set_7=true}] run function mr_b:shop/invalid_ability
execute if score @s mr_shop_ability matches 13 if entity @s[advancements={mr_b:item_set_shop/item_set_9=true}] run function mr_b:shop/invalid_ability


execute if score @s mr_shop_ability matches 1 if score @s mr_shop_player_currency matches ..549 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 2 if score @s mr_shop_player_currency matches ..74 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 3 if score @s mr_shop_player_currency matches ..139 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 4 if score @s mr_shop_player_currency matches ..124 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 5 if score @s mr_shop_player_currency matches ..299 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 6 if score @s mr_shop_player_currency matches ..89 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 7 if score @s mr_shop_player_currency matches ..59 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 8 if score @s mr_shop_player_currency matches ..39 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 9 if score @s mr_shop_player_currency matches ..89 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 10 if score @s mr_shop_player_currency matches ..54 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 11 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 12 if score @s mr_shop_player_currency matches ..549 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 13 if score @s mr_shop_player_currency matches ..99 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 14 if score @s mr_shop_player_currency matches ..549 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 15 if score @s mr_shop_player_currency matches ..174 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 16 if score @s mr_shop_player_currency matches ..124 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 17 if score @s mr_shop_player_currency matches ..124 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 18 if score @s mr_shop_player_currency matches ..199 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 19 if score @s mr_shop_player_currency matches ..124 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 20 if score @s mr_shop_player_currency matches ..149 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 21 if score @s mr_shop_player_currency matches ..599 run function mr_b:shop/insufficient_funds
execute if score @s mr_shop_ability matches 22 if score @s mr_shop_player_currency matches ..599 run function mr_b:shop/insufficient_funds

execute if entity @s[tag=failed_purchase] run return fail


function mr_b:shop/buy_success
