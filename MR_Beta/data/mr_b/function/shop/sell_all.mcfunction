# warn-off execute-group
execute if entity @s[tag=party_alive] run title @s actionbar {text:"-- All items SOLD --",bold:true,color:"dark_red"}
execute if entity @s[tag=party_alive] run function mr_b:sfx/item_sold
scoreboard players set @s mr_shop_player_currency 1000
scoreboard players reset @s mr_shop_item_set 


execute at @s if entity @s[tag=enchant_upgrade_active] run function mr_b:shop/enchant/upgrade_enchant/enchant_cleanse

attribute @s scale base reset
attribute @s knockback_resistance base reset


clear @s

advancement grant @s only mr_b:inventory_check

tag @s remove selling_all
tag @s remove has_ultimate
tag @s remove ultimate_ready
tag @s remove ultimate_active
tag @s remove has_armor
tag @s remove item_set_bought
tag @s remove hailstorm_used
tag @s remove steel_garden_used
tag @s remove null_command_used
tag @s remove lily_consumed
tag @s remove determination_active
tag @s remove determination_used

tag @s remove blade_call_user
tag @s remove guiding_wind_user
tag @s remove desc_user
tag @s remove castle_user
tag @s remove sanc_user
tag @s remove frost_touch_user
tag @s remove whirlwind_user
tag @s remove blunt_cut_user
tag @s remove hailstorm_user
tag @s remove steel_garden_user
tag @s remove null_command_user

tag @s remove class_dps
tag @s remove class_tank
tag @s remove class_support
tag @s remove class_freemix
tag @s remove class_rich

scoreboard players reset @a mr_ability_castle_count
scoreboard players reset @a mr_ability_castle_cd
scoreboard players reset @a mr_ability_frost_touch_cd_refresh
scoreboard players reset @a mr_ability_frost_touch_count
scoreboard players reset @a mr_ability_sanc_cd_count
scoreboard players reset @a mr_ability_sanc_cd
scoreboard players reset @a mr_ability_guide_kill
scoreboard players reset @a mr_ability_whirlwind_kill
scoreboard players reset @a mr_ability_blunt_kill

advancement revoke @s only mr_b:item_set_shop/item_set_1
advancement revoke @s only mr_b:item_set_shop/item_set_2
advancement revoke @s only mr_b:item_set_shop/item_set_3
advancement revoke @s only mr_b:item_set_shop/item_set_4
advancement revoke @s only mr_b:item_set_shop/item_set_5
advancement revoke @s only mr_b:item_set_shop/item_set_6
advancement revoke @s only mr_b:item_set_shop/item_set_7
advancement revoke @s only mr_b:item_set_shop/item_set_8
advancement revoke @s only mr_b:item_set_shop/item_set_9
advancement revoke @s only mr_b:item_set_shop/item_set_10

attribute @s fall_damage_multiplier base reset

function mr_b:shop/book_const