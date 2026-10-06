effect give @s slowness 2 1 true
tag @s add mr_bleed
scoreboard players set @s mr_effect_bleed_time 50
scoreboard players add @s mr_effect_bleed_stack 1
title @s actionbar {text:"-- OUTSIDE THE STORM --",bold:true,color:"red"}
scoreboard players set @s mr_obj_storm_effect 15
tag @s add storm_affected