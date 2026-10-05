
execute as @s[tag=enchant_lily] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:lily":1}}}}] run enchant @s mr_b:lily




tag @s remove enchant_lily
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



