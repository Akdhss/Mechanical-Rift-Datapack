

execute as @e[name=player_spawn,sort=nearest,limit=1,type=marker,distance=...25] run function mr_b:mechanics/player/spawn/success with storage mr_b:range range


scoreboard players add .distance global_range 1

execute if score .distance global_range matches ..500 positioned ^ ^ ^.25 unless block ~ ~ ~ air run function mr_b:mechanics/player/spawn/fail

execute if score .distance global_range matches ..500 positioned ^ ^ ^.25 if block ~ ~ ~ air run function mr_b:mechanics/player/spawn/ray





