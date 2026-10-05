execute as @s[tag=enchant_compounding] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/bow/compounding/compounding":1}}}}] run enchant @s mr_b:weapon/bow/compounding/compounding

tag @s remove enchant_compounding
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
