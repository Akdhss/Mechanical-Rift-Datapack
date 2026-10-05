execute at @s store result score @s mr_event_random run random value 1..13

execute if score @s mr_wave_dlc matches 1.. unless score @s mr_wave_dlc matches 2 at @s store result score @s mr_event_random run random value 1..14


function mr_b:random_event/event_announce



execute if score @s mr_event_random matches 1 run function mr_b:random_event/base_event/carpet_bomb/carpet_bomb
execute if score @s mr_event_random matches 2 run function mr_b:random_event/base_event/spearmen/spearmen
execute if score @s mr_event_random matches 3 run function mr_b:random_event/base_event/ghost/ghost
execute if score @s mr_event_random matches 4 run function mr_b:random_event/base_event/raid/raid
execute if score @s mr_event_random matches 5 run function mr_b:random_event/base_event/deadshot/deadshot
execute if score @s mr_event_random matches 6 run function mr_b:random_event/base_event/mirror/mirror
execute if score @s mr_event_random matches 7 run function mr_b:random_event/base_event/sentinel/sentinel
execute if score @s mr_event_random matches 8 at @a run function mr_b:random_event/base_event/silence/silence
execute if score @s mr_event_random matches 9 run function mr_b:random_event/base_event/mutation/mutation
execute if score @s mr_event_random matches 10 run function mr_b:random_event/base_event/meteor/meteor
execute if score @s mr_event_random matches 11 run function mr_b:random_event/base_event/relife/relife
execute if score @s mr_event_random matches 12 run function mr_b:random_event/base_event/hemorrhage/hemorrhage
execute if score @s mr_event_random matches 13 run function mr_b:random_event/base_event/disappear/disappear










execute if score @s mr_event_random matches 14 run function mr_b:random_event/dlc_event

