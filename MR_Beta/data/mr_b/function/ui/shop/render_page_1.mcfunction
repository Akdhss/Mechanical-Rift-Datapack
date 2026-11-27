# Page 1 Items (Run as the Chest Minecart)

item replace entity @s container.0 with minecraft:air
item replace entity @s container.1 with minecraft:air
item replace entity @s container.2 with minecraft:air
item replace entity @s container.3 with minecraft:air
item replace entity @s container.4 with minecraft:air
item replace entity @s container.5 with minecraft:air
item replace entity @s container.6 with minecraft:air
item replace entity @s container.7 with minecraft:air
item replace entity @s container.8 with minecraft:air

item replace entity @s container.9 with minecraft:air
item replace entity @s container.10 with minecraft:air
item replace entity @s container.11 with minecraft:air
item replace entity @s container.12 with minecraft:air
item replace entity @s container.13 with minecraft:air
item replace entity @s container.14 with minecraft:air
item replace entity @s container.15 with minecraft:air
item replace entity @s container.16 with minecraft:air
item replace entity @s container.17 with minecraft:air

item replace entity @s container.18 with minecraft:air
item replace entity @s container.19 with minecraft:air
item replace entity @s container.20 with minecraft:air
item replace entity @s container.21 with minecraft:air
item replace entity @s container.22 with minecraft:air
item replace entity @s container.23 with minecraft:air
item replace entity @s container.24 with minecraft:air
item replace entity @s container.25 with minecraft:air
item replace entity @s container.26 with minecraft:air



#black border left side & right side
item replace entity @s container.0 with minecraft:black_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.9 with minecraft:black_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.18 with minecraft:black_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]

item replace entity @s container.8 with minecraft:black_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.17 with minecraft:black_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.26 with minecraft:black_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]


#magenta border up & down
item replace entity @s container.1 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.2 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.3 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.4 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.5 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.6 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.7 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]

item replace entity @s container.10 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.16 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]

item replace entity @s container.19 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.20 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.21 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.23 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.24 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]
item replace entity @s container.25 with minecraft:magenta_stained_glass_pane[minecraft:custom_data={shop_item:1b},tooltip_display={hide_tooltip:true}]


item replace entity @s container.11 with minecraft:diamond_chestplate[minecraft:custom_data={shop_item:1b,btn_id:equipment},item_name=[{"text":"Equipment","color":"dark_gray",bold:true}]] 1
item replace entity @s container.12 with minecraft:enchanted_book[minecraft:custom_data={shop_item:1b,btn_id:enchantment},item_name=[{"text":"Enchantments","color":"light_purple",bold:true}]] 1
item replace entity @s container.13 with minecraft:honey_bottle[minecraft:custom_data={shop_item:1b,btn_id:ability},item_name=[{"text":"Abilities","color":"dark_aqua",bold:true}]] 1
item replace entity @s container.14 with minecraft:enchanted_golden_apple[minecraft:custom_data={shop_item:1b,btn_id:consumable},item_name=[{"text":"Consumables","color":"dark_green",bold:true}]] 1
item replace entity @s container.15 with minecraft:chest[minecraft:custom_data={shop_item:1b,btn_id:item_set},item_name=[{"text":"Item Sets","color":"gold",bold:true}]] 1





item replace entity @s container.22 with minecraft:composter[minecraft:custom_data={shop_item:1b,btn_id:sell},item_name=[{"text":"Sell","color":"dark_red",bold:true}]] 1
execute if entity @p[tag=item_set_bought,tag=player_input_ui] run item replace entity @s container.22 with minecraft:barrier[minecraft:custom_data={shop_item:1b},minecraft:custom_name={"text":"Sell - Function Locked","color":"red","italic":false},minecraft:lore=[[{"text":"Unavailable after the game starts.","color":"dark_red","italic":false}]]]