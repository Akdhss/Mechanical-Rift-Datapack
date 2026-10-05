

execute if items entity @s weapon.* redstone run function mr_b:mechanics/leave_party

execute if items entity @s weapon.* red_dye run function mr_b:mechanics/ready_state
execute if items entity @s weapon.* lime_dye run function mr_b:mechanics/ready_state



execute if items entity @s weapon.* *[custom_data~{party_start:true}] run function mr_b:mechanics/start_game
execute if items entity @s weapon.* *[custom_data~{change_difficulty:true}] run function mr_b:mechanics/redirect/redirect_difficulty_up
execute if items entity @s weapon.* *[custom_name=[{"text":"Browse Guild Shop","italic":false}]] run function mr_b:general/lobby_menu/guild/shop
execute if items entity @s weapon.* *[custom_name=[{"text":"Choose DLC","italic":false}]] run function mr_b:mechanics/redirect/redirect_game_dlc


execute unless score @s mr_player_misc_menu_toggle matches 1.. if items entity @s weapon.* *[custom_data~{menu_toggle:true}] unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/setting_menu
execute if score @s mr_player_misc_menu_toggle matches 1.. if items entity @s weapon.* *[custom_data~{menu_toggle:true}] unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/party_menu

execute if items entity @s weapon.* *[custom_data~{menu_toggle:true}] if predicate mr_b:wind_bolt run scoreboard players add @s mr_player_misc_menu_toggle 1

execute if score @s mr_player_misc_menu_toggle matches 2.. run scoreboard players reset @s mr_player_misc_menu_toggle


execute if items entity @s weapon.* creeper_banner_pattern run function mr_b:general/lobby_menu/party/invite

execute if items entity @s weapon.* minecraft:campfire unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/teleport
execute if items entity @s weapon.* minecraft:soul_campfire unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/teleport

execute if items entity @s weapon.* minecraft:campfire if predicate mr_b:wind_bolt run scoreboard players add @s mr_player_tp_menu_toggle 1
execute if items entity @s weapon.* minecraft:soul_campfire if predicate mr_b:wind_bolt run scoreboard players add @s mr_player_tp_menu_toggle 1

execute unless score .origin world_origin_exclusive matches 1 on origin if score @s mr_player_tp_menu_toggle matches 2.. run scoreboard players reset @s mr_player_tp_menu_toggle
execute if score .origin world_origin_exclusive matches 1 on origin if score @s mr_player_tp_menu_toggle matches 3.. run scoreboard players reset @s mr_player_tp_menu_toggle



execute if items entity @s weapon.* *[custom_data={guaranteed_event:1b}] run scoreboard players add @n[name=player_spawn,distance=0..,type=marker] mr_player_misc_setting_1 1
execute if items entity @s weapon.* *[custom_data={endless:1b}] run scoreboard players add @n[name=player_spawn,distance=0..,type=marker] mr_player_misc_setting_2 1
execute if items entity @s weapon.* *[custom_data={announce_event:1b}] run scoreboard players add @n[name=player_spawn,distance=0..,type=marker] mr_player_misc_setting_3 1

execute as @e if score @s mr_player_misc_setting_1 matches 2.. run scoreboard players reset @s mr_player_misc_setting_1
execute as @e if score @s mr_player_misc_setting_2 matches 2.. run scoreboard players reset @s mr_player_misc_setting_2
execute as @e if score @s mr_player_misc_setting_3 matches 2.. run scoreboard players reset @s mr_player_misc_setting_3


execute if items entity @s weapon.* minecraft:nether_star run function mr_b:general/lobby_menu/toggle


execute as @a[team=rift_party] if score @s mr_player_lobby_menu_toggle matches 1 run function mr_b:general/lobby_menu/menu_on
execute as @a[team=rift_party] if score @s mr_player_setting_menu_toggle matches 1 run function mr_b:general/lobby_menu/setting_menu_on


advancement revoke @s only mr_b:player_generic/right_click
advancement revoke @s only mr_b:player_generic/right_click_impulse
execute if score @s mr_player_scope_toggle matches 2.. run scoreboard players reset @s mr_player_scope_toggle
scoreboard players set @s mr_player_right_click_impulse 2