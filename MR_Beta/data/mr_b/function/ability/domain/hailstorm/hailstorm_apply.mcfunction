scoreboard players reset @s mr_ability_hailstorm_apply

tag @e[team=rift_enemy,distance=..20] add mr_cold

execute at @s as @e[distance=..20,team=rift_enemy,tag=!mr_freeze] if score @s mr_effect_cold_time matches ..50 run scoreboard players set @s mr_effect_cold_time 50
execute at @s as @e[distance=..20,team=rift_enemy,tag=mr_freeze] if score @s mr_effect_cold_time matches ..100 run scoreboard players set @s mr_effect_cold_time 100
scoreboard players add @e[distance=..20,team=rift_enemy] mr_effect_cold_stack 1
execute as @a[tag=mr_cold] store result bossbar cold_effect max run scoreboard players get @s mr_effect_cold_time
playsound minecraft:block.glass.break master @a ~ ~ ~ 0.5 0.6
playsound minecraft:block.calcite.break master @a ~ ~ ~ 0.6 0.7
playsound minecraft:block.pointed_dripstone.break master @a ~ ~ ~ 0.4 0.8
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 0.15 2
