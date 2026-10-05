tag @s add aether_fire
scoreboard players set @s mr_enchant_aether_time 280
execute at @s positioned ~ ~ ~ anchored eyes run function mr_b:enchant/bow/aetherline/aetherline_laser
title @s actionbar [{text:"-- Aetherline on Cooldown --",color:"gray"}]
scoreboard players reset .distance global_range

item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/bow_impulse":6},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 1.0 1.3
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.7 1.8
playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 0.8 1.5