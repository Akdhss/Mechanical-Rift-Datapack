tag @s add debil_fire
scoreboard players set @s mr_enchant_debil_time 240
execute at @s positioned ~ ~ ~ anchored eyes run function mr_b:enchant/bow/debilitation/debilitation_laser
title @s actionbar [{text:"-- Debilitation on Cooldown --",color:"gray"}]
scoreboard players reset .distance global_range

item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/bow_impulse":6},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]


playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ .5 0.7
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.7 0.6
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 0.6 0.5