#execute as @e[type=!arrow,type=!armor_stand,type=!item_display,type=!marker,tag=!raycast_hh,dx=0,team=!rift_party] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:custom_weapon/test/raycast/collision/collision
execute unless block ~ ~ ~ #mr_b:raycast_pass run tag @s add hh_wall


particle dust{color:[1,1,1],scale:.5} ~ ~ ~ 0 0 0 0 1 force
particle mycelium ^ ^ ^ 0 0 0 0 1 force
execute if entity @s[tag=hh_wall] if block ~ ~ ~ #mr_b:raycast_pass run function mr_b:custom_weapon/test/raycast/end with storage mr_b:area rotation
execute if entity @s[tag=hh_wall] if block ~ ~ ~ #mr_b:raycast_pass run return fail

execute store result storage mr_b:area rotation.yaw float 1 run data get entity @s Rotation[0]
execute store result storage mr_b:area rotation.pitch float 1 run data get entity @s Rotation[1]

scoreboard players add .distance global_range 1

execute if score .distance global_range matches ..200 positioned ^ ^ ^.25 rotated ~ ~ run function mr_b:custom_weapon/test/raycast/laser


