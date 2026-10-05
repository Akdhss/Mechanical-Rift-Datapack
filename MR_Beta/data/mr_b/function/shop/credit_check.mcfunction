# warn-off-file execute-group


scoreboard players operation @s mr_shop_currency_check = @s mr_shop_player_currency_check
scoreboard players operation @s mr_shop_currency_check -= @s mr_shop_player_currency
scoreboard players operation @s mr_shop_currency_check *= .shop mr_shop_currency_constant

execute if score @s mr_shop_player_currency_check < @s mr_shop_player_currency run tellraw @s ["",{text:"Gained: "},{score:{name:"@s",objective:"mr_shop_currency_check"},color:"green"}]

execute if score @s mr_shop_player_currency_check < @s mr_shop_player_currency if items entity @s armor.head *[enchantments~[{enchantments:"mr_b:collector"}]] run function mr_b:enchant/armor/helmet/collector/collector

execute if score @s mr_shop_player_currency_check > @s mr_shop_player_currency run tellraw @s ["",{text:"Spent: "},{score:{name:"@s",objective:"mr_shop_currency_check"},color:"dark_red"}]

#tellraw @s ["",{text:"Nitronic Available: "},{score:{name:"@s",objective:"mr_shop_player_currency"},color:"gold"}]

scoreboard players reset @s mr_shop_currency_check