
execute unless score @s mr_player_party_menu_toggle matches 1 if entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting] run return fail
execute if score @s mr_player_setting_menu_toggle matches 1 run scoreboard players reset @s mr_player_setting_menu_toggle

clear @s

item replace entity @s hotbar.0 with creeper_banner_pattern[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Invite Player","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
item replace entity @s hotbar.1 with flower_banner_pattern[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Kick Player","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

item replace entity @s hotbar.2 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
item replace entity @s hotbar.3 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":" ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
item replace entity @s hotbar.4 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"  ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
item replace entity @s hotbar.5 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"   ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]
item replace entity @s hotbar.6 with gray_stained_glass_pane[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"    ","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}]]

execute unless score @s mr_player_misc_menu_toggle matches 1.. run item replace entity @s hotbar.7 with heart_of_the_sea[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Run Settings","italic":false,color:green}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={menu_toggle:true}]

execute if score @s mr_player_misc_menu_toggle matches 1 run item replace entity @s hotbar.7 with netherite_upgrade_smithing_template[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"[ Exit ] Party","italic":false,color:dark_red}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-10,slot:mainhand,operation:add_value,id:"1780659174736"}],custom_data={menu_toggle:true}]



