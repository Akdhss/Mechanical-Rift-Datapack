# warn-off-file target-selector-no-type
execute if score @s mr_ability_sanc_cd_ability matches 1.. run function mr_b:ability/sword/sanctuary/sanc_fail
execute if score @s mr_ability_sanc_cd_ability matches 1.. run return fail

execute unless entity @e[team=rift_enemy,distance=0..] run function mr_b:ability/sword/sanctuary/sanc_cancel
execute unless entity @e[team=rift_enemy,distance=0..] run return fail




scoreboard players set @s mr_ability_sanc_cd_ability 200

clear @s potion[potion_contents={custom_color:15300635}] 1

tag @s add sanc_activate

execute unless score @s mr_ability_castle_cd matches 1.. run scoreboard players set @s mr_ability_sanc_cd 600
scoreboard players add @s mr_ability_sanc_cd_count 1

tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@a[tag=sanc_activate,limit=1]"},{text:"]",bold:true,color:"dark_green"},{text:" Blessings Incoming!",bold:false,color:"gold"}]

schedule function mr_b:ability/sword/sanctuary/sanc_wind 1s

playsound minecraft:item.trident.return master @a ~ ~ ~ .9 0.6
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ .8 0.7
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .9 0.6
playsound minecraft:block.note_block.bit master @a ~ ~ ~ .8 2.0
playsound minecraft:block.amethyst_cluster.hit master @a ~ ~ ~ .7 1.8
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ .6 1.5
playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ .5 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ .4 1.8

