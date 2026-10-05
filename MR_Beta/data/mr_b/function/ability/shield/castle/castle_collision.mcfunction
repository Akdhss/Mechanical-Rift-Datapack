scoreboard players set .distance global_range 500

playsound minecraft:entity.wind_charge.wind_burst player @a ~ ~ ~ 1.8 0.9
playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 1.5 0.7
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.7 0.8
playsound minecraft:block.netherite_block.place player @a ~ ~ ~ 1 0.6
playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 1.9 0.7
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.2
playsound minecraft:item.totem.use player @a ~ ~ ~ 1.7 1.1
playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1.6 1.3

execute as @a[tag=castle_rook] unless score @s mr_ability_castle_cd matches 1.. run scoreboard players set @s mr_ability_castle_cd 500
execute as @a[tag=castle_rook] run scoreboard players add @s mr_ability_castle_count 1

execute at @a[tag=castle_rook] as @e[distance=..4.5,team=rift_enemy] run data modify entity @s Motion set value [0f,1.2f,.0f]
execute at @a[tag=castle_rook] as @e[distance=..4.5,team=rift_enemy] run effect give @s slowness 5 2 true

effect give @a[tag=castle_rook] slowness 3 2 true
effect give @a[tag=castle_rook] resistance 3 1 true
effect give @a[tag=castle_rook] regeneration 3 1 true
effect give @a[tag=castle_rook] absorption 3 2 true

effect give @s absorption 3 2 true
effect give @s resistance 3 1 true
effect give @s regeneration 3 1 true

scoreboard players set @a[tag=castle_rook] mr_ability_castle_time 100
clear @a[tag=castle_rook] potion[potion_contents={custom_color:1670752}] 1

execute at @s run tp @a[tag=castle_rook] ^ ^ ^.15