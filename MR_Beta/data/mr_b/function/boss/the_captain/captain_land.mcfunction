execute as @e[tag=boss,type=ravager,limit=1] run data merge entity @s {fall_distance:0f}
execute as @a[team=rift_party,distance=..5] run damage @s 15 mob_attack by @e[tag=boss,type=ravager,limit=1]

tag @s remove captain_leaping


playsound minecraft:entity.ravager.stunned master @a ~ ~ ~ 1 0.6
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.9 0.7
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 0.7 0.6
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 0.6 0.4
playsound minecraft:ambient.cave master @a ~ ~ ~ 0.5 0.3

particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle minecraft:block{block_state:dirt} ~ ~ ~ 1.5 0.3 1.5 0.6 120 force
particle minecraft:block{block_state:stone} ~ ~ ~ 1 0.6 1 0.4 80 force
particle minecraft:poof ~ ~0.1 ~ 2 0 2 0 60 force
particle minecraft:cloud ~ ~0.2 ~ 1.5 0.2 1.5 0.05 80 force