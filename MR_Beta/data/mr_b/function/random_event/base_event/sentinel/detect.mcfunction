execute as @e[distance=..3,team=rift_party] at @s run function mr_b:random_event/base_event/sentinel/hit
execute if entity @e[distance=..3,team=rift_party] as @s at @s store result storage mr_b:launch knockback.x double 1 run data get entity @s Pos[0]
execute if entity @e[distance=..3,team=rift_party] as @s at @s store result storage mr_b:launch knockback.y double 1 run data get entity @s Pos[1]
execute if entity @e[distance=..3,team=rift_party] as @s at @s store result storage mr_b:launch knockback.z double 1 run data get entity @s Pos[2]
execute if entity @e[distance=..3,team=rift_party] run function mr_b:random_event/base_event/sentinel/location with storage mr_b:launch knockback
execute if entity @e[distance=..3,team=rift_party] run scoreboard players set @s mr_special_enemy_sentinel_charge 20


execute if score @s mr_special_enemy_sentinel_charge matches 10.. run tag @s remove sentinel_charge
execute if score @s mr_special_enemy_sentinel_charge matches 10.. run scoreboard players reset @s mr_special_enemy_sentinel_charge

playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 0.8 1.2
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 0.4 0.6


particle minecraft:cloud ~ ~0.1 ~ 0.15 0.05 0.15 0.02 10 force
particle minecraft:poof ~ ~0.1 ~ 0.08 0.02 0.08 0.01 10 force
particle minecraft:dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.6} ~ ~0.4 ~ 0.05 0.05 0.05 0 15 force

particle minecraft:block{block_state:coarse_dirt} ~ ~0.15 ~ 0.3 0 0.3 0.05 20 force


scoreboard players add @s mr_special_enemy_sentinel_charge 1

