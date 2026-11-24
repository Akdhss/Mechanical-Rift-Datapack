execute if items entity @s player.cursor *[minecraft:custom_data~{btn_id:next_btn}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players add @s shop_page_extra 1
execute if items entity @s player.cursor *[minecraft:custom_data~{btn_id:back_btn}] as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_id = @p shop_id run scoreboard players remove @s shop_page_extra 1

execute as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_page_extra matches 5.. run scoreboard players set @s shop_page_extra 1
execute as @e[type=minecraft:chest_minecart,tag=menu_cart] if score @s shop_page_extra matches ..0 run scoreboard players set @s shop_page_extra 4

