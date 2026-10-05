execute as @s[tag=enchant_overtime] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:overtime":1}}}}] run enchant @s mr_b:overtime

tag @s remove enchant_overtime
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance