execute as @s[tag=enchant_sonic_boom] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/bow/sonic_boom/sonic_boom":1}}}}] run enchant @s mr_b:weapon/bow/sonic_boom/sonic_boom

tag @s remove enchant_sonic_boom
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
