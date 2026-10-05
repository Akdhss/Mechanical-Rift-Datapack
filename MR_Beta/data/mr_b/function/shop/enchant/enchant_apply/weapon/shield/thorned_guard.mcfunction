# warn-off-file nbt-items-use-if-items
# warn-off-file execute-as-if-entity-s-merge
execute as @s[tag=enchant_thorned_guard] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/shield/thorned_guard/thorned_guard":1}}}}] run enchant @s mr_b:weapon/shield/thorned_guard/thorned_guard

tag @s remove enchant_thorned_guard
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
