


execute if score @s mr_effect_afterburn_time matches ..50 unless score @s mr_effect_afterburn_stack matches 1.. run function mr_b:effect/afterburn/afterburn_expire

scoreboard players remove @s mr_effect_afterburn_time 1
execute if score @s mr_effect_afterburn_cd matches 10.. run function mr_b:effect/afterburn/afterburn_apply


execute if score @s mr_effect_afterburn_time matches ..0 if score @s mr_effect_afterburn_stack matches 1.. run function mr_b:effect/afterburn/afterburn_decay
execute if score @s mr_effect_afterburn_time matches ..0 unless score @s mr_effect_afterburn_stack matches 1.. run function mr_b:effect/afterburn/afterburn_expire



execute store result bossbar afterburn_effect value run scoreboard players get @s mr_effect_afterburn_time


