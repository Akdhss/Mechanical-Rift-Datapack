tag @e[distance=..4,team=rift_enemy] add mr_cold
execute if score @s mr_effect_cold_time matches ..100 run scoreboard players set @e[distance=..4,team=rift_enemy] mr_effect_cold_time 100
scoreboard players add @e[distance=..4,team=rift_enemy] mr_effect_cold_stack 1

tag @e[distance=..4,team=rift_party] add mr_cold
execute if score @s mr_effect_cold_time matches ..100 run scoreboard players set @e[distance=..4,team=rift_party] mr_effect_cold_time 100
scoreboard players add @e[distance=..4,team=rift_party] mr_effect_cold_stack 1

execute as @a[team=rift_party] store result bossbar cold_effect max run scoreboard players get @s mr_effect_cold_time

playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.9 1.4
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 1 0.7
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 0.45 1.9
playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 0.6






kill @s