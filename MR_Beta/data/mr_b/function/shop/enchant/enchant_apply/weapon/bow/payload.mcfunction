
execute as @s[tag=enchant_payload] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:payload":1}}}}] run enchant @s mr_b:payload




tag @s remove enchant_payload
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



