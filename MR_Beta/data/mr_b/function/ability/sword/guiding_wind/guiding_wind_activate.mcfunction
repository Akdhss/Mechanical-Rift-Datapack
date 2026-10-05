
execute if entity @s[tag=silenced] run return fail
execute if score @s mr_ability_guide_cd matches 1.. run return fail

execute store result storage mr_b:launch jump.x1 double 1 run data get entity @s Rotation[0] 1
execute store result storage mr_b:launch jump.y1 double 1 run data get entity @s Rotation[1] 1





#summon marker ~ ~ ~ {CustomName:"guiding_wind_dir"}

#tag @s add guiding_wind




execute if predicate mr_b:player/movement/forward run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_forward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if predicate mr_b:player/movement/forward_left run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_forward_left_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if predicate mr_b:player/movement/forward_right run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_forward_right_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

execute if predicate mr_b:player/movement/backward run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if predicate mr_b:player/movement/backward_left run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_left_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if predicate mr_b:player/movement/backward_right run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_right_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

execute if predicate mr_b:player/movement/right run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_right_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if predicate mr_b:player/movement/left run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_left_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

execute if predicate mr_b:player/movement/neutral run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_forward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

execute if predicate mr_b:player/movement/equal_strafe run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if predicate mr_b:player/movement/equal_strafe if predicate mr_b:player/movement/forward run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_forward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
execute if predicate mr_b:player/movement/equal_strafe if predicate mr_b:player/movement/backward run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]

execute if predicate mr_b:player/movement/equal_nonstrafe run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_backward_impulse":5},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]


effect give @s resistance 1 11 true

clear @s potion[potion_contents={custom_color:9078660}] 1

playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 1.8 1.6
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 1.6 1.9
playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 1.7 1.5
playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 1.4 1.7

scoreboard players set @s mr_ability_guide_cd 5





