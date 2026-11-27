# Runs as the player when a lobby button is on their cursor.
# Every button is matched by its btn id and does one hard-coded thing.

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6 1.2
scoreboard players operation #me lobby_id = @s lobby_id

# --- navigation (1 home, 2 main settings, 3 party, 4 run/modifier, 5 maps) ---
execute if items entity @s player.cursor *[custom_data~{btn:"go_home"}] run execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id run scoreboard players set @s lobby_page 1
execute if items entity @s player.cursor *[custom_data~{btn:"go_main_settings"}] run execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id run scoreboard players set @s lobby_page 2
execute if items entity @s player.cursor *[custom_data~{btn:"go_party"}] run execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id run scoreboard players set @s lobby_page 3
execute if items entity @s player.cursor *[custom_data~{btn:"go_run_settings"}] run execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id run scoreboard players set @s lobby_page 4
execute if items entity @s player.cursor *[custom_data~{btn:"go_maps"}] run execute as @e[type=minecraft:chest_minecart,tag=lobby_cart] if score @s lobby_id = #me lobby_id run scoreboard players set @s lobby_page 5

# --- home ---
execute if items entity @s player.cursor *[custom_data~{btn:"ready"}] run function mr_b:mechanics/ready_state
execute if items entity @s player.cursor *[custom_data~{btn:"start_game"}] run function mr_b:mechanics/start_game
execute if items entity @s player.cursor *[custom_data~{btn:"guild_shop"}] run function mr_b:ui/lobby/action/guild_shop
execute if items entity @s player.cursor *[custom_data~{btn:"tp_lobby"}] run function mr_b:ui/lobby/action/tp_lobby
execute if items entity @s player.cursor *[custom_data~{btn:"tp_run"}] run function mr_b:ui/lobby/action/tp_run
execute if items entity @s player.cursor *[custom_data~{btn:"leave_party"}] run function mr_b:ui/lobby/action/leave_party

# --- main settings ---
execute if items entity @s player.cursor *[custom_data~{btn:"difficulty"}] run function mr_b:mechanics/redirect/redirect_difficulty_up
execute if items entity @s player.cursor *[custom_data~{btn:"dlc"}] run function mr_b:mechanics/redirect/redirect_game_dlc

# --- party settings ---
execute if items entity @s player.cursor *[custom_data~{btn:"invite"}] run function mr_b:ui/lobby/action/invite
execute if items entity @s player.cursor *[custom_data~{btn:"kick"}] run function mr_b:ui/lobby/action/kick

# --- run / modifier settings ---
execute if items entity @s player.cursor *[custom_data~{btn:"toggle_events"}] run execute as @e[name=player_spawn,type=marker,limit=1] run function mr_b:ui/lobby/action/toggle_events
execute if items entity @s player.cursor *[custom_data~{btn:"toggle_endless"}] run execute as @e[name=player_spawn,type=marker,limit=1] run function mr_b:ui/lobby/action/toggle_endless
execute if items entity @s player.cursor *[custom_data~{btn:"toggle_announce"}] run execute as @e[name=player_spawn,type=marker,limit=1] run function mr_b:ui/lobby/action/toggle_announce
execute if items entity @s player.cursor *[custom_data~{btn:"toggle_objectives"}] run execute as @e[name=player_spawn,type=marker,limit=1] run function mr_b:ui/lobby/action/toggle_objectives

# --- map select (origin world only; same functions the old map menu called) ---
execute if items entity @s player.cursor *[custom_data~{btn:"map_aztec"}] run execute if score .origin world_origin_exclusive matches 1 run function mr_b:ui/lobby/action/map_origin_world_exclusive/aztec
execute if items entity @s player.cursor *[custom_data~{btn:"map_terror"}] run execute if score .origin world_origin_exclusive matches 1 run function mr_b:ui/lobby/action/map_origin_world_exclusive/terror
execute if items entity @s player.cursor *[custom_data~{btn:"map_skyline"}] run execute if score .origin world_origin_exclusive matches 1 run function mr_b:ui/lobby/action/map_origin_world_exclusive/skyline
execute if items entity @s player.cursor *[custom_data~{btn:"map_shrine"}] run execute if score .origin world_origin_exclusive matches 1 run function mr_b:ui/lobby/action/map_origin_world_exclusive/shrine
execute if items entity @s player.cursor *[custom_data~{btn:"map_fiesta"}] run execute if score .origin world_origin_exclusive matches 1 run function mr_b:ui/lobby/action/map_origin_world_exclusive/fiesta
execute if items entity @s player.cursor *[custom_data~{btn:"map_warehouse"}] run execute if score .origin world_origin_exclusive matches 1 run function mr_b:ui/lobby/action/map_origin_world_exclusive/warehouse

# --- always: take the button off the cursor and redraw the chest ---
item replace entity @s player.cursor with minecraft:air
function mr_b:ui/lobby/render
