scoreboard players remove @s mr_effect_bleed_time 1
scoreboard players add @s mr_effect_bleed_freq 1 

execute store result bossbar bleed_effect value run scoreboard players get @s mr_effect_bleed_time
title @s actionbar [{text:"Bleed Stacks: ",bold:true,color:"red"},{text:"[ ",bold:true,color:"red"},{score:{name:"@s",objective:"mr_effect_bleed_stack"},color:"dark_red"},{text:"x ",bold:true,color:"dark_red"},{text:"]",bold:true,color:"red"}]

execute at @s if score @s mr_effect_bleed_time matches 1.. if score @s mr_effect_bleed_freq matches 30.. if score @s mr_effect_bleed_stack matches 1.. run function mr_b:effect/bleed/bleed_success
execute unless score @s mr_effect_bleed_stack matches 1.. run function mr_b:effect/bleed/bleed_expire