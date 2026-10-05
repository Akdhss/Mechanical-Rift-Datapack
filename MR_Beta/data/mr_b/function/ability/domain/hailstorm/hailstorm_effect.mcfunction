scoreboard players remove @s mr_ability_hailstorm_duration 1
scoreboard players add @s mr_ability_hailstorm_apply 1

execute as @a[tag=has_ice_element,distance=..20] run effect give @s resistance 1 1 true
execute as @a[tag=has_ice_element,distance=..20] run effect give @s speed 1 2 true
execute as @a[tag=has_ice_element,distance=..20] run tag @s add hailstorm_buff


particle minecraft:snowflake ~ ~8 ~ 10 8 10 0.02 25 force
particle minecraft:glow ~ ~2 ~ 8 4 8 0.03 25 force
particle minecraft:item_snowball ~ ~7 ~ 9 7 9 0.05 25 force
particle minecraft:end_rod ~ ~3 ~ 7 5 7 0.02 25 force


execute as @a[distance=..20] at @s run function mr_b:ability/domain/hailstorm/hailstorm_effect_sfx

execute if score @s mr_ability_hailstorm_apply matches 50 at @s run function mr_b:ability/domain/hailstorm/hailstorm_apply
execute if score @s mr_ability_hailstorm_duration matches ..0 run function mr_b:ability/domain/hailstorm/hailstorm_kill