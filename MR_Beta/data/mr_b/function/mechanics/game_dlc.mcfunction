execute unless entity @e[name=player_spawn,limit=1,type=marker] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail
scoreboard players add @s mr_wave_dlc 1
execute if score @s mr_player_count matches 1 if score @s mr_wave_dlc matches 2 run scoreboard players reset @s mr_wave_dlc
execute if score @s mr_wave_dlc matches 3.. run scoreboard players reset @s mr_wave_dlc
function mr_b:mechanics/redirect/redirect_dlc_title