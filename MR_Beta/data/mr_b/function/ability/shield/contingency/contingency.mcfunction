execute if entity @s[tag=silenced] run return fail
execute if score @s mr_ability_contingency_cd matches 1.. run return fail
execute if entity @s[tag=silenced] run return fail
clear @s potion[max_stack_size=64,potion_contents={custom_color:8782047}] 1

scoreboard players set @s mr_ability_contingency_cd 30
playsound mr_b:skill/contingency/cast master @a ~ ~ ~

summon marker ~ ~ ~ {CustomName:"contingency"}