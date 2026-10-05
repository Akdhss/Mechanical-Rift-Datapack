execute as @e[distance=..3,team=rift_enemy,limit=1,tag=mr_ratio_target] at @s run function mr_b:ability/axe/blunt_cut/blunt_cut_ray/hit

scoreboard players add .distance global_range 1

#particle mycelium ~ ~ ~ 0 0 0 0 2


execute if score .distance global_range matches ..500 positioned ^ ^ ^.25 run function mr_b:ability/axe/blunt_cut/blunt_cut_ray/laser