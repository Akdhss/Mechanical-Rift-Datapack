execute if score @s mr_difficulty matches 1..2 run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:ravager,PersistenceRequired:1b,CustomName:"sentinel",Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]}]}

execute if score @s mr_difficulty matches 3 run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:ravager,PersistenceRequired:1b,CustomName:"sentinel",Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:ravager,PersistenceRequired:1b,CustomName:"sentinel",Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]}]}

execute if score @s mr_difficulty matches 4 run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:ravager,PersistenceRequired:1b,CustomName:"sentinel",Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:ravager,PersistenceRequired:1b,CustomName:"sentinel",Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:ravager,PersistenceRequired:1b,CustomName:"sentinel",Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]}]}




kill @e[type=area_effect_cloud]



execute as @e[tag=mr_unassigned] run attribute @s scale base set 0.75
execute as @e[tag=mr_unassigned] run attribute @s attack_damage base set 10
execute as @e[tag=mr_unassigned] run attribute @s max_health base set 40



execute store result score @e[tag=mr_unassigned] mr_wave_loc_random run random value 1..4
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4
execute as @e[tag=mr_unassigned] run function mr_b:enemy_wave/enemy_loc