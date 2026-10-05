execute unless block ~ ~ ~ air run function mr_b:mechanics/player/spawn/fail
execute if block ~ ~-1 ~ air run function mr_b:mechanics/player/spawn/fail
execute if block ~ ~-1 ~ air run return fail
execute unless block ~ ~ ~ air run return fail

execute positioned ~ ~ ~ facing entity @e[name=player_spawn,sort=nearest,limit=1,type=marker] eyes positioned ^ ^ ^ run function mr_b:mechanics/player/spawn/ray

