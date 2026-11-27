# Runs as the player, at the player, every tick while the launcher is selected.
# Keeps this player's lobby chest minecart floating on their crosshair.
tag @s add lobby_open

# personal id so the chest knows who it belongs to
execute unless score @s lobby_id matches 1.. store result score @s lobby_id run scoreboard players add #next lobby_id 1
scoreboard players operation #me lobby_id = @s lobby_id

# move the existing chest to 1.7 blocks in front of the eyes (hitbox centred on the crosshair)
scoreboard players set #found lobby_tmp 0
execute anchored eyes positioned ^ ^ ^1.7 as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id store success score #found lobby_tmp run tp @s ~ ~-0.35 ~

# no chest yet: spawn one and draw it
execute if score #found lobby_tmp matches 0 anchored eyes positioned ^ ^ ^1.7 run function mr_b:ui/lobby/summon
