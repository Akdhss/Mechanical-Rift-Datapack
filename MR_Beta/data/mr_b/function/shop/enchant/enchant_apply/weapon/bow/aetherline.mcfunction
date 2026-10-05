
execute as @s[tag=enchant_aetherline] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:aetherline":1}}}}] run enchant @s mr_b:aetherline




tag @s remove enchant_aetherline
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



