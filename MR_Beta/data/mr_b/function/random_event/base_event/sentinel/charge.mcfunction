scoreboard players reset @s mr_special_enemy_sentinel_wind
execute on target run tag @s add sentinel_target
rotate @s facing entity @n[tag=sentinel_target] eyes
item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_forward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
tag @e remove sentinel_target
tag @s add sentinel_charge

particle minecraft:cloud ~ ~0.1 ~ 0.15 0.05 0.15 0.02 10 force
particle minecraft:poof ~ ~0.1 ~ 0.08 0.02 0.08 0.01 10 force
particle minecraft:dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.6} ~ ~0.4 ~ 0.05 0.05 0.05 0 15 force

particle minecraft:block{block_state:coarse_dirt} ~ ~0.05 ~ 0.2 0 0.2 0.05 10 force

playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 0.8 1.4
playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1.0 0.8
playsound minecraft:block.anvil.land hostile @a ~ ~ ~ 0.3 2.0

