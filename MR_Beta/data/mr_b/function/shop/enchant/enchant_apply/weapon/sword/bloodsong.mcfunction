
execute as @s[tag=enchant_bloodsong] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:bloodsong":1}}}}] run enchant @s mr_b:bloodsong




tag @s remove enchant_bloodsong
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



