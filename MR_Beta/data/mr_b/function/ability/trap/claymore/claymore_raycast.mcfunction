#execute as @s at @s unless entity @e[team=rift_enemy,distance=..12] unless entity @e[team=rift_party,distance=..12] run return fail

tag @s add claymore_los_check



execute as @s anchored eyes positioned ^ ^ ^.5 run function mr_b:ability/trap/claymore/claymore_laser

scoreboard players reset .distance global_range

tag @s remove claymore_los_check