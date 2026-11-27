# Runs as the player. The invite list is printed to chat, which is hidden while a GUI is open,
# so remove the chest to close the GUI. It respawns next tick because the launcher is still held.
function mr_b:ui/lobby/action/party/invite
execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id at @s run function mr_b:ui/lobby/cart_remove
