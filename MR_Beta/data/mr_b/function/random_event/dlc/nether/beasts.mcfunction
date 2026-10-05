
execute as @e[name=player_spawn] at @s run summon area_effect_cloud ~ ~-0.5 ~ {Passengers:[{id:hoglin,IsImmuneToZombification:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:hoglin,IsImmuneToZombification:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]}]}
kill @e[type=area_effect_cloud]
execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 as @e[tag=landing,type=hoglin] run attribute @s movement_speed modifier add beast_movement_speed .25 add_multiplied_base
execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 as @e[tag=landing,type=hoglin] run attribute @s attack_damage modifier add beast_attack_damage .25 add_multiplied_base
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 as @e[tag=landing,type=hoglin] run attribute @s movement_speed modifier add beast_movement_speed .5 add_multiplied_base
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 as @e[tag=landing,type=hoglin] run attribute @s attack_damage modifier add beast_attack_damage .5 add_multiplied_base


execute store result score @e[tag=mr_unassigned] mr_wave_loc_random run random value 1..4
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4
execute as @e[tag=mr_unassigned] run function mr_b:enemy_wave/enemy_loc