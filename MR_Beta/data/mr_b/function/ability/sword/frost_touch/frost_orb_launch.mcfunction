

tag @e[team=rift_enemy,distance=..4] add mr_cold

execute as @e[distance=..4,team=rift_enemy] if score @s mr_effect_cold_time matches ..150 run scoreboard players set @s mr_effect_cold_time 150
execute as @e[distance=..4,team=rift_enemy] unless score @s mr_effect_cold_cd matches 1.. run scoreboard players add @s mr_effect_cold_stack 1
execute as @e[distance=..4,team=rift_enemy] run scoreboard players set @s mr_effect_cold_cd 3
execute as @a[tag=mr_cold] store result bossbar cold_effect max run scoreboard players get @s mr_effect_cold_time

tp @s ^ ^ ^1.3
scoreboard players add @s mr_ability_frost_touch_range 1

particle snowflake ~ ~ ~ .75 .75 .75 0 10 normal


execute if score @s mr_ability_frost_touch_range matches 15.. run kill @s