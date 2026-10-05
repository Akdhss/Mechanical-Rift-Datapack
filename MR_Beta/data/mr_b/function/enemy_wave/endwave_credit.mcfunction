scoreboard players add @s mr_shop_player_currency_base 75

scoreboard players add @s[tag=class_freemix] mr_shop_player_currency_bonus 250
scoreboard players add @s[tag=class_support] mr_shop_player_currency_bonus 175
scoreboard players add @s[tag=class_tank] mr_shop_player_currency_bonus 125
execute as @s[tag=class_rich] run scoreboard players add @a[team=rift_party] mr_shop_player_currency_bonus 500
execute if entity @s[tag=class_rich] run tellraw @a [{"text":"V.I.P. Nitronic Bonus!","bold":true,"color":"gold"}]

# warn-off-file execute-group
execute if score @e[limit=1,distance=0..,name=player_spawn,type=marker] mr_player_misc_setting_1 matches 1 run scoreboard players add @s mr_shop_player_currency_diff 50
execute if score @e[limit=1,distance=0..,name=player_spawn,type=marker] mr_player_misc_setting_2 matches 1 run scoreboard players add @s mr_shop_player_currency_diff 50
execute if score @e[limit=1,distance=0..,name=player_spawn,type=marker] mr_player_misc_setting_3 matches 1 run scoreboard players add @s mr_shop_player_currency_diff 50


tellraw @s ["",{text:"Wave Earnings: "},{score:{name:"@s",objective:"mr_shop_player_currency_base"},color:"gold"}]
tellraw @s ["",{text:"Elimination Earnings: "},{score:{name:"@s",objective:"mr_shop_player_currency_kill"},color:"gold"}]
tellraw @s ["",{text:"Class Bonus: "},{score:{name:"@s",objective:"mr_shop_player_currency_bonus"},color:"gold"}]
tellraw @s ["",{text:"Modifier Bonus: "},{score:{name:"@s",objective:"mr_shop_player_currency_diff"},color:"gold"}]


scoreboard players operation @s mr_shop_player_currency += @s mr_shop_player_currency_base
scoreboard players operation @s mr_shop_player_currency += @s mr_shop_player_currency_kill
scoreboard players operation @s mr_shop_player_currency += @s mr_shop_player_currency_bonus
scoreboard players operation @s mr_shop_player_currency += @s mr_shop_player_currency_diff

scoreboard players operation @s mr_shop_player_currency_base -= @s mr_shop_player_currency_base
scoreboard players operation @s mr_shop_player_currency_kill -= @s mr_shop_player_currency_kill
scoreboard players operation @s mr_shop_player_currency_bonus -= @s mr_shop_player_currency_bonus
scoreboard players operation @s mr_shop_player_currency_diff -= @s mr_shop_player_currency_diff