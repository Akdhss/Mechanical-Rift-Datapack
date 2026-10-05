scoreboard players remove @s mr_player_right_click_impulse 1
execute if score @s mr_player_right_click_impulse matches 1.. run return run advancement revoke @s only mr_b:player_generic/right_click_impulse
scoreboard players reset @s mr_player_right_click_impulse