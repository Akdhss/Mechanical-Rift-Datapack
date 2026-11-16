# Shared buy flow for abilities, ultimates and enchants.
# In: storage mr_b:shop lookup {cat, id}
data remove storage mr_b:shop buy
function mr_b:shop/entry/lookup with storage mr_b:shop lookup
execute unless data storage mr_b:shop buy run return run function mr_b:shop/entry/unknown

# class lock (applies to every entry kind)
function mr_b:shop/entry/check_class_lock
execute if entity @s[tag=failed_purchase] run return fail

# funds
execute store result score .cost mr_shop_cost run data get storage mr_b:shop buy.cost
execute if score @s mr_shop_player_currency < .cost mr_shop_cost run function mr_b:shop/insufficient_funds
execute if entity @s[tag=failed_purchase] run return fail

# ultimate-only: one per player
execute if data storage mr_b:shop buy{kind:"ultimate"} if entity @s[tag=has_ultimate] run function mr_b:shop/entry/already_ultimate
execute if entity @s[tag=failed_purchase] run return fail

function mr_b:shop/entry/success with storage mr_b:shop buy
