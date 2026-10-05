
execute as @s[tag=enchant_icebreaker] unless entity @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{"mr_b:icebreaker":1}}}}] run enchant @s mr_b:icebreaker




tag @s remove enchant_icebreaker
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



