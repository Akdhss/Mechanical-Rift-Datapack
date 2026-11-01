execute if score @s mr_obj_count matches ..0 run tag @e[name=player_spawn,distance=0..] remove objective_active
tag @e[name=player_spawn,distance=0..] add objective_finished
say spawning disabled