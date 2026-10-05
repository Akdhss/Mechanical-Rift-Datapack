
execute as @s[tag=enchant_tethering] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/crossbow/tethering/tethering":1}}}}] run enchant @s mr_b:weapon/crossbow/tethering/tethering




tag @s remove enchant_tethering
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



