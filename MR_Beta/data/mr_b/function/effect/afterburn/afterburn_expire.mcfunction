# warn-off-file execute-group
tag @s remove mr_afterburn
scoreboard players set @s mr_effect_afterburn_stack 0
scoreboard players set @s mr_effect_afterburn_time 0

execute store result storage mr_b:afterburn afterburn_stack double -0.05 run scoreboard players get @s mr_effect_afterburn_stack
function mr_b:effect/afterburn/afterburn_hp with storage mr_b:afterburn