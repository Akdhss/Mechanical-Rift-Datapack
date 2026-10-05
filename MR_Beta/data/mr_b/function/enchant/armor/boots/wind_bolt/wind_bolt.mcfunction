execute if score @s[tag=wind_bolt_jump_part_2] mr_enchant_wind_bolt_wind matches 1.. if entity @s[predicate=mr_b:wind_bolt] run function mr_b:enchant/armor/boots/wind_bolt/wind_bolt_launch_2

execute if score @s mr_enchant_wind_bolt_count matches 25.. unless entity @s[predicate=mr_b:wind_bolt] run function mr_b:enchant/armor/boots/wind_bolt/wind_bolt_launch
execute if score @s mr_enchant_wind_bolt_count matches 1.. unless entity @s[predicate=mr_b:wind_bolt] run scoreboard players reset @s mr_enchant_wind_bolt_count
execute if entity @s[tag=wind_bolt_jump] run scoreboard players add @s mr_enchant_wind_bolt_wind 1

execute if score @s[tag=wind_bolt_jump] mr_enchant_wind_bolt_wind matches 29.. run tag @s remove wind_bolt_jump_part_2
execute if score @s[tag=wind_bolt_jump] mr_enchant_wind_bolt_wind matches 29.. run tag @s remove wind_bolt_jump
execute if score @s mr_enchant_wind_bolt_wind matches 29.. run scoreboard players reset @s mr_enchant_wind_bolt_wind


execute unless entity @s[predicate=mr_b:wind_bolt] run return fail

execute unless score @s mr_enchant_wind_bolt_count matches 25.. run scoreboard players add @s mr_enchant_wind_bolt_count 1
execute if score @s mr_enchant_wind_bolt_count matches 24 run function mr_b:sfx/wind_bolt_ready
