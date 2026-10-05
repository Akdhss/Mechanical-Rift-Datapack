scoreboard players remove @s mr_effect_cold_cd 1
execute if score @s mr_effect_cold_cd matches ..0 run scoreboard players reset @s mr_effect_cold_cd
execute if score @s mr_effect_cold_stack matches 2.. at @s run function mr_b:effect/freeze/freeze_effect
execute if score @s mr_effect_cold_stack matches 2.. run return fail
attribute @s movement_speed modifier add movement_speed -.5 add_multiplied_total
attribute @s jump_strength modifier add jump_strength -.5 add_multiplied_total
attribute @s attack_speed modifier add attack_speed -.5 add_multiplied_total
scoreboard players remove @s mr_effect_cold_time 1

execute as @e[tag=mr_freeze] at @s run tp ~ ~ ~

execute store result bossbar cold_effect value run scoreboard players get @s mr_effect_cold_time



tag @s add mr_cold
particle minecraft:snowflake ~ ~1 ~ 0.35 0.7 0.35 0.015 1 force
particle minecraft:item_snowball ~ ~1 ~ 0.25 0.6 0.25 0 1 force

scoreboard players remove @s mr_effect_cold_cd 1



execute if score @s mr_effect_cold_time matches ..0 run function mr_b:effect/cold/cold_expire
