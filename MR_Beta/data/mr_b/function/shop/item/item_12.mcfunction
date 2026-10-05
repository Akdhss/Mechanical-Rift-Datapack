title @s actionbar {text:"-- You have bought a Bow --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 100
advancement revoke @s only mr_b:item_shop/item_12
scoreboard players reset @s mr_shop_item


give @s bow

