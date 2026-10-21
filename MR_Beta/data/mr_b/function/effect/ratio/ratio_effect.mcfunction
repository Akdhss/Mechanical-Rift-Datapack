tag @s add mr_ratio_target

scoreboard players remove @s mr_effect_ratio_time 1
effect give @s glowing 1 0 true
effect give @s weakness 1 1 true



execute store result bossbar ratio_effect value run scoreboard players get @s mr_effect_ratio_time

execute if score @s mr_effect_ratio_time matches ..0 run function mr_b:effect/ratio/ratio_expire