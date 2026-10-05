# warn-off-file execute-group
# warn-off-file target-selector-no-type
attribute @s gravity base reset
effect clear @s resistance 
effect give @s resistance 1 255 true
effect give @s instant_health 1 3 true
effect give @s saturation 1 10 true

execute at @s as @e[team=rift_enemy,distance=..7.5] run tag @s add mr_shatter
execute at @s as @e[team=rift_enemy,distance=..7.5] run data modify entity @s Motion set value [0f,1f,0f]
execute at @s as @e[team=rift_enemy,distance=..2.5] run damage @s 50 explosion by @n[tag=desc_land,limit=1,distance=0..]
execute at @s as @e[team=rift_enemy,distance=..4.5] run damage @s 30 explosion by @n[tag=desc_land,limit=1,distance=0..]
execute at @s as @e[team=rift_enemy,distance=..7.5] run damage @s 15 explosion by @n[tag=desc_land,limit=1,distance=0..]
tag @s remove desc_land

playsound minecraft:item.mace.smash_ground master @a ~ ~ ~ 1 0.6
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 0.7
playsound minecraft:entity.ravager.stunned master @a ~ ~ ~ 0.7 0.6
playsound minecraft:block.bone_block.break master @a ~ ~ ~ 0.7 0.8

particle minecraft:reverse_portal ~ ~ ~ 2 0.5 2 0.1 920 force
particle minecraft:witch ~ ~ ~ 2 0.4 2 0.1 20 force
particle minecraft:dust{color:[0.2,0.2,0.2],scale:1} ~ ~ ~ 2 0.3 2 0 20 force
particle dust_pillar{block_state:{id:stone}} ~ ~ ~ 2 0.3 2 0.6 160
particle dust_pillar{block_state:{id:dirt}} ~ ~ ~ 2 0.3 2 0.6 160
particle minecraft:cloud ~ ~ ~ 2 0.2 2 0.1 20 force
particle minecraft:poof ~ ~ ~ 2 0.1 2 0.05 30 force
