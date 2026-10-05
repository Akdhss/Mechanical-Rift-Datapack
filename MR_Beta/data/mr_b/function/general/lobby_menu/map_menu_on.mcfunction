
#execute unless score @s mr_player_map_menu_toggle matches 1 if entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting] run return fail
#execute if score @s mr_player_map_menu_toggle matches 1 run scoreboard players reset @s mr_player_map_menu_toggle

clear @s

item replace entity @s hotbar.0 with stone_bricks[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Aztec","italic":false,color:green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={map_select:true,map:"aztec"}]

item replace entity @s hotbar.1 with netherrack[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Terror","italic":false,color:green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={map_select:true,map:"terror"}]

item replace entity @s hotbar.2 with smooth_stone[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Skyline","italic":false,color:green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={map_select:true,map:"skyline"}]

item replace entity @s hotbar.3 with stripped_pale_oak_log[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Shrine","italic":false,color:dark_red}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={map_select:true,map:"shrine"}]

item replace entity @s hotbar.4 with mud_bricks[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Fiesta","italic":false,color:green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={map_select:true,map:"fiesta"}]

item replace entity @s hotbar.5 with bricks[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Warehouse","italic":false,color:dark_red}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={map_select:true,map:"warehouse"}]




item replace entity @s hotbar.6 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"    ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

item replace entity @s hotbar.7 with end_crystal[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"[ Exit ] Map Select","italic":false,color:dark_red}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={menu_toggle:true}]



