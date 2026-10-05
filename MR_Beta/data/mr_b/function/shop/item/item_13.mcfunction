title @s actionbar {text:"-- You have bought a Crossbow --",bold:true,color:"gold"}
scoreboard players remove @s mr_shop_player_currency 100
advancement revoke @s only mr_b:item_shop/item_13
scoreboard players reset @s mr_shop_item


give @s crossbow

