scoreboard players remove @s mr_obj_count 1
tag @s remove obj_storm
tag @s remove objective_active_force


say obj complete [storm]
scoreboard players set @s mr_obj_storm_duration 0
bossbar set minecraft:obj_storm value 0
bossbar set minecraft:obj_storm players @a[tag=test] 
