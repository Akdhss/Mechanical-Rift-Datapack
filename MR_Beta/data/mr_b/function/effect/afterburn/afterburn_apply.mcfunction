


scoreboard players set @s mr_effect_afterburn_cd 0
execute unless score @s mr_effect_afterburn_stack matches 10.. run scoreboard players add @s mr_effect_afterburn_stack 1
execute if score @s mr_effect_afterburn_stack matches 11.. run scoreboard players set @s mr_effect_afterburn_stack 10
posteffect add @s[tag=mr_afterburn] mr_b:effect/afterburn

execute store result storage mr_b:afterburn afterburn_stack double -0.05 run scoreboard players get @s mr_effect_afterburn_stack
function mr_b:effect/afterburn/afterburn_hp with storage mr_b:afterburn
