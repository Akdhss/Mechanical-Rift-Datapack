execute as @s at @s as @e[name=mirror_face] if score @s mr_special_enemy_mirror_link = @n[name=Mirror] mr_special_enemy_mirror_link run tag @s add mr_unassigned
tag @s add mr_unassigned
execute as @e[tag=mr_unassigned] run data modify entity @s Health set value 10000f

execute store result score @e[tag=mr_unassigned] mr_wave_loc_random run random value 1..4
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4
execute as @e[tag=mr_unassigned] run function mr_b:enemy_wave/enemy_loc