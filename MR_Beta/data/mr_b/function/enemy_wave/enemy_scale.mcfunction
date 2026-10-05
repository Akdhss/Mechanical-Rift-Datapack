execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 1 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale -.30 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 2 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale -.30 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 3 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 0 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 4 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale .15 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 5 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale .30 add_multiplied_total

execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 1 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 0 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 2 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale .20 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 3 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale .40 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 4 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale .60 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 5 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale .80 add_multiplied_total

execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 1 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 1 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 2 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 1.35 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 3 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 1.70 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 4 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 2.05 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 5 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 2.40 add_multiplied_total

execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 1 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 1.5 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 2 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 2 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 3 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 2.5 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 4 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 3 add_multiplied_total
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 5 as @e[tag=mr_unassigned] run attribute @s max_health modifier add wave_max_health_scale 3.5 add_multiplied_total






#execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 5 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale -.30 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 4 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale -.20 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 3 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale -.20 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 2 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale -.10 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 if score @s mr_wave matches 1 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale 0 add_multiplied_total

#execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 5 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale 0 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 4 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .1 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 3 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .15 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 2 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .25 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 if score @s mr_wave matches 1 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .35 add_multiplied_total

#execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 5 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .30 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 4 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .40 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 3 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .50 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 2 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .60 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 if score @s mr_wave matches 1 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .70 add_multiplied_total

#execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 5 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .60 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 4 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .70 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 3 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .80 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 2 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .90 add_multiplied_total
#execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 if score @s mr_wave matches 1 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale 1 add_multiplied_total




execute as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add wave_movement_speed_scale .25 add_multiplied_base

execute as @e[tag=mr_unassigned,type=endermite] run attribute @s movement_speed modifier add runner_movement_speed_scale .3 add_multiplied_base
execute as @e[tag=mr_unassigned,type=cave_spider] run attribute @s movement_speed modifier add runner_movement_speed_scale .35 add_multiplied_base
execute as @e[tag=mr_unassigned,type=spider] run attribute @s movement_speed modifier add runner_movement_speed_scale .4 add_multiplied_base
execute as @e[tag=mr_unassigned,type=wolf] run attribute @s movement_speed modifier add runner_movement_speed_scale .45 add_multiplied_base


execute as @e[tag=mr_unassigned,type=iron_golem] run attribute @s movement_speed modifier add elite_movement_speed_scale -.25 add_multiplied_base
execute as @e[tag=mr_unassigned,type=piglin_brute] run attribute @s movement_speed modifier add elite_movement_speed_scale -.25 add_multiplied_base



execute as @e[name=player_spawn] store result score @s global_random run random value 1..5
execute as @e[name=player_spawn] if score @s global_random matches 1 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add random_movement_speed_variation -.05 add_multiplied_total
execute as @e[name=player_spawn] if score @s global_random matches 2 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add random_movement_speed_variation -.1 add_multiplied_total
execute as @e[name=player_spawn] if score @s global_random matches 4 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add random_movement_speed_variation .05 add_multiplied_total
execute as @e[name=player_spawn] if score @s global_random matches 5 as @e[tag=mr_unassigned] run attribute @s movement_speed modifier add random_movement_speed_variation .1 add_multiplied_total


execute as @e[tag=mr_unassigned] run function mr_b:enemy_wave/party/party_check

execute as @e[tag=mr_unassigned] run data modify entity @s Health set value 10000f

