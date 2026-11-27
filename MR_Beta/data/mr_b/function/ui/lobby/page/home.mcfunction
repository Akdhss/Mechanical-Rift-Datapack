# Lobby UI page: Home (runs as the lobby chest minecart)
# warn-off-file execute-group

# background
item replace entity @s container.0 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.1 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.2 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.3 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.5 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.6 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.7 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.8 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.9 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.12 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.14 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.17 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.18 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.19 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.21 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.23 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1
item replace entity @s container.25 with minecraft:black_stained_glass_pane[custom_data={lobby_item:1b},tooltip_display={hide_tooltip:true}] 1

# buttons
item replace entity @s container.4 with minecraft:nether_star[custom_data={lobby_item:1b,btn:"none"},custom_name={text:"Lobby Menu",italic:false,color:"gold",bold:true},lore=[{text:"Ready up, start the run, or open a settings page.",italic:false,color:"gray"}]] 1
item replace entity @s container.10 with minecraft:red_dye[custom_data={lobby_item:1b,btn:"ready"},custom_name={text:"Ready",italic:false,color:"white",bold:true},lore=[{text:"Click to ready up.",italic:false,color:"gray"}]] 1
execute if score #ready lobby_tmp matches 1 run item replace entity @s container.10 with minecraft:lime_dye[custom_data={lobby_item:1b,btn:"ready"},custom_name={text:"Unready",italic:false,color:"white",bold:true},lore=[{text:"Click to un-ready.",italic:false,color:"gray"}]] 1
item replace entity @s container.11 with minecraft:barrier[custom_data={lobby_item:1b,btn:"start_game"},custom_name={text:"Start Game",italic:false,color:"dark_red",bold:true},lore=[{text:"Waiting for the party to ready up.",italic:false,color:"gray"}]] 1
execute if entity @a[team=rift_party,scores={ready_state=1}] run item replace entity @s container.11 with minecraft:emerald[custom_data={lobby_item:1b,btn:"start_game"},custom_name={text:"Start Game",italic:false,color:"dark_green",bold:true},lore=[{text:"Everyone is ready!",italic:false,color:"gray"}]] 1
execute if entity @a[team=rift_party,scores={ready_state=0}] run item replace entity @s container.11 with minecraft:barrier[custom_data={lobby_item:1b,btn:"start_game"},custom_name={text:"Start Game",italic:false,color:"dark_red",bold:true},lore=[{text:"Waiting for the party to ready up.",italic:false,color:"gray"}]] 1
item replace entity @s container.13 with minecraft:enchanted_book[custom_data={lobby_item:1b,btn:"guild_shop"},custom_name={text:"Browse Guild Shop",italic:false,color:"gold",bold:true},lore=[{text:"Opens the Guild Shop.",italic:false,color:"gray"}]] 1
item replace entity @s container.15 with minecraft:campfire[custom_data={lobby_item:1b,btn:"tp_lobby"},custom_name={text:"Teleport to Lobby",italic:false,color:"gold",bold:true}] 1
item replace entity @s container.16 with minecraft:soul_campfire[custom_data={lobby_item:1b,btn:"tp_run"},custom_name={text:"Teleport to Map",italic:false,color:"gold",bold:true}] 1
item replace entity @s container.20 with minecraft:comparator[custom_data={lobby_item:1b,btn:"go_main_settings"},custom_name={text:"Main Settings",italic:false,color:"aqua",bold:true},lore=[{text:"Difficulty, DLC and map select.",italic:false,color:"gray"}]] 1
item replace entity @s container.22 with minecraft:totem_of_undying[custom_data={lobby_item:1b,btn:"go_party"},custom_name={text:"Party Settings",italic:false,color:"green",bold:true},lore=[{text:"Invite or kick players.",italic:false,color:"gray"}]] 1
item replace entity @s container.24 with minecraft:clock[custom_data={lobby_item:1b,btn:"go_run_settings"},custom_name={text:"Run / Modifier Settings",italic:false,color:"gold",bold:true},lore=[{text:"Events, endless spawn, announcements, objectives.",italic:false,color:"gray"}]] 1
item replace entity @s container.26 with minecraft:redstone[custom_data={lobby_item:1b,btn:"leave_party"},custom_name={text:"Leave Party",italic:false,color:"red",bold:true},lore=[{text:"Leaves the party.",italic:false,color:"gray"}]] 1
