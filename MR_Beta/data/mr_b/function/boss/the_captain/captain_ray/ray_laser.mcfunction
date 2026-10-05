execute as @e[distance=..2.5,team=rift_party] at @s run function mr_b:boss/the_captain/captain_ray/ray_collision

particle minecraft:end_rod ~ ~ ~ 0.03 0.03 0.03 0 10 force
particle minecraft:smoke ~ ~ ~ 0.02 0.02 0.02 0.001 10 force
particle minecraft:ash ~ ~ ~ 0.04 0.04 0.04 0.002 10 force


scoreboard players add .distance global_range 1

execute if score .distance global_range matches ..300 positioned ^ ^ ^.25 rotated ~ ~ unless entity @e[name=contingency,distance=..5] run function mr_b:boss/the_captain/captain_ray/ray_laser

