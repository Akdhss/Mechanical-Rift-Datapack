execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail
kill @e[name=player_spawn]
summon marker ~ ~.5 ~ {CustomName:"player_spawn",Tags:["spawnpoint","newly_set_player_spawn","announce_event"]}

say Player spawn set!