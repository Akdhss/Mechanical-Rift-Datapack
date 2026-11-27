# Runs as the player. teleport.mcfunction sends you to the run spawn when mr_player_tp_menu_toggle >= 1, else the lobby.
scoreboard players reset @s mr_player_tp_menu_toggle

effect give @s blindness 1 255 true


#playsound block.portal.travel master @s ~ ~ ~ .5

execute unless score @s mr_player_tp_menu_toggle matches 1.. as @n[name=lobby_spawn,distance=0..,type=marker] at @s run particle white_smoke ~ ~0 ~ .3 .5 .3 .1 50
execute if score @s mr_player_tp_menu_toggle matches 1.. as @n[name=player_spawn,distance=0..,type=marker] at @s run particle white_smoke ~ ~0 ~ .3 .5 .3 .1 50

execute unless score @s mr_player_tp_menu_toggle matches 1.. run tp @s @n[name=lobby_spawn,distance=0..,type=marker]
execute if score @s mr_player_tp_menu_toggle matches 1.. run tp @s @n[name=player_spawn,distance=0..,type=marker]

playsound entity.player.teleport master @s ~ ~ ~ 5

