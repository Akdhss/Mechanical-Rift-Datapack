item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/wind_bolt_impulse":6},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
function mr_b:sfx/wind_bolt_launch
function mr_b:vfx/wind_bolt
tag @s add wind_bolt_jump_part_2
tag @s add wind_bolt_jump
execute as @e[team=rift_enemy,distance=..2.5] run data modify entity @s Motion set value [0f,.75f,0f]