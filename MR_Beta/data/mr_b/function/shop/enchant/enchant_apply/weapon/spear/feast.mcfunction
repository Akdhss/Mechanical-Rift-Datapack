
execute as @s[tag=enchant_feast] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/spear/feast/feast":1}}}}] run enchant @s mr_b:weapon/spear/feast/feast




tag @s remove enchant_feast
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



