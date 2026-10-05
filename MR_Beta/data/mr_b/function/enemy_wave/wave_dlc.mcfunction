execute unless score @s mr_wave_dlc matches 1.. run function mr_b:enemy_wave/enemy_spawn
execute unless score @s mr_wave_dlc matches 1.. run return fail

execute if score @s mr_wave_dlc matches 1 run function mr_b:enemy_wave/enemy_dlc