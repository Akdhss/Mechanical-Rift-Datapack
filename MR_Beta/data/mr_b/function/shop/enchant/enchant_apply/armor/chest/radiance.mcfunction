execute as @s[tag=enchant_radiance] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:radiance":1}}}}] run enchant @s mr_b:radiance

tag @s remove enchant_radiance
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
