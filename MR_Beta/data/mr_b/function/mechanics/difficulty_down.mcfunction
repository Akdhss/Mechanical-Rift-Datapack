execute unless entity @s run return fail
execute if entity @s[tag=wave_starting] run return fail
execute if entity @s[tag=run_ongoing] run return fail
execute if score @s mr_difficulty matches ..1 run tellraw @a[team=rift_party] {text:"--  Difficulty cannot be lowered further! --",bold:true,color:"gold"}
execute if score @s mr_difficulty matches ..1 run return fail
scoreboard players reset @s mr_wave_dlc
scoreboard players remove @s mr_difficulty 1
tellraw @a[team=rift_party] {text:"-- Lowering Difficulty!  --",bold:true,color:"green"}
function mr_b:mechanics/diff_title