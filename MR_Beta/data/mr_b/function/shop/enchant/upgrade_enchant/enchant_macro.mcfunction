$execute if items entity @s weapon.mainhand paper[custom_data={enchant:"$(enchant)"}] run tag @s add enchant_$(enchant)
$execute if items entity @s weapon.mainhand paper[custom_data={enchant:"$(enchant)"}] run clear @s paper[custom_data={enchant:"$(enchant)"}] 1


execute unless entity @s[tag=!enchant_collector,tag=!enchant_loudmouth,tag=!enchant_adrenaline] run tag @s add auto_apply_enchantment_head

execute unless entity @s[tag=!enchant_hail_mary,tag=!enchant_lily,tag=!enchant_overtime,tag=!enchant_survivor,tag=!enchant_radiance,tag=!enchant_gold_plating,tag=!enchant_sturdy_body,tag=!enchant_last_stand] run tag @s add auto_apply_enchantment_chest

execute unless entity @s[tag=!enchant_season,tag=!enchant_defeatist] run tag @s add auto_apply_enchantment_legs

execute unless entity @s[tag=!enchant_cloudstep,tag=!enchant_wind_bolt,tag=!enchant_agile] run tag @s add auto_apply_enchantment_feet


execute unless entity @s[tag=!auto_apply_enchantment_head,tag=!auto_apply_enchantment_chest,tag=!auto_apply_enchantment_legs,tag=!auto_apply_enchantment_feet] run function mr_b:shop/enchant/enchant_apply/auto_apply