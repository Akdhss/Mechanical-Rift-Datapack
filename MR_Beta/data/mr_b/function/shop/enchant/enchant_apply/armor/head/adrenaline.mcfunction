execute as @s[tag=enchant_adrenaline] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:armor/head/adrenaline/adrenaline":1}}}}] run enchant @s mr_b:armor/head/adrenaline/adrenaline

tag @s remove enchant_adrenaline
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
