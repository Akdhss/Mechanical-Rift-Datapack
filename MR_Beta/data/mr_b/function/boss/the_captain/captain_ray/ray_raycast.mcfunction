execute if entity @s[tag=silenced] run return fail

kill @e[type=arrow,distance=..1]

tag @s add captain_ray

execute as @e[type=pillager,tag=boss] at @s run rotate @s facing entity @p[team=rift_party]

execute as @e[type=pillager,tag=boss] at @s anchored eyes positioned ^ ^ ^ run function mr_b:boss/the_captain/captain_ray/ray_laser

scoreboard players reset .distance global_range
tag @s remove captain_ray