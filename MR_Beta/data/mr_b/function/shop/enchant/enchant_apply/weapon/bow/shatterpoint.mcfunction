
execute as @s[tag=enchant_shatterpoint] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:shatterpoint":1}}}}] run enchant @s mr_b:shatterpoint




tag @s remove enchant_shatterpoint
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



