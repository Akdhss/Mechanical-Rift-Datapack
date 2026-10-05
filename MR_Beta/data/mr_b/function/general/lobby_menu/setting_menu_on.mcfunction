
execute unless score @s mr_player_setting_menu_toggle matches 1 if entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting] run return fail
execute if score @s mr_player_party_menu_toggle matches 1 run scoreboard players reset @s mr_player_party_menu_toggle

clear @s



execute unless score @n[type=marker,name=player_spawn] mr_player_misc_setting_1 matches 1.. run item replace entity @s hotbar.0 with item_frame[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Toggle Events [ Random ]","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={guaranteed_event:1b}]

execute if score @n[type=marker,name=player_spawn] mr_player_misc_setting_1 matches 1 run item replace entity @s hotbar.0 with glow_item_frame[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Toggle Events [ Guaranteed ]","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={guaranteed_event:1b}]



execute unless score @n[type=marker,name=player_spawn] mr_player_misc_setting_2 matches 1.. run item replace entity @s hotbar.1 with item_frame[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Toggle Endless Spawn [ Disabled ]","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={endless:1b}]

execute if score @n[type=marker,name=player_spawn] mr_player_misc_setting_2 matches 1 run item replace entity @s hotbar.1 with glow_item_frame[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Toggle Endless Spawn [ Enabled ]","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={endless:1b}]
 

execute unless score @n[type=marker,name=player_spawn] mr_player_misc_setting_3 matches 1.. run item replace entity @s hotbar.2 with item_frame[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Toggle Hide Event Announcement [ Disabled ]","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={announce_event:1b}]

execute if score @n[type=marker,name=player_spawn] mr_player_misc_setting_3 matches 1 run item replace entity @s hotbar.2 with glow_item_frame[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Toggle Hide Event Announcement [ Enabled ]","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={announce_event:1b}]


item replace entity @s hotbar.3 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":" ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
item replace entity @s hotbar.4 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"  ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
item replace entity @s hotbar.5 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"   ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
item replace entity @s hotbar.6 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"    ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]



execute unless score @s mr_player_misc_menu_toggle matches 1.. run item replace entity @s hotbar.7 with heart_of_the_sea[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"[ Exit ] Run Settings","italic":false,color:dark_red}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={menu_toggle:true}]

execute if score @s mr_player_misc_menu_toggle matches 1 run item replace entity @s hotbar.7 with netherite_upgrade_smithing_template[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Party","italic":false,color:green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={menu_toggle:true}]

