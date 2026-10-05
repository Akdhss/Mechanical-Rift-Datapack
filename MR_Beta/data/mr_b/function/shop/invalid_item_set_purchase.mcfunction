title @s actionbar {text:"-- You already have an item set --",bold:true,color:"red"}

 

advancement revoke @s only mr_b:item_set_shop/item_set_1
advancement revoke @s only mr_b:item_set_shop/item_set_2
advancement revoke @s only mr_b:item_set_shop/item_set_3
advancement revoke @s only mr_b:item_set_shop/item_set_4
advancement revoke @s only mr_b:item_set_shop/item_set_5
advancement revoke @s only mr_b:item_set_shop/item_set_6
advancement revoke @s only mr_b:item_set_shop/item_set_7
advancement revoke @s only mr_b:item_set_shop/item_set_8
advancement revoke @s only mr_b:item_set_shop/item_set_9
advancement revoke @s only mr_b:item_set_shop/item_set_10

execute at @s run function mr_b:sfx/item_fail
