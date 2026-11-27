# Runs as the player. Redraws this player's chest.
scoreboard players operation #me lobby_id = @s lobby_id

# copy the player-specific state the pages need
scoreboard players set #ready lobby_tmp 0
execute if score @s ready_state matches 1 run scoreboard players set #ready lobby_tmp 1

execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id run function mr_b:ui/lobby/draw
