execute at @s store result score @s mr_obj_random run random value 1..2
execute if score @s[tag=!obj_storm] mr_wave matches 3.. run function mr_b:objective/storm/event_start





execute if score @s mr_obj_random matches 1 run function mr_b:objective/extract/event_start
execute if score @s mr_obj_random matches 2 run function mr_b:objective/extract/event_start



function mr_b:objective/spawning_enable
function mr_b:objective/obj_announce


