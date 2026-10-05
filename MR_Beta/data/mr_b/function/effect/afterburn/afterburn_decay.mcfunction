

scoreboard players set @s mr_effect_afterburn_time 10
scoreboard players remove @s mr_effect_afterburn_stack 1
execute store result bossbar afterburn_effect max run scoreboard players get @s mr_effect_afterburn_time

execute store result storage mr_b:afterburn afterburn_stack double -0.05 run scoreboard players get @s mr_effect_afterburn_stack
function mr_b:effect/afterburn/afterburn_hp with storage mr_b:afterburn

