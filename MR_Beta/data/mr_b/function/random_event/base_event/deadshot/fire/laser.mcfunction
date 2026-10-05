tag @s add deadshot_firing
execute as @a[tag=deadshot_target] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:random_event/base_event/deadshot/fire/stop
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 1..2 if score @s mr_special_enemy_deadshot_snipe matches 600.. at @s as @a[distance=..75] at @s run playsound mr_b:enemy/deadshot/gunshot hostile @s ~ ~ ~ 0.02
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 3 if score @s mr_special_enemy_deadshot_snipe matches 500.. at @s as @a[distance=..75] at @s run playsound mr_b:enemy/deadshot/gunshot hostile @s ~ ~ ~ 0.02
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 4 if score @s mr_special_enemy_deadshot_snipe matches 400.. at @s as @a[distance=..75] at @s run playsound mr_b:enemy/deadshot/gunshot hostile @s ~ ~ ~ 0.02

execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 1..2 if score @s mr_special_enemy_deadshot_snipe matches 600.. as @a[tag=deadshot_target] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:random_event/base_event/deadshot/fire/collision
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 3 if score @s mr_special_enemy_deadshot_snipe matches 500.. as @a[tag=deadshot_target] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:random_event/base_event/deadshot/fire/collision
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 4 if score @s mr_special_enemy_deadshot_snipe matches 400.. as @a[tag=deadshot_target] positioned ~-0.50 ~-0.50 ~-0.5 if entity @s[dx=0] positioned ~0.50 ~0.50 ~0.50 run function mr_b:random_event/base_event/deadshot/fire/collision



#particle dust{color:[1,1,1],scale:.5} ~ ~ ~ 0.05 0.05 0.05 0 1 force
execute as @a[tag=deadshot_target] run playsound mr_b:enemy/deadshot/warning hostile @s ~ ~ ~ 0.025
particle dust{color:[0.99,0.21,0.44],scale:.35} ~ ~ ~ 0 0 0 0 1

scoreboard players add .distance global_range 1
tag @s remove deadshot_firing
execute if score .distance global_range matches ..1000 positioned ^ ^ ^.25 rotated ~ ~ unless entity @e[name=contingency,distance=..5] run function mr_b:random_event/base_event/deadshot/fire/laser

