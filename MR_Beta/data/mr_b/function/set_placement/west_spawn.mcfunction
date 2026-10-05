execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail
kill @e[name=west_spawn]
summon marker ~ ~.5 ~ {CustomName:"west_spawn",Tags:["spawnpoint"]}
say West spawn set!