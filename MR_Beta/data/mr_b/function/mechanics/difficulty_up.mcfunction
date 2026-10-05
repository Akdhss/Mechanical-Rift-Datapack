execute unless entity @s run return fail
execute if entity @s[tag=wave_starting] run return fail
execute if entity @s[tag=run_ongoing] run return fail
execute if score @s mr_difficulty matches 4.. run scoreboard players reset @s mr_difficulty

scoreboard players add @s mr_difficulty 1
function mr_b:mechanics/diff_title