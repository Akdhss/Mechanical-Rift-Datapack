# Run once in load.mcfunction (or safely here)
scoreboard objectives add shop_page dummy
scoreboard objectives add shop_page_extra dummy
scoreboard objectives add shop_id dummy

# Give player a unique ID if needed
execute unless score @s shop_id matches 1.. store result score @s shop_id run scoreboard players add #next_id shop_id 1

# Summon the cart with a temporary tag
summon minecraft:chest_minecart ~ ~1 ~ {Tags:["menu_cart","new_cart","InvisibleMinecart"],CustomName:'Guild Shop',Invulnerable:1b,NoGravity:1b,}

data modify entity @s CustomName set value {text:"Guild Shop",color:"gold",bold:true}

# Link ID and start on Page 1 so tick.mcfunction renders the Next Page arrow
scoreboard players operation @e[type=minecraft:chest_minecart,tag=new_cart] shop_id = @s shop_id


scoreboard players operation @e[type=minecraft:chest_minecart,tag=new_cart] uuid0 = @s uuid0
scoreboard players operation @e[type=minecraft:chest_minecart,tag=new_cart] uuid1 = @s uuid1
scoreboard players operation @e[type=minecraft:chest_minecart,tag=new_cart] uuid2 = @s uuid2
scoreboard players operation @e[type=minecraft:chest_minecart,tag=new_cart] uuid3 = @s uuid3



scoreboard players set @e[type=minecraft:chest_minecart,tag=new_cart] shop_page 1
tag @e[type=minecraft:chest_minecart,tag=new_cart] remove new_cart
execute as @e[type=minecraft:chest_minecart,tag=menu_cart] at @s run function mr_b:ui/shop/tick