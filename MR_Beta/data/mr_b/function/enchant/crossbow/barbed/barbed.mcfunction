execute on attacker if entity @s[tag=mr_disarm] run return fail
tag @s add mr_bleed
scoreboard players set @s mr_effect_bleed_time 50
scoreboard players add @s mr_effect_bleed_stack 2