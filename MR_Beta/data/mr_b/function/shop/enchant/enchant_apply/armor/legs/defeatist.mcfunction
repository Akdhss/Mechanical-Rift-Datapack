execute as @s[tag=enchant_defeatist] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:armor/legs/defeatist/defeatist":1}}}}] run enchant @s mr_b:armor/legs/defeatist/defeatist

tag @s remove enchant_defeatist
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
