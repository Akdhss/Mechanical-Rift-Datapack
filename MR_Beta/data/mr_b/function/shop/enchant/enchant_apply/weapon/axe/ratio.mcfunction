execute as @s[tag=enchant_ratio] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:ratio":1}}}}] run enchant @s mr_b:ratio

tag @s remove enchant_ratio
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance