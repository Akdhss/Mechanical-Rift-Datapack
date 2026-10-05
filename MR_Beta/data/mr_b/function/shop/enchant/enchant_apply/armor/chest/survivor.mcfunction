execute as @s[tag=enchant_survivor] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:armor/chest/survivor/survivor":1}}}}] run enchant @s mr_b:armor/chest/survivor/survivor

tag @s remove enchant_survivor
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
