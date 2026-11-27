# Runs every tick as each party player, at the player. Called from rift_party_tick.

# --- a button was clicked / moved ---
execute if items entity @s player.cursor *[custom_data~{lobby_item:1b}] run function mr_b:ui/lobby/player_input
execute if items entity @s container.* *[custom_data~{lobby_item:1b}] run function mr_b:ui/lobby/cleanup

# --- launcher: only while it is the selected hotbar item, and only in the lobby ---
execute unless items entity @s weapon.mainhand *[custom_data~{lobby_launcher:1b}] run return run tag @s remove lobby_open
execute unless entity @e[name=player_spawn,type=marker,tag=!run_ongoing,tag=!wave_starting] run return run tag @s remove lobby_open
function mr_b:ui/lobby/hold
