# Lobby UI page: Main Settings (runs as the lobby chest minecart)
# warn-off-file execute-group

# background
item replace entity @s container.0 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.1 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.2 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.3 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.5 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.6 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.7 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.8 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.9 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.10 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.12 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.14 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.16 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.17 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.18 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.19 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.20 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.21 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.23 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.24 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.25 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.26 with minecraft:blue_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1

# buttons
item replace entity @s container.4 with minecraft:comparator[custom_data={lobby_item:1b,btn:"none"},custom_name={text:"Main Settings",italic:false,color:"aqua",bold:true}] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_difficulty matches 1 run item replace entity @s container.11 with minecraft:lime_candle[custom_data={lobby_item:1b,btn:"difficulty"},custom_name={text:"Change Difficulty",italic:false,color:"dark_green",bold:true},lore=[{text:"Click to raise the difficulty.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_difficulty matches 2 run item replace entity @s container.11 with minecraft:yellow_candle[custom_data={lobby_item:1b,btn:"difficulty"},custom_name={text:"Change Difficulty",italic:false,color:"gold",bold:true},lore=[{text:"Click to raise the difficulty.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_difficulty matches 3 run item replace entity @s container.11 with minecraft:red_candle[custom_data={lobby_item:1b,btn:"difficulty"},custom_name={text:"Change Difficulty",italic:false,color:"dark_red",bold:true},lore=[{text:"Click to raise the difficulty.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_difficulty matches 4 run item replace entity @s container.11 with minecraft:black_candle[custom_data={lobby_item:1b,btn:"difficulty"},custom_name={text:"Change Difficulty",italic:false,color:"black",bold:true},lore=[{text:"Click to raise the difficulty.",italic:false,color:"gray"}]] 1
execute unless score @e[name=player_spawn,type=marker,limit=1] mr_wave_dlc matches 1.. run item replace entity @s container.13 with minecraft:dragon_breath[custom_data={lobby_item:1b,btn:"dlc"},custom_name={text:"Choose DLC",italic:false,color:"white",bold:true},lore=[{text:"Click to cycle the DLC.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_wave_dlc matches 1 run item replace entity @s container.13 with minecraft:magma_cream[custom_data={lobby_item:1b,btn:"dlc"},custom_name={text:"Choose DLC",italic:false,color:"white",bold:true},lore=[{text:"Click to cycle the DLC.",italic:false,color:"gray"}]] 1
execute if score @e[name=player_spawn,type=marker,limit=1] mr_wave_dlc matches 2 run item replace entity @s container.13 with minecraft:iron_sword[custom_data={lobby_item:1b,btn:"dlc"},custom_name={text:"Choose DLC",italic:false,color:"white",bold:true},lore=[{text:"Click to cycle the DLC.",italic:false,color:"gray"}]] 1
execute unless score .origin world_origin_exclusive matches 1 run item replace entity @s container.15 with minecraft:barrier[custom_data={lobby_item:1b,btn:"none"},custom_name={text:"Select Map",italic:false,color:"dark_gray",bold:true},lore=[{text:"Origin World Exclusive.",italic:false,color:"gray"}]] 1
execute if score .origin world_origin_exclusive matches 1 run item replace entity @s container.15 with minecraft:end_crystal[custom_data={lobby_item:1b,btn:"go_maps"},custom_name={text:"Select Map",italic:false,color:"gold",bold:true},lore=[{text:"Origin World Exclusive.",italic:false,color:"gray"}]] 1
item replace entity @s container.22 with minecraft:arrow[custom_data={lobby_item:1b,btn:"go_home"},custom_name={text:"Back",italic:false,color:"white",bold:true}] 1
