particle minecraft:cloud ~ ~ ~ 0.5 0.2 0.5 0.1 30 force
particle minecraft:poof ~ ~ ~ 0.3 0.1 0.3 0.05 20 force
particle minecraft:dust{color:[1,1,1],scale:1.2} ~ ~ ~ 0.2 0.2 0.2 0 15 force
particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0.2 20 force

playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 1 1.5
playsound minecraft:entity.lightning_bolt.impact player @s ~ ~ ~ 0.5 1.3

effect give @s slow_falling 3 1 true

tag @s add cloudstep_used

item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/cloud_step_impulse":4},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]