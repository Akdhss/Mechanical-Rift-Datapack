
tag @s add sonic_fire
scoreboard players set @s mr_enchant_sonic_time 240
execute at @s positioned ~ ~ ~ anchored eyes run function mr_b:enchant/bow/sonic_boom/sonic_laser
title @s actionbar [{text:"-- Sonic Boom on Cooldown --",color:"gray"}]
scoreboard players reset .distance global_range

item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/bow_impulse":6},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1.3 1.5
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1.3 0.7
playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1.3 0.7
playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1.3 0.7
playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 1.3 0.7