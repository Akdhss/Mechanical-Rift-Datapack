# warn-off-file execute-group
# ability buy entry point (mr_shop_ability = ability id). All ability data lives in registry/.
# refreshable abilities cannot be bought alongside certain item sets
function mr_b:shop/entry/ability_conflict
execute if entity @s[tag=failed_purchase] run return fail

data modify storage mr_b:shop lookup.cat set value "ability"
execute store result storage mr_b:shop lookup.id int 1 run scoreboard players get @s mr_shop_ability
function mr_b:shop/entry/buy
