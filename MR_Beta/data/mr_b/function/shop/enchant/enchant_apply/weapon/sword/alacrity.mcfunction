
execute as @s[tag=enchant_alacrity] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:alacrity":1}}}}] run enchant @s mr_b:alacrity




tag @s remove enchant_alacrity
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



