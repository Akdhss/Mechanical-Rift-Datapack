# warn-off-file nbt-items-use-if-items
# warn-off-file execute-as-if-entity-s-merge
execute as @s[tag=enchant_bulwark] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:weapon/shield/bulwark/bulwark":1}}}}] run enchant @s mr_b:weapon/shield/bulwark/bulwark

tag @s remove enchant_bulwark
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
