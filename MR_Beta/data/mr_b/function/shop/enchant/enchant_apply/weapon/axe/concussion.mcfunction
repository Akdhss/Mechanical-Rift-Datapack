
execute as @s[tag=enchant_concussion] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/axe/concussion/concussion":1}}}}] run enchant @s mr_b:weapon/axe/concussion/concussion




tag @s remove enchant_concussion
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



