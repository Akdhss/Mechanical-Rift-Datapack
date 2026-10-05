# warn-off-file execute-group
execute if entity @s[tag=has_ultimate] run title @s actionbar {text:"-- You already have an Ultimate --",bold:true,color:"red"}
execute if entity @s[tag=has_ultimate] run stopsound @s master
execute if entity @s[tag=has_ultimate] run function mr_b:sfx/item_fail
execute if entity @s[tag=has_ultimate] run return fail


title @s actionbar {text:"-- You have bought Blade Call --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 550

tag @s add blade_call_user
tag @s add has_ultimate
scoreboard players reset @s mr_enchant_blade_call_kill_ult

tellraw @s {text:"-- Ultimate - [Blade Call] --",color:"gold"}
