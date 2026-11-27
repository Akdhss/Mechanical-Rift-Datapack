# Runs as the lobby chest. Draws whichever page the chest is on.
execute unless score @s lobby_page matches 1..5 run scoreboard players set @s lobby_page 1

execute if score @s lobby_page matches 1 run function mr_b:ui/lobby/page/home
execute if score @s lobby_page matches 2 run function mr_b:ui/lobby/page/main_settings
execute if score @s lobby_page matches 3 run function mr_b:ui/lobby/page/party
execute if score @s lobby_page matches 4 run function mr_b:ui/lobby/page/run_settings
execute if score @s lobby_page matches 5 run function mr_b:ui/lobby/page/maps
