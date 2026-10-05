
execute as @s[tag=enchant_coalescence] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:coalescence":1}}}}] run enchant @s mr_b:coalescence




tag @s remove enchant_coalescence
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



