# Macro: runs with the registry entry as arguments.
execute at @s run function mr_b:sfx/item_bought
$title @s actionbar {text:"-- You have bought $(name) --",bold:true,color:"gold"}
scoreboard players operation @s mr_shop_player_currency -= .cost mr_shop_cost

# shared by abilities and enchants: hand over the item
execute if data storage mr_b:shop buy{kind:"ability"} run function mr_b:shop/entry/give_ability with storage mr_b:shop buy
execute if data storage mr_b:shop buy{kind:"enchant"} run function mr_b:shop/entry/give_enchant with storage mr_b:shop buy

# ultimate-only
execute if data storage mr_b:shop buy{kind:"ultimate"} run tag @s add has_ultimate

# entry-specific extras (mr_b:shop/hook/none when there are none)
$function $(hook) with storage mr_b:shop buy

function mr_b:shop/reset_scores
