execute store result score @s mr_event_dlc_random run random value 1..3
function mr_b:random_event/event_announce

execute if score @s mr_event_dlc_random matches 1 run function mr_b:random_event/dlc/nether/red_moon
execute if score @s mr_event_dlc_random matches 2 run function mr_b:random_event/dlc/nether/fire_storm
execute if score @s mr_event_dlc_random matches 3 run function mr_b:random_event/dlc/nether/beasts

scoreboard players reset @s mr_event_dlc_random