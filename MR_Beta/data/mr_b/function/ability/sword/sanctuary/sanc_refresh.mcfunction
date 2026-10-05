
scoreboard players reset @s mr_ability_sanc_cd
scoreboard players remove @s mr_ability_sanc_cd_count 1
give @s potion[potion_contents={custom_color:15300635},custom_name=[{"text":"Comet Fall","italic":false}],max_stack_size=64,lore=[[{"text":"Use to call upon the blessing of the sun."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
title @s actionbar [{text:"-- Comet Fall Refreshed! --",color:"gold"}]
execute if score @s mr_ability_sanc_cd_count matches 1.. run scoreboard players set @s mr_ability_sanc_cd 500