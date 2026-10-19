scoreboard players remove @s mr_effect_bleed_time 1
scoreboard players add @s mr_effect_bleed_freq 1 

execute if score @s mr_effect_bleed_stack matches ..3 run posteffect add @s[tag=mr_bleed] mr_b:effect/bleed/bleed_1
execute if score @s mr_effect_bleed_stack matches 4..7 run posteffect add @s[tag=mr_bleed] mr_b:effect/bleed/bleed_2
execute if score @s mr_effect_bleed_stack matches 8..11 run posteffect add @s[tag=mr_bleed] mr_b:effect/bleed/bleed_3
execute if score @s mr_effect_bleed_stack matches 12.. run posteffect add @s[tag=mr_bleed] mr_b:effect/bleed/bleed_4


execute unless score @s mr_effect_bleed_stack matches ..3 run posteffect remove @s[tag=mr_bleed] mr_b:effect/bleed/bleed_1
execute unless score @s mr_effect_bleed_stack matches 4..7 run posteffect remove @s[tag=mr_bleed] mr_b:effect/bleed/bleed_2
execute unless score @s mr_effect_bleed_stack matches 8..11 run posteffect remove @s[tag=mr_bleed] mr_b:effect/bleed/bleed_3
execute unless score @s mr_effect_bleed_stack matches 12.. run posteffect remove @s[tag=mr_bleed] mr_b:effect/bleed/bleed_4


execute store result bossbar bleed_effect value run scoreboard players get @s mr_effect_bleed_time
title @s actionbar [{text:"Bleed Stacks: ",bold:true,color:"red"},{text:"[ ",bold:true,color:"red"},{score:{name:"@s",objective:"mr_effect_bleed_stack"},color:"dark_red"},{text:"x ",bold:true,color:"dark_red"},{text:"]",bold:true,color:"red"}]

execute at @s if score @s mr_effect_bleed_time matches 1.. if score @s mr_effect_bleed_freq matches 30.. if score @s mr_effect_bleed_stack matches 1.. run function mr_b:effect/bleed/bleed_success
execute unless score @s mr_effect_bleed_stack matches 1.. run function mr_b:effect/bleed/bleed_expire