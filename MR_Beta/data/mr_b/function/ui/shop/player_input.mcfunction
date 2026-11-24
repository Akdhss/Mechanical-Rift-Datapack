execute unless items entity @s player.cursor *[tooltip_display={hide_tooltip:true}] run playsound mr_b:player/generic/deploy/player_deploy

execute as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players operation @p shop_page = @s shop_page
execute as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players operation @p shop_page_extra = @s shop_page_extra

execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b,btn_id:glossary}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players set @s shop_page 1
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b,btn_id:equipment}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players set @s shop_page 2
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b,btn_id:enchantment}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players set @s shop_page 3
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b,btn_id:enchantment}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players set @s shop_page_extra 1
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b,btn_id:ability}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players set @s shop_page 4
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b,btn_id:ability}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players set @s shop_page_extra 1
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b,btn_id:consumable}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players set @s shop_page 5
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b,btn_id:item_set}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players set @s shop_page 6

execute if items entity @s player.cursor *[minecraft:custom_data~{btn_tag:nav}] run function mr_b:ui/shop/nav/switch_page
execute if items entity @s player.cursor *[minecraft:custom_data~{btn_tag:equipment}] run function mr_b:ui/shop/buy/equipment
execute if items entity @s player.cursor *[minecraft:custom_data~{btn_tag:enchantment}] run function mr_b:ui/shop/buy/enchantment
execute if items entity @s player.cursor *[minecraft:custom_data~{btn_tag:ability}] run function mr_b:ui/shop/buy/ability
execute if items entity @s player.cursor *[minecraft:custom_data~{btn_tag:consumable}] run function mr_b:ui/shop/buy/consumable

execute if items entity @s player.cursor *[minecraft:custom_data~{btn_id:sell}] run trigger mr_shop_book_index set -1

# --- Safe Cleanup ---
clear @s *[minecraft:custom_data~{shop_item:1b}]
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_item:1b}] run item replace entity @s player.cursor with minecraft:air



execute as @e[type=minecraft:chest_minecart,tag=menu_cart] at @s run function mr_b:ui/shop/tick

scoreboard players reset @s shop_page
scoreboard players reset @s shop_page_extra