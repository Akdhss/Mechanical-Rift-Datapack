$execute at @s run tp @n[tag=player_relocate] ~$(x) ~$(y) ~$(z) 

scoreboard players add .distance global_range 500

tag @n[tag=player_relocate] remove player_relocate