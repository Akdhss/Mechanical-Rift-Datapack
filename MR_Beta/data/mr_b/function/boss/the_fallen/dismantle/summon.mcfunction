execute as @s on target if entity @s[team=rift_party] unless entity @a[tag=fs_target] run tag @s add fs_target
execute at @s run tp @s ~ ~ ~ facing entity @n[tag=fs_target] eyes



execute as @a[distance=..50] at @s run function mr_b:boss/the_fallen/sfx/dismantle

effect clear @s slowness

tag @s add fallen_slash_origin
scoreboard players add @s mr_fallen_skill_cd 100
effect give @s minecraft:instant_damage 1 1 true

summon minecraft:marker ~ ~1 ~1 {CustomName:"base_slash",Tags:["fallen_slash","slash_link"]}
summon minecraft:marker ~ ~1 ~1 {CustomName:"up_slash",Tags:["fallen_slash","slash_link"]}
summon minecraft:marker ~ ~1 ~1 {CustomName:"down_slash",Tags:["fallen_slash","slash_link"]}


summon minecraft:marker ~ ~1 ~1 {CustomName:"left_slash",Tags:["side_slash","fallen_slash","slash_link"],}
summon minecraft:marker ~ ~1 ~1 {CustomName:"right_slash",Tags:["side_slash","fallen_slash","slash_link"]}



execute as @e[tag=slash_link] run tp @s ~ ~ ~ facing entity @e[limit=1,tag=fs_target] eyes

scoreboard players add .global mr_fallen_flying_slash_link 1
scoreboard players operation @e[tag=slash_link] mr_fallen_flying_slash_link = .global mr_fallen_flying_slash_link
tag @e remove slash_link
tag @e remove fs_target