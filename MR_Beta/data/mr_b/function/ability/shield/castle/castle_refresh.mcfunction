
scoreboard players reset @s mr_ability_castle_cd
scoreboard players remove @s mr_ability_castle_count 1
give @s potion[potion_contents={custom_color:1670752},custom_name=[{"text":"Castle","italic":false}],max_stack_size=64,lore=[[{"text":"Use to quickly defend allies from far away."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
title @s actionbar [{text:"-- Castle Refreshed! --",color:"gold"}]
execute if score @s mr_ability_castle_count matches 1.. run scoreboard players set @s mr_ability_castle_cd 500