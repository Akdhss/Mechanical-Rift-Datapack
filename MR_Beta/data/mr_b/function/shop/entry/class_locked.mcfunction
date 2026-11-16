title @s actionbar {text:"-- CANNOT BUY LOCKED ITEMS --",color:"red"}
function mr_b:shop/reset_scores
tag @s add failed_purchase
execute at @s run function mr_b:sfx/item_fail
