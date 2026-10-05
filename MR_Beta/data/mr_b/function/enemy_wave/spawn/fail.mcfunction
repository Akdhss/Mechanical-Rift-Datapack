
execute as @s store result storage mr_b:range range.x int 1 run random value -3..3
execute as @s store result storage mr_b:range range.y int 1 run random value 0..2
execute as @s store result storage mr_b:range range.z int 1 run random value -3..3
scoreboard players reset .distance global_range
execute if entity @s[tag=enemy_spawn_1] at @e[name=east_spawn,sort=nearest,limit=1,type=marker] run function mr_b:enemy_wave/spawn/check with storage mr_b:range range
execute if entity @s[tag=enemy_spawn_2] at @e[name=north_spawn,sort=nearest,limit=1,type=marker] run function mr_b:enemy_wave/spawn/check with storage mr_b:range range
execute if entity @s[tag=enemy_spawn_3] at @e[name=south_spawn,sort=nearest,limit=1,type=marker] run function mr_b:enemy_wave/spawn/check with storage mr_b:range range
execute if entity @s[tag=enemy_spawn_4] at @e[name=west_spawn,sort=nearest,limit=1,type=marker] run function mr_b:enemy_wave/spawn/check with storage mr_b:range range

