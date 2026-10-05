# warn-off-file execute-group
execute unless entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting] run return fail
execute unless score @s mr_player_lobby_menu_toggle matches 1 if entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting] run return fail
execute if score @s mr_player_party_menu_toggle matches 1 run function mr_b:general/lobby_menu/party_menu_on
execute if score @s mr_player_party_menu_toggle matches 1 run return fail
execute if score @s mr_player_setting_menu_toggle matches 1 run function mr_b:general/lobby_menu/setting_menu_on
execute if score @s mr_player_setting_menu_toggle matches 1 run return fail
execute if score @s mr_player_map_menu_toggle matches 1 run function mr_b:general/lobby_menu/map_menu_on
execute if score @s mr_player_map_menu_toggle matches 1 run return fail
function mr_b:shop/sell_all


scoreboard players set @s mr_shop_player_currency 0

item replace entity @s hotbar.0 with redstone[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Leave Party","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

execute if score @s ready_state matches 1 run item replace entity @s hotbar.1 with lime_dye[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Unready","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
execute unless score @s ready_state matches 1 run item replace entity @s hotbar.1 with red_dye[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Ready","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

execute if entity @a[team=rift_party,scores={ready_state=1}] run item replace entity @s hotbar.2 with emerald[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Start Game","italic":false,color:dark_green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={party_start:true}]
execute if entity @a[team=rift_party,scores={ready_state=0}] run item replace entity @s hotbar.2 with barrier[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Start Game","italic":false,color:dark_red}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={party_start:true}]



execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 1 run item replace entity @s hotbar.3 with lime_candle[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Change Difficulty","italic":false,color:dark_green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={change_difficulty:true}]
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 2 run item replace entity @s hotbar.3 with yellow_candle[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Change Difficulty","italic":false,color:gold}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={change_difficulty:true}]
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 3 run item replace entity @s hotbar.3 with red_candle[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Change Difficulty","italic":false,color:dark_red}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={change_difficulty:true}]
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 4 run item replace entity @s hotbar.3 with black_candle[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Change Difficulty","italic":false,color:black}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={change_difficulty:true}]


execute unless score @e[name=player_spawn,limit=1] mr_wave_dlc matches 1.. run item replace entity @s hotbar.4 with dragon_breath[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Choose DLC","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
execute if score @e[name=player_spawn,limit=1] mr_wave_dlc matches 1 run item replace entity @s hotbar.4 with magma_cream[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Choose DLC","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
execute if score @e[name=player_spawn,limit=1] mr_wave_dlc matches 2 run item replace entity @s hotbar.4 with iron_sword[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Choose DLC","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

item replace entity @s hotbar.5 with enchanted_book[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Browse Guild Shop","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]



execute unless score @s mr_player_tp_menu_toggle matches 1.. run item replace entity @s hotbar.6 with campfire[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Teleport to Lobby","italic":false,color:gold}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

execute if score @s mr_player_tp_menu_toggle matches 1 run item replace entity @s hotbar.6 with soul_campfire[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Teleport to Map","italic":false,color:gold}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

execute if score @s mr_player_tp_menu_toggle matches 2 run item replace entity @s hotbar.6 with end_crystal[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Select Map [Origin World Exclusive]","italic":false,color:gold}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]


execute unless score @s mr_player_misc_menu_toggle matches 1.. run item replace entity @s hotbar.7 with heart_of_the_sea[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Run Settings","italic":false,color:green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={menu_toggle:true}]

execute if score @s mr_player_misc_menu_toggle matches 1 run item replace entity @s hotbar.7 with netherite_upgrade_smithing_template[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Party","italic":false,color:green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={menu_toggle:true}]




item replace entity @s hotbar.8 with nether_star[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Menu","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

