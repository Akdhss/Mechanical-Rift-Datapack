# warn-off-file nbt-items-use-if-items
# warn-off-file execute-as-if-entity-s-merge
execute as @s[tag=enchant_gold_plating] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:armor/chest/gold_plating/gold_plating":1}}}}] run enchant @s mr_b:armor/chest/gold_plating/gold_plating

tag @s remove enchant_gold_plating
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance
