# Lobby UI page: Run / Modifier Settings (runs as the lobby chest minecart)
# warn-off-file execute-group

# background
item replace entity @s container.0 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.1 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.2 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.3 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.5 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.6 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.7 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.8 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.9 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.11 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.13 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.15 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.17 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.18 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.19 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.20 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.21 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.23 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.24 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.25 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.26 with minecraft:orange_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1

# buttons
item replace entity @s container.4 with minecraft:clock[custom_data={lobby_item:1b,btn:"none"},custom_name={text:"Run / Modifier Settings",italic:false,color:"gold",bold:true}] 1
execute unless score @e[name=player_spawn,type=marker,limit=1] mr_player_misc_setting_1 matches 1 run item replace entity @s container.10 with minecraft:item_frame[custom_data={lobby_item:1b,btn:"toggle_events"},custom_name={text:"Events [ Random ]",italic:false,color:"gray",bold:true},lore=[{text:"Click to toggle.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_player_misc_setting_1 matches 1 run item replace entity @s container.10 with minecraft:glow_item_frame[custom_data={lobby_item:1b,btn:"toggle_events"},custom_name={text:"Events [ Guaranteed ]",italic:false,color:"green",bold:true},lore=[{text:"Click to toggle.",italic:false,color:"gray"}]] 1
execute unless score @e[name=player_spawn,type=marker,limit=1] mr_player_misc_setting_2 matches 1 run item replace entity @s container.12 with minecraft:item_frame[custom_data={lobby_item:1b,btn:"toggle_endless"},custom_name={text:"Endless Spawn [ Disabled ]",italic:false,color:"gray",bold:true},lore=[{text:"Click to toggle.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_player_misc_setting_2 matches 1 run item replace entity @s container.12 with minecraft:glow_item_frame[custom_data={lobby_item:1b,btn:"toggle_endless"},custom_name={text:"Endless Spawn [ Enabled ]",italic:false,color:"green",bold:true},lore=[{text:"Click to toggle.",italic:false,color:"gray"}]] 1
execute unless score @e[name=player_spawn,type=marker,limit=1] mr_player_misc_setting_3 matches 1 run item replace entity @s container.14 with minecraft:item_frame[custom_data={lobby_item:1b,btn:"toggle_announce"},custom_name={text:"Hide Event Announcement [ Disabled ]",italic:false,color:"gray",bold:true},lore=[{text:"Click to toggle.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_player_misc_setting_3 matches 1 run item replace entity @s container.14 with minecraft:glow_item_frame[custom_data={lobby_item:1b,btn:"toggle_announce"},custom_name={text:"Hide Event Announcement [ Enabled ]",italic:false,color:"green",bold:true},lore=[{text:"Click to toggle.",italic:false,color:"gray"}]] 1
execute unless score @e[name=player_spawn,type=marker,limit=1] mr_player_misc_setting_4 matches 1 run item replace entity @s container.16 with minecraft:item_frame[custom_data={lobby_item:1b,btn:"toggle_objectives"},custom_name={text:"Objectives [ Disabled ]",italic:false,color:"gray",bold:true},lore=[{text:"Click to toggle.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_player_misc_setting_4 matches 1 run item replace entity @s container.16 with minecraft:glow_item_frame[custom_data={lobby_item:1b,btn:"toggle_objectives"},custom_name={text:"Objectives [ Enabled ]",italic:false,color:"green",bold:true},lore=[{text:"Click to toggle.",italic:false,color:"gray"}]] 1
item replace entity @s container.22 with minecraft:arrow[custom_data={lobby_item:1b,btn:"go_home"},custom_name={text:"Back",italic:false,color:"white",bold:true}] 1
