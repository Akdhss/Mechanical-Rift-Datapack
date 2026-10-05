
execute as @s[tag=enchant_debilitation] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:debilitation":1}}}}] run enchant @s mr_b:debilitation




tag @s remove enchant_debilitation
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



