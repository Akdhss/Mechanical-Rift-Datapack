execute as @e[type=wither_skeleton,tag=boss] on target if entity @s[team=rift_party] unless entity @a[tag=fs_target] run tag @s add fs_target
execute at @s run tp @s ~ ~ ~ facing entity @n[tag=fs_target] eyes
execute at @s if score @s mr_fallen_skill_wind matches 20.. run tp @s ~ ~.2 ~

execute at @s if score @s mr_fallen_skill_wind matches 20.. run item replace entity @s saddle with saddle[enchantments={"mr_b:impulse/general_forward_impulse":10},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]
tag @s remove fallen_wind
effect clear @s slowness
tag @e remove fs_target
scoreboard players reset @s mr_fallen_skill_wind
scoreboard players add @s[tag=!collapse_ready] mr_fallen_dodge_cd 60
effect give @s minecraft:instant_damage 1 1 true
tag @s[tag=!collapse_ready] add fallen_juggle

schedule function mr_b:boss/the_fallen/fallen_fs_collision 1t



