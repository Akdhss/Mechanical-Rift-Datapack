execute store result score .global mr_obj_storm_random run random value 1..2

execute at @s if score .global mr_obj_storm_random matches 1 run playsound mr_b:objective/storm/storm_warning_1 player @s
execute at @s if score .global mr_obj_storm_random matches 2 run playsound mr_b:objective/storm/storm_warning_2 player @s
