
execute as @s[tag=enchant_barbed] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/crossbow/barbed/barbed":1}}}}] run enchant @s mr_b:weapon/crossbow/barbed/barbed




tag @s remove enchant_barbed
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



