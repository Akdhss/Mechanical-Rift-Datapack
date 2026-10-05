tag @n[team=rift_enemy,sort=random,distance=..10] add targetting_ratio

execute as @e[tag=targetting_ratio] store result score @s global_random run random value 1..2
execute as @e[tag=targetting_ratio] at @s if score @s global_random matches 1 run playsound mr_b:ratio_apply master @a ~ ~ ~ 2
execute as @e[tag=targetting_ratio] at @s if score @s global_random matches 2 run playsound mr_b:ratio_apply_2 master @a ~ ~ ~ 2
tag @e[tag=targetting_ratio] add mr_ratio_target
tag @e[tag=targetting_ratio] remove targetting_ratio


execute as @e[tag=mr_ratio_target] unless score @s mr_effect_ratio_time matches 1.. run scoreboard players set @s mr_effect_ratio_time 400

execute as @a[tag=mr_ratio_target] store result bossbar ratio_effect max run scoreboard players get @s mr_effect_ratio_time

scoreboard players reset @s mr_enchant_ratio_time