
execute if entity @s[tag=has_ultimate] run title @s actionbar {text:"-- You already have an Ultimate --",bold:true,color:"red"}
execute if entity @s[tag=has_ultimate] run stopsound @s master
execute if entity @s[tag=has_ultimate] run function mr_b:sfx/item_fail
execute if entity @s[tag=has_ultimate] run return fail

title @s actionbar {text:"-- You have bought [ Domain ] - Steel Garden --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 600


tag @s add steel_garden_used
tag @s add steel_garden_user
tag @s add has_ultimate
scoreboard players reset @s mr_ability_steel_garden_cd
scoreboard players set @s mr_ability_steel_garden_cd 1800