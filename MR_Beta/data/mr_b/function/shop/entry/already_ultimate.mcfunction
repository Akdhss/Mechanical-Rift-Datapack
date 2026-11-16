title @s actionbar {text:"-- You already have an Ultimate --",bold:true,color:"red"}
stopsound @s master
function mr_b:shop/reset_scores
tag @s add failed_purchase
execute at @s run function mr_b:sfx/item_fail
