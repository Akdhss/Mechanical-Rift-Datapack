# warn-off execute-group
execute if entity @s[tag=has_armor] run title @s actionbar {text:"-- You already have armor --",bold:true,color:"red"}
execute if entity @s[tag=has_armor] run stopsound @s master
execute if entity @s[tag=has_armor] run function mr_b:sfx/item_fail
execute if entity @s[tag=has_armor] run return fail

title @s actionbar {text:"-- You have bought Armor --",bold:true,color:"gold"}

execute unless entity @s[tag=has_head] run scoreboard players remove @s mr_shop_player_currency 15
execute unless entity @s[tag=has_body] run scoreboard players remove @s mr_shop_player_currency 25
execute unless entity @s[tag=has_legs] run scoreboard players remove @s mr_shop_player_currency 20
execute unless entity @s[tag=has_feet] run scoreboard players remove @s mr_shop_player_currency 15

execute unless entity @s[tag=has_head] run item replace entity @s armor.head with diamond_helmet 1
execute unless entity @s[tag=has_body] run item replace entity @s armor.chest with diamond_chestplate 1
execute unless entity @s[tag=has_legs] run item replace entity @s armor.legs with diamond_leggings 1
execute unless entity @s[tag=has_feet] run item replace entity @s armor.feet with diamond_boots 1


scoreboard players reset @s mr_shop_item
