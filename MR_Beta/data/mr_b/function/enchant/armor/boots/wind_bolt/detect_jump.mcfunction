
execute unless entity @s[tag=wind_bolt_jump_part_2] run return fail






execute if score @s[tag=wind_bolt_jump_part_2] mr_enchant_wind_bolt_wind matches 1.. run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_forward_impulse":6},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]





#execute if score @s[tag=wind_bolt_jump_part_2] mr_enchant_wind_bolt_wind matches 1.. run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_upward_impulse":2},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

execute if score @s[tag=wind_bolt_jump_part_2] mr_enchant_wind_bolt_wind matches 1.. run function mr_b:sfx/wind_bolt_launch
execute if score @s[tag=wind_bolt_jump_part_2] mr_enchant_wind_bolt_wind matches 1.. run function mr_b:vfx/wind_bolt
execute if score @s[tag=wind_bolt_jump_part_2] mr_enchant_wind_bolt_wind matches 1.. run tag @s remove wind_bolt_jump_part_2
