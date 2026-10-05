
execute if entity @s[tag=silenced] run return fail
execute if entity @s[tag=desc_land] run return fail
execute if entity @s[tag=desc_activate] run return fail

clear @s potion[potion_contents={custom_color:16770196}] 1
#tp @s ~ ~20 ~

tag @s add desc_activate

tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" Stand Ready!",bold:false,color:"gold"}]

item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_upward_impulse":4},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]



playsound minecraft:entity.player.attack.sweep master @p ~ ~ ~ 1.5 0.6
playsound minecraft:entity.ender_dragon.flap master @p ~ ~ ~ 1.5 0.5
playsound minecraft:item.trident.riptide_3 master @p ~ ~ ~ 1.5 0.7
playsound minecraft:entity.wind_charge.wind_burst master @p ~ ~ ~ 1.8 0.8
playsound minecraft:entity.player.attack.sweep master @p ~ ~ ~ 1 01.6
playsound minecraft:entity.ender_dragon.flap master @p ~ ~ ~ 1 01.5
playsound minecraft:item.trident.riptide_3 master @p ~ ~ ~ 1 01.7
playsound minecraft:entity.wind_charge.wind_burst master @p ~ ~ ~ 1 01.8

particle minecraft:cloud ~ ~ ~ 0.5 0.2 0.5 0.1 30 force
particle minecraft:poof ~ ~ ~ 0.3 0.1 0.3 0.05 20 force
particle minecraft:dust{color:[1,1,1],scale:1.2} ~ ~ ~ 0.2 0.2 0.2 0 15 force
particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.2 20 force



