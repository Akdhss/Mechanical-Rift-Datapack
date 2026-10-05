# warn-off-file target-selector-no-type

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 5 0.45
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 4 0.5
playsound minecraft:block.stone.break master @a ~ ~ ~ 3 0.5

execute as @e[distance=..3] run damage @s 6 mr_b:explosion by @n[name=Meteor,distance=0..]
execute as @e[distance=..4] run damage @s 3 mr_b:explosion by @n[name=Meteor,distance=0..]

particle minecraft:dust{color:[1.0,0.35,0.05],scale:1} ~ ~ ~ 1 0.5 1 0.1 100 force
particle minecraft:flame ~ ~ ~ 1 1 1 0.15 150 force
particle minecraft:large_smoke ~ ~ ~ 1.5 1.5 1.5 0.05 80 force
particle minecraft:lava ~ ~ ~ 1 1 1 0.2 40 force
particle minecraft:block{block_state:{id:"minecraft:stone"}} ~ ~ ~ 1 0.3 1 0.5 100 force
particle minecraft:block{block_state:{id:"minecraft:netherrack"}} ~ ~ ~ 1 0.3 1 0.7 80 force
particle explosion ~ ~ ~ 1 0.3 1 1 5


execute as @e[distance=..4,team=rift_party,tag=!mr_afterburn] store result score @s mr_effect_afterburn_max_health run attribute @s minecraft:max_health get
execute as @e[distance=..4,team=rift_enemy,tag=!mr_afterburn] store result score @s mr_effect_afterburn_max_health run attribute @s minecraft:max_health get

execute as @e[distance=..4,team=rift_enemy] run tag @s add mr_afterburn
execute as @e[distance=..4,team=rift_party] run tag @s add mr_afterburn


execute as @e[distance=..4,team=rift_enemy] run scoreboard players set @s mr_effect_afterburn_time 150
execute as @e[distance=..4,team=rift_party] run scoreboard players set @s mr_effect_afterburn_time 150

execute as @e[distance=..4,team=rift_enemy] store result bossbar afterburn_effect max run scoreboard players get @s mr_effect_afterburn_time
execute as @e[distance=..4,team=rift_party] store result bossbar afterburn_effect max run scoreboard players get @s mr_effect_afterburn_time

execute as @e[distance=..4,team=rift_party] run scoreboard players add @s mr_effect_afterburn_stack 3
execute as @e[distance=..4,team=rift_enemy] run scoreboard players add @s mr_effect_afterburn_stack 3

execute as @e[distance=..4,team=rift_party] run scoreboard players add @s mr_effect_afterburn_cd 10
execute as @e[distance=..4,team=rift_enemy] run scoreboard players add @s mr_effect_afterburn_cd 10


kill @n[tag=mr_meteor,limit=1,distance=..1]
kill @s