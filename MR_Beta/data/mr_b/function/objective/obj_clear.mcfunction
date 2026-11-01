tag @s remove objective_active
tag @s remove objective_active_force
tag @s remove objective_finished
tag @s remove obj_storm
tag @s remove obj_extract
scoreboard players reset @s mr_obj_count
scoreboard players reset @s mr_obj_endless
scoreboard players reset @s mr_obj_storm_duration
scoreboard players reset @s mr_obj_extract_resource
function mr_b:objective/extract/clear

clear @a *[custom_data~{extract_item:true}]


bossbar set minecraft:obj_storm players @a[tag=test] 
bossbar set minecraft:obj_extract players @a[tag=test] 