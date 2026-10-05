
execute as @s[tag=enchant_skypiercer] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:skypiercer":1}}}}] run enchant @s mr_b:skypiercer




tag @s remove enchant_skypiercer
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



