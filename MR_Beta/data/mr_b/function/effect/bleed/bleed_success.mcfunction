#function mr_b:sfx/effect/shatter/shatter

execute store result storage mr_b:effect bleed.mob float 2.5 run scoreboard players get @s mr_effect_bleed_stack
execute store result storage mr_b:effect bleed.player float .75 run scoreboard players get @s mr_effect_bleed_stack

function mr_b:effect/bleed/bleed_macro with storage mr_b:effect bleed

scoreboard players remove @s mr_effect_bleed_stack 1
scoreboard players set @s mr_effect_bleed_time 31
scoreboard players reset @s mr_effect_bleed_freq
tag @s add bleed_hit
bossbar set bleed_effect max 25