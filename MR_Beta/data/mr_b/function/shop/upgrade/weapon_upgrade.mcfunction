
clear @s potion[potion_contents={custom_color:4669018}] 1

tag @s add weapon_upgrade_active

tellraw @s [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" Waiting upgrade..",bold:false,color:"gold"}]

playsound minecraft:item.trident.return master @a ~ ~ ~ .9 0.6
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ .8 0.7
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ .9 0.6
playsound minecraft:block.note_block.bit master @a ~ ~ ~ .8 2.0
playsound minecraft:block.amethyst_cluster.hit master @a ~ ~ ~ .7 1.8
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ .6 1.5
playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ .5 0.5
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ .4 1.8

