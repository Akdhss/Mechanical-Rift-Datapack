# warn-off-file execute-group
# enchant buy entry point (mr_shop_enchant = enchant id). All enchant data lives in registry/.
data modify storage mr_b:shop lookup.cat set value "enchant"
execute store result storage mr_b:shop lookup.id int 1 run scoreboard players get @s mr_shop_enchant
function mr_b:shop/entry/buy
