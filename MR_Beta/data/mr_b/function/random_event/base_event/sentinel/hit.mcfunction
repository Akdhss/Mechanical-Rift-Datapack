execute as @s at @s store result storage mr_b:launch knockback.x1 double 1 run data get entity @s Rotation[0]
execute as @s at @s store result storage mr_b:launch knockback.y1 double 1 run data get entity @s Rotation[1]

particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.15 30 force
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.4 25 force
particle minecraft:dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:1.2} ~ ~1 ~ 0.3 0.3 0.3 0 12 force

rotate @s facing entity @n[tag=sentinel_charge]


item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_impulse":3},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 0.9 1.2
playsound minecraft:entity.lightning_bolt.impact hostile @s ~ ~ ~ 0.7 1.6
playsound minecraft:entity.player.attack.knockback hostile @s ~ ~ ~ 0.9 0.8
playsound minecraft:block.anvil.land hostile @s ~ ~ ~ 0.5 1.7



tag @s add mr_stun
scoreboard players set @s mr_effect_stun_time 20
execute as @s store result bossbar stun_effect max run scoreboard players get @s mr_effect_stun_time


function mr_b:random_event/base_event/sentinel/knockback with storage mr_b:launch knockback
