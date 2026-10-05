$execute at @s run tp @n[tag=enemy_relocate] ~$(x) ~$(y) ~$(z) 

scoreboard players add .distance global_range 500



tag @n[tag=enemy_relocate] add wave_mob
tag @n[tag=enemy_relocate] add pathing_mob
tag @n[tag=enemy_relocate] remove mr_unassigned
tag @n[tag=enemy_relocate] remove mr_unassigned_boss

tag @n[tag=enemy_relocate] remove enemy_relocate