# Runs as the player_spawn marker. Flips mr_player_misc_setting_2 between 0 and 1.
execute if score @s mr_player_misc_setting_2 matches 1 run return run scoreboard players reset @s mr_player_misc_setting_2
scoreboard players set @s mr_player_misc_setting_2 1
