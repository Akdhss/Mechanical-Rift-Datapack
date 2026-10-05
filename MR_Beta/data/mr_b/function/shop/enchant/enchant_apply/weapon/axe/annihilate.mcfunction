
execute as @s[tag=enchant_annihilate] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/axe/annihilate/annihilate":1}}}}] run enchant @s mr_b:weapon/axe/annihilate/annihilate




tag @s remove enchant_annihilate
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



