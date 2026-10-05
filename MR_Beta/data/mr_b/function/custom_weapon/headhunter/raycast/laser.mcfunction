execute as @e[type=!arrow,type=!armor_stand,type=!item_display,type=!marker,tag=!raycast_hh,dx=0,team=!rift_party] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:custom_weapon/headhunter/raycast/collision/collision



particle dust{color:[1,1,1],scale:.5} ~ ~ ~ 0.05 0.05 0.05 0 1 force
particle mycelium ^ ^ ^ 0 0 0 0 1 force


scoreboard players add .distance global_range 1

execute if score .distance global_range matches ..600 positioned ^ ^ ^.25 rotated ~ ~ if block ~ ~ ~ #mr_b:raycast_pass run function mr_b:custom_weapon/headhunter/raycast/laser


