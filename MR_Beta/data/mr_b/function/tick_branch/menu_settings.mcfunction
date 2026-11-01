# warn-off-file target-selector-no-type
# warn-off-file execute-group
execute as @s[nbt={Item:{id:"minecraft:redstone"}},distance=0..,type=item] on origin run function mr_b:mechanics/leave_party

execute as @s[nbt={Item:{id:"minecraft:red_dye"}},distance=0..,type=item] on origin run function mr_b:mechanics/ready_state
execute as @s[nbt={Item:{id:"minecraft:lime_dye"}},distance=0..,type=item] on origin run function mr_b:mechanics/ready_state

execute as @s[nbt={Item:{components:{"minecraft:custom_name":{"text":"Start Game","italic":false}}}},distance=0..,type=item] on origin run function mr_b:mechanics/start_game
execute as @s[nbt={Item:{components:{"minecraft:custom_name":{"text":"Change Difficulty","italic":false}}}},distance=0..,type=item] on origin run function mr_b:mechanics/redirect/redirect_difficulty_up
execute as @s[nbt={Item:{components:{"minecraft:custom_name":{"text":"Browse Guild Shop","italic":false}}}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/guild/shop
execute as @s[nbt={Item:{components:{"minecraft:custom_name":{"text":"Browse Guild Shop","italic":false}}}},distance=0..,type=item] run kill @s
execute as @s[nbt={Item:{components:{"minecraft:custom_name":{"text":"Choose DLC","italic":false}}}},distance=0..,type=item] on origin run function mr_b:mechanics/redirect/redirect_game_dlc



execute as @s[nbt={Item:{id:"minecraft:campfire"}},distance=0..,type=item] on origin unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/teleport
execute as @s[nbt={Item:{id:"minecraft:soul_campfire"}},distance=0..,type=item] on origin unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/teleport

execute as @s[nbt={Item:{id:"minecraft:campfire"}},distance=0..,type=item] on origin if predicate mr_b:wind_bolt run scoreboard players add @s mr_player_tp_menu_toggle 1
execute as @s[nbt={Item:{id:"minecraft:soul_campfire"}},distance=0..,type=item] on origin if predicate mr_b:wind_bolt run scoreboard players add @s mr_player_tp_menu_toggle 1
execute as @s[nbt={Item:{id:"minecraft:end_crystal"}},distance=0..,type=item] on origin if predicate mr_b:wind_bolt run scoreboard players add @s mr_player_tp_menu_toggle 1


execute as @s[nbt={Item:{id:"minecraft:end_crystal"}},distance=0..,type=item] on origin unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/map_menu

execute as @s[nbt={Item:{components:{"minecraft:custom_data":{map:"aztec"}}}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/map_origin_world_exclusive/aztec
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{map:"terror"}}}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/map_origin_world_exclusive/terror
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{map:"skyline"}}}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/map_origin_world_exclusive/skyline
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{map:"shrine"}}}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/map_origin_world_exclusive/shrine
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{map:"fiesta"}}}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/map_origin_world_exclusive/fiesta
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{map:"warehouse"}}}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/map_origin_world_exclusive/warehouse

execute unless score .origin world_origin_exclusive matches 1 on origin if score @s mr_player_tp_menu_toggle matches 2.. run scoreboard players reset @s mr_player_tp_menu_toggle
execute if score .origin world_origin_exclusive matches 1 on origin if score @s mr_player_tp_menu_toggle matches 3.. run scoreboard players reset @s mr_player_tp_menu_toggle


execute as @e[name=player_spawn,distance=0..] if score @s mr_player_misc_setting_1 matches 2.. run scoreboard players reset @s mr_player_misc_setting_1


execute as @s[nbt={Item:{id:"minecraft:heart_of_the_sea"}},distance=0..,type=item] on origin if predicate mr_b:wind_bolt run scoreboard players add @s mr_player_misc_menu_toggle 1
execute as @s[nbt={Item:{id:"minecraft:netherite_upgrade_smithing_template"}},distance=0..,type=item] on origin if predicate mr_b:wind_bolt run scoreboard players add @s mr_player_misc_menu_toggle 1

execute as @s[distance=0..] on origin if score @s mr_player_misc_menu_toggle matches 2.. run scoreboard players reset @s mr_player_misc_menu_toggle


execute as @s[nbt={Item:{id:"minecraft:heart_of_the_sea"}},distance=0..,type=item] on origin unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/setting_menu

execute as @s[nbt={Item:{id:"minecraft:netherite_upgrade_smithing_template"}},distance=0..,type=item] on origin unless predicate mr_b:wind_bolt run function mr_b:general/lobby_menu/party_menu





execute as @s[nbt={Item:{id:"minecraft:creeper_banner_pattern"}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/party/invite






execute as @s[nbt={Item:{components:{"minecraft:custom_data":{guaranteed_event:1b}}}},distance=0..,type=item] on origin run scoreboard players add @n[name=player_spawn,distance=0..,type=marker] mr_player_misc_setting_1 1
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{endless:1b}}}},distance=0..,type=item] on origin run scoreboard players add @n[name=player_spawn,distance=0..,type=marker] mr_player_misc_setting_2 1
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{announce_event:1b}}}},distance=0..,type=item] on origin run scoreboard players add @n[name=player_spawn,distance=0..,type=marker] mr_player_misc_setting_3 1
execute as @s[nbt={Item:{components:{"minecraft:custom_data":{objectives:1b}}}},distance=0..,type=item] on origin run scoreboard players add @n[name=player_spawn,distance=0..,type=marker] mr_player_misc_setting_4 1


execute as @e[name=player_spawn,distance=0..] if score @s mr_player_misc_setting_1 matches 2.. run scoreboard players reset @s mr_player_misc_setting_1
execute as @e[name=player_spawn,distance=0..] if score @s mr_player_misc_setting_2 matches 2.. run scoreboard players reset @s mr_player_misc_setting_2
execute as @e[name=player_spawn,distance=0..] if score @s mr_player_misc_setting_3 matches 2.. run scoreboard players reset @s mr_player_misc_setting_3
execute as @e[name=player_spawn,distance=0..] if score @s mr_player_misc_setting_4 matches 2.. run scoreboard players reset @s mr_player_misc_setting_4




execute as @s[nbt={Item:{id:"minecraft:nether_star"}},distance=0..,type=item] on origin run function mr_b:general/lobby_menu/toggle


execute as @a[team=rift_party] if score @s mr_player_lobby_menu_toggle matches 1 run function mr_b:general/lobby_menu/menu_on
execute as @a[team=rift_party] if score @s mr_player_setting_menu_toggle matches 1 run function mr_b:general/lobby_menu/setting_menu_on
