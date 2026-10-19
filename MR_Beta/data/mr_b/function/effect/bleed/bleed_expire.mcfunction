scoreboard players reset @s mr_effect_bleed_stack
scoreboard players reset @s mr_effect_bleed_time
scoreboard players reset @s mr_effect_bleed_freq


posteffect remove @s[tag=mr_bleed] mr_b:effect/bleed/bleed_1
posteffect remove @s[tag=mr_bleed] mr_b:effect/bleed/bleed_2
posteffect remove @s[tag=mr_bleed] mr_b:effect/bleed/bleed_3
posteffect remove @s[tag=mr_bleed] mr_b:effect/bleed/bleed_4


tag @s remove mr_bleed
