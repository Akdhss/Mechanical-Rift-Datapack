
execute as @s[tag=enchant_wind_bolt,nbt=!{SelectedItem:{components:{"minecraft:enchantments":{"mr_b:wind_bolt":1}}}}] run enchant @s mr_b:wind_bolt




tag @s remove enchant_wind_bolt
tag @s remove enchant_upgrade_active
execute at @s run function mr_b:sfx/item_enhance



