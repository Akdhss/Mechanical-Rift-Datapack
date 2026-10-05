execute positioned ~ ~ ~ as @e[distance=..3,type=wither_skeleton,tag=boss,tag=dodge_ready,tag=!collapsing,tag=!silenced] at @s run tag @s add fallen_dodge

execute positioned ~ ~ ~ as @e[distance=..3,type=wither_skeleton,tag=boss,tag=dodge_ready,tag=!collapsing,tag=!silenced] at @s run function mr_b:boss/the_fallen/fallen_dodge_skill

execute as @e[tag=!fallen_dodge,type=!arrow,type=!armor_stand,type=!item_display,type=!marker,tag=!raycast_blade_call,dx=0,team=!rift_party] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:enchant/sword/blade_call/blade_call_collision



particle dust{color:[1,1,1],scale:.3} ~ ~ ~ 0.025 0.025 0.025 0 1 force
particle mycelium ^ ^ ^ 0 0 0 0 1 force

tp @e[type=item_display,tag=!used] ~ ~ ~

scoreboard players add .distance global_range 1



execute if score .distance global_range matches ..300 positioned ^ ^ ^.25 rotated ~ ~ if block ~ ~ ~ #mr_b:raycast_pass run function mr_b:enchant/sword/blade_call/blade_call_laser
tag @e remove fallen_dodge
tag @e[type=item_display] add used

