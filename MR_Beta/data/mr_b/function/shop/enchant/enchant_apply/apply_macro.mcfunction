# Shared application function for ordinary enchantments.
# Input storage fields: key, enchant, item.
# Compatibility and duplicate checks are data-driven through the registry.
$execute unless items entity @s weapon.mainhand $(item) run return fail
$execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"$(enchant)"}]] run return fail
$enchant @s $(enchant)
$tag @s remove enchant_$(key)
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
