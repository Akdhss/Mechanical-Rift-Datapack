execute as @s[tag=enchant_sturdy_body] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:armor/chest/sturdy_body/sturdy_body":1}}}}] run enchant @s mr_b:armor/chest/sturdy_body/sturdy_body

tag @s remove enchant_sturdy_body
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
