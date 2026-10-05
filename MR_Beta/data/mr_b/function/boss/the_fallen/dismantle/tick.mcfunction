execute as @e[name=base_slash] at @s as @e[name=up_slash] if score @s mr_fallen_flying_slash_link = @n[name=base_slash] mr_fallen_flying_slash_link run tp @n[name=up_slash] ~ ~.75 ~

execute as @e[name=base_slash] at @s as @e[name=down_slash] if score @s mr_fallen_flying_slash_link = @n[name=base_slash] mr_fallen_flying_slash_link run tp @n[name=down_slash] ~ ~-.75 ~

execute as @e[name=base_slash] at @s as @e[name=right_slash] if score @s mr_fallen_flying_slash_link = @n[name=base_slash] mr_fallen_flying_slash_link run tp @n[name=up_slash] ^.75 ^ ^

execute as @e[name=base_slash] at @s as @e[name=left_slash] if score @s mr_fallen_flying_slash_link = @n[name=base_slash] mr_fallen_flying_slash_link run tp @n[name=down_slash] ^-.75 ^ ^






execute as @e[tag=fallen_slash] at @s run tp @s ^ ^ ^1.2

execute as @e[tag=fallen_slash] at @s run particle minecraft:electric_spark ~ ~.5 ~ .01 1 .01 0 10
#execute as @e[tag=fallen_slash] at @s run particle minecraft:end_rod ~ ~.5 ~ .005 .8 .005 0 1
execute as @e[tag=fallen_slash] at @s run particle minecraft:witch ~ ~.5 ~ .005 .8 .005 0 1
execute as @e[tag=fallen_slash] at @s run particle minecraft:enchanted_hit ~ ~.5 ~ .01 1 .01 0 5
execute as @e[tag=fallen_slash] at @s run particle minecraft:crit ~ ~.5 ~ .01 1 .01 0 5


execute as @e[tag=fallen_slash] run scoreboard players add @s global_range 1
execute as @e[tag=fallen_slash] at @s if score @s global_range matches 50.. run kill @s

execute as @e[tag=fallen_slash] if score @s global_range matches ..10 at @s as @e[team=!rift_enemy,tag=!fallen_slash,distance=..3] run function mr_b:boss/the_fallen/dismantle/collision

execute as @e[tag=fallen_slash] if score @s global_range matches 11.. at @s as @e[team=!rift_enemy,tag=!fallen_slash,distance=..2] run function mr_b:boss/the_fallen/dismantle/collision

