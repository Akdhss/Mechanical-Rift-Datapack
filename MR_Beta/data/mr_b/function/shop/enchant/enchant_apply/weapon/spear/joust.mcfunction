
execute as @s[tag=enchant_joust] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/spear/joust/joust":1}}}}] run enchant @s mr_b:weapon/spear/joust/joust




tag @s remove enchant_joust
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



