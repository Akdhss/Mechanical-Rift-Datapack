
scoreboard players reset @s mr_ability_frost_touch_cd_refresh
scoreboard players remove @s mr_ability_frost_touch_count 1
give @s potion[potion_contents={custom_color:122836},custom_name=[{"text":"Frost Touch","italic":false}],max_stack_size=64,lore=[[{"text":"Use to send out a mist of icy wind."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
title @s actionbar [{text:"-- Frost Touch Refreshed! --",color:"gold"}]
execute if score @s mr_ability_frost_touch_count matches 1.. run scoreboard players set @s mr_ability_frost_touch_cd_refresh 100