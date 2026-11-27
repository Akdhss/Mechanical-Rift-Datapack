execute at @s run function mr_b:sfx/item_bought

execute if score @s mr_shop_item matches 1 run function mr_b:shop/item/item_1
execute if score @s mr_shop_item matches 2 run function mr_b:shop/item/item_2
execute if score @s mr_shop_item matches 3 run function mr_b:shop/item/item_3
execute if score @s mr_shop_item matches 4 run function mr_b:shop/item/item_4
execute if score @s mr_shop_item matches 5 run function mr_b:shop/item/item_5
execute if score @s mr_shop_item matches 6 run function mr_b:shop/item/item_6
execute if score @s mr_shop_item matches 7 run function mr_b:shop/item/item_7
execute if score @s mr_shop_item matches 8 run function mr_b:shop/item/item_8
execute if score @s mr_shop_item matches 9 run function mr_b:shop/item/item_9
execute if score @s mr_shop_item matches 10 run function mr_b:shop/item/item_10
execute if score @s mr_shop_item matches 11 run function mr_b:shop/item/item_11
execute if score @s mr_shop_item matches 12 run function mr_b:shop/item/item_12
execute if score @s mr_shop_item matches 13 run function mr_b:shop/item/item_13
execute if score @s mr_shop_item matches 14 run function mr_b:shop/item/item_14
execute if score @s mr_shop_item matches 15 run function mr_b:shop/item/item_15




# warn-off execute-group

execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 1.. run tag @s add selling_all
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 1.. as @s[tag=selling_all] at @s run function mr_b:shop/sell_reset

execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 1 run function mr_b:shop/item_sets/set_1
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 2 run function mr_b:shop/item_sets/set_2
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 3 run function mr_b:shop/item_sets/set_3
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 4 run function mr_b:shop/item_sets/set_4
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 5 run function mr_b:shop/item_sets/set_5
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 6 run function mr_b:shop/item_sets/set_6
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 7 run function mr_b:shop/item_sets/set_7
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 8 run function mr_b:shop/item_sets/set_8
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 9 run function mr_b:shop/item_sets/set_9
execute as @s[tag=!item_set_bought] if score @s mr_shop_item_set matches 10 run function mr_b:shop/item_sets/set_10

scoreboard players reset @s mr_shop_item
scoreboard players reset @s mr_shop_ability
scoreboard players reset @s mr_shop_enchant
scoreboard players reset @s mr_shop_item_set
