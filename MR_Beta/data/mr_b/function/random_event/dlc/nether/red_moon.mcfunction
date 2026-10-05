execute as @e[name=player_spawn] at @s run summon area_effect_cloud ~ ~-0.5 ~ {Passengers:[{id:magma_cube,Size:2,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:magma_cube,Size:2,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:magma_cube,Size:2,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:magma_cube,Size:2,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:magma_cube,Size:2,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:magma_cube,Size:2,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:magma_cube,Size:2,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]}]}
kill @e[type=area_effect_cloud]
execute store result score @e[tag=mr_unassigned] mr_wave_loc_random run random value 1..4

execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4
execute as @e[tag=mr_unassigned] run function mr_b:enemy_wave/enemy_loc