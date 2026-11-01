# warn-off-file target-selector-no-type
# warn-off-file execute-group
execute if entity @s store result score @s mr_wave_enemy_random run random value 1..20
execute if entity @s store result score @s mr_wave_enemy_random if score @s mr_wave_dlc matches 1.. unless score @s mr_wave_dlc matches 2 run random value 1..22

execute at @s run function mr_b:enemy_wave/enemy_var

execute as @e[tag=mr_unassigned,distance=0..] run function mr_b:enemy_wave/enemy_scale

execute store result score @e[tag=mr_unassigned,distance=0..] mr_wave_loc_random run random value 1..4

execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4

execute if entity @e[distance=0..,name=player_spawn,tag=objective_active,type=marker] as @e[tag=mr_unassigned,distance=0..] run function mr_b:enemy_wave/obj_spawn/check

execute as @e[tag=mr_unassigned,distance=0..] run function mr_b:enemy_wave/enemy_loc



scoreboard players remove @s mr_enemy_spawn 1
