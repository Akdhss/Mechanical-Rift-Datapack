

tag @e[tag=deadshot_firing] add deadshot_killing_fail

execute as @e[tag=deadshot_killing_fail] if score @e[limit=1,name=player_spawn] mr_difficulty matches 1..2 run scoreboard players set @s mr_special_enemy_deadshot_snipe 399
execute as @e[tag=deadshot_killing_fail] if score @e[limit=1,name=player_spawn] mr_difficulty matches 3 run scoreboard players set @s mr_special_enemy_deadshot_snipe 299
execute as @e[tag=deadshot_killing_fail] if score @e[limit=1,name=player_spawn] mr_difficulty matches 4 run scoreboard players set @s mr_special_enemy_deadshot_snipe 199

execute as @e[tag=deadshot_firing] run data modify entity @s last_hurt_by_mob set from entity @r[tag=deadshot_target] UUID
scoreboard players reset @e[tag=deadshot_firing,tag=!deadshot_killing_fail] mr_special_enemy_deadshot_snipe

damage @s 200 arrow by @e[tag=deadshot_firing,limit=1]

scoreboard players add .distance global_range 1000