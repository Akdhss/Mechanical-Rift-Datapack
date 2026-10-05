title @s actionbar {text:"-- CANNOT BUY REFRESHABLES --",color:"red"}

scoreboard players reset @s mr_shop_item
scoreboard players reset @s mr_shop_ability



execute at @s run function mr_b:sfx/item_fail