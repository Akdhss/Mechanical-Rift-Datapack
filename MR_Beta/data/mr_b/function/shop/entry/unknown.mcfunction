# registry has no entry for the requested id
function mr_b:shop/reset_scores
tag @s add failed_purchase
title @s actionbar {text:"-- UNKNOWN ITEM --",color:"red"}
execute at @s run function mr_b:sfx/item_fail
