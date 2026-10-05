# warn-off-file target-selector-no-type
# warn-off-file execute-group
playsound minecraft:item.mace.smash_ground master @a ~ ~ ~ 1 0.6
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 0.7
playsound minecraft:entity.ravager.stunned master @a ~ ~ ~ 0.7 0.6
playsound minecraft:block.bone_block.break master @a ~ ~ ~ 0.7 0.8

particle minecraft:reverse_portal ~ ~ ~ 2 0.5 2 0.1 90 force
particle minecraft:witch ~ ~ ~ 2 0.4 2 0.1 60 force
particle minecraft:dust{color:[0.2,0.2,0.2],scale:1} ~ ~ ~ 2 0.3 2 0 40 force
particle dust_pillar{block_state:{id:stone}} ~ ~ ~ 2 0.3 2 0.6 160
particle dust_pillar{block_state:{id:dirt}} ~ ~ ~ 2 0.3 2 0.6 160
particle minecraft:cloud ~ ~ ~ 2 0.2 2 0.1 80 force
particle minecraft:poof ~ ~ ~ 2 0.1 2 0.05 70 force


execute at @s as @e[team=rift_enemy,distance=..6.5] run data modify entity @s Motion set value [0f,1f,0f]
execute at @s as @e[team=rift_enemy,distance=..6.5] run tag @s add mr_shatter
execute at @s as @e[team=rift_enemy,distance=..1.5] run damage @s 65 explosion by @e[name=sanc_obelisk,limit=1,distance=0..]
execute at @s as @e[team=rift_enemy,distance=..6.5] run damage @s 40 explosion by @e[name=sanc_obelisk,limit=1,distance=0..]

execute if block ~ ~-.5 ~ air run function mr_b:ability/trap/trap_ground

kill @n[name=sanc_obelisk_landing,distance=0..,limit=1]
tag @s add sanc_landed
