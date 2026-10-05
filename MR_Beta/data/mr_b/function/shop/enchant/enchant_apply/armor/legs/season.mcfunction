
execute as @s[tag=enchant_season] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:season":1}}}}] run enchant @s mr_b:season




tag @s remove enchant_season
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



