execute unless block ~ ~ ~ air run function mr_b:enemy_wave/spawn/fail
execute if block ~ ~-1 ~ air run function mr_b:enemy_wave/spawn/fail
execute if block ~ ~-1 ~ air run return fail
execute unless block ~ ~ ~ air run return fail

execute if entity @s[tag=enemy_spawn_1] positioned ~ ~ ~ facing entity @e[name=east_spawn,sort=nearest,limit=1,type=marker] eyes positioned ^ ^ ^ run function mr_b:enemy_wave/spawn/ray
execute if entity @s[tag=enemy_spawn_2] positioned ~ ~ ~ facing entity @e[name=north_spawn,sort=nearest,limit=1,type=marker] eyes positioned ^ ^ ^ run function mr_b:enemy_wave/spawn/ray
execute if entity @s[tag=enemy_spawn_3] positioned ~ ~ ~ facing entity @e[name=south_spawn,sort=nearest,limit=1,type=marker] eyes positioned ^ ^ ^ run function mr_b:enemy_wave/spawn/ray
execute if entity @s[tag=enemy_spawn_4] positioned ~ ~ ~ facing entity @e[name=west_spawn,sort=nearest,limit=1,type=marker] eyes positioned ^ ^ ^ run function mr_b:enemy_wave/spawn/ray





