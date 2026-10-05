execute if score @s mr_player_hp matches 11.. run effect give @s speed 1 1 true
execute if score @s mr_player_hp matches 11.. run particle trial_spawner_detection_ominous ~ ~.5 ~ .2 .4 .2 0 1
execute if score @s mr_player_hp matches 11.. run particle trial_spawner_detection ~ ~.5 ~ .2 .4 .2 0 1

execute if score @s mr_player_hp matches ..10 run effect give @s weakness 1 1 true
execute if score @s mr_player_hp matches ..10 run effect give @s slowness 1 1 true