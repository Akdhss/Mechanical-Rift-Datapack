
execute as @s[tag=enchant_hail_mary] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:hail_mary":1}}}}] run enchant @s mr_b:hail_mary




tag @s remove enchant_hail_mary
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



