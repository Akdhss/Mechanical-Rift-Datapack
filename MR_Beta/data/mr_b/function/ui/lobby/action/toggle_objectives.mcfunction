# Runs as the player_spawn marker. Flips mr_player_misc_setting_4 between 0 and 1.
execute if score @s mr_player_misc_setting_4 matches 1 run return run scoreboard players reset @s mr_player_misc_setting_4
scoreboard players set @s mr_player_misc_setting_4 1
