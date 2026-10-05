
execute as @s[tag=enchant_lacerate] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/sword/lacerate/lacerate":1}}}}] run enchant @s mr_b:weapon/sword/lacerate/lacerate




tag @s remove enchant_lacerate
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance

