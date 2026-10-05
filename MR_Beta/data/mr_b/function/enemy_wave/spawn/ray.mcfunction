


execute if entity @s[tag=enemy_spawn_1] as @e[name=east_spawn,sort=nearest,limit=1,type=marker,distance=...25] run function mr_b:enemy_wave/spawn/success with storage mr_b:range range
execute if entity @s[tag=enemy_spawn_2] as @e[name=north_spawn,sort=nearest,limit=1,type=marker,distance=...25] run function mr_b:enemy_wave/spawn/success with storage mr_b:range range
execute if entity @s[tag=enemy_spawn_3] as @e[name=south_spawn,sort=nearest,limit=1,type=marker,distance=...25] run function mr_b:enemy_wave/spawn/success with storage mr_b:range range
execute if entity @s[tag=enemy_spawn_4] as @e[name=west_spawn,sort=nearest,limit=1,type=marker,distance=...25] run function mr_b:enemy_wave/spawn/success with storage mr_b:range range

scoreboard players add .distance global_range 1

execute if score .distance global_range matches ..500 positioned ^ ^ ^.25 unless block ~ ~ ~ air run function mr_b:enemy_wave/spawn/fail

execute if score .distance global_range matches ..500 positioned ^ ^ ^.25 if block ~ ~ ~ air run function mr_b:enemy_wave/spawn/ray





