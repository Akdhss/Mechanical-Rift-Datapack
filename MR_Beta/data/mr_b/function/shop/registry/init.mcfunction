# Run on load (add mr_b:shop/registry/init to #minecraft:load)
scoreboard objectives add mr_shop_cost dummy
data remove storage mr_b:shop registry
function mr_b:shop/registry/abilities
function mr_b:shop/registry/enchants
function mr_b:shop/registry/enchant_apply
