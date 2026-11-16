# Special application handler: Last Stand.
# Its enchantment is named Determination in the enchantment registry.
# Keep the death-score reset: Last Stand is applied during its death-prevention flow.
$execute unless items entity @s weapon.mainhand $(item) run return fail
$execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"$(enchant)"}]] run return fail
$enchant @s $(enchant)
scoreboard players reset @s player_death
tag @s remove enchant_last_stand
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
