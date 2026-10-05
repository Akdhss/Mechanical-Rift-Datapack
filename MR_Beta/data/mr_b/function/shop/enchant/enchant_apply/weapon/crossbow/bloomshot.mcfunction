
execute as @s[tag=enchant_bloomshot] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:bloom_shot":1}}}}] run enchant @s mr_b:bloom_shot




tag @s remove enchant_bloomshot
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



