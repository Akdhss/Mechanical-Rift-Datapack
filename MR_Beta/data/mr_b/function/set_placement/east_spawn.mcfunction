execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail
kill @e[name=east_spawn]
summon marker ~ ~.5 ~ {CustomName:"east_spawn",Tags:["spawnpoint"],}
say East spawn set!