item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/wind_bolt_impulse":6},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
function mr_b:sfx/wind_bolt_launch
function mr_b:vfx/wind_bolt
scoreboard players set @s mr_enchant_wind_bolt_wind 30
tag @s remove wind_bolt_jump_part_2