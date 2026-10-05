
scoreboard players add @s mr_player_lobby_menu_toggle 1
execute if score @s mr_player_lobby_menu_toggle matches 2.. run scoreboard players reset @s mr_player_lobby_menu_toggle


execute as @e[type=item,nbt={Item:{id:"minecraft:red_dye"}}] at @s on origin run clear @s red_dye[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Ready","italic":false}],rarity=epic]
execute as @e[type=item,nbt={Item:{id:"minecraft:lime_dye"}}] at @s on origin run clear @s lime_dye[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Unready","italic":false}],rarity=epic]


execute if score @s mr_player_lobby_menu_toggle matches 1 run function mr_b:general/lobby_menu/menu_on
execute unless score @s mr_player_lobby_menu_toggle matches 1 run function mr_b:general/lobby_menu/menu_off