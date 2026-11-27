# Runs as the lobby chest, at the chest.
scoreboard players operation #c lobby_id = @s lobby_id
scoreboard players set #alive lobby_tmp 0
execute as @a[tag=lobby_open,team=rift_party] if score @s lobby_id = #c lobby_id run scoreboard players set #alive lobby_tmp 1
execute if score #alive lobby_tmp matches 0 run function mr_b:ui/lobby/cart_remove
