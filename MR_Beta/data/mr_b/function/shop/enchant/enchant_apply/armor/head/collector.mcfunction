execute as @s[tag=enchant_collector] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:collector":1}}}}] run enchant @s mr_b:collector

tag @s remove enchant_collector
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance