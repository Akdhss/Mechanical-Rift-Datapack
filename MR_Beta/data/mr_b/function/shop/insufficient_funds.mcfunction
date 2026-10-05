title @s actionbar {text:"-- INSUFFICIENT FUNDS --",color:"dark_gray"}


scoreboard players reset @s mr_shop_item
scoreboard players reset @s mr_shop_ability
scoreboard players reset @s mr_shop_enchant
scoreboard players reset @s mr_shop_item_set

tag @s add failed_purchase

execute at @s run function mr_b:sfx/item_fail

