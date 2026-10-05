execute as @s[tag=enchant_loudmouth] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:armor/head/loudmouth/loudmouth":1}}}}] run enchant @s mr_b:armor/head/loudmouth/loudmouth


tag @s remove enchant_loudmouth
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
