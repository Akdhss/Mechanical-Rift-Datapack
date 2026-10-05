execute if entity @s[scores={mr_wave_dlc=1}] store result score @s mr_wave_enemy_random run random value 1..8

execute as @s at @s run function mr_b:enemy_wave/enemy_dlc_var

execute store result score @e[tag=mr_unassigned] mr_wave_loc_random run random value 1..4

execute as @e[tag=mr_unassigned] run function mr_b:enemy_wave/enemy_loc

scoreboard players remove @s mr_enemy_spawn 1
