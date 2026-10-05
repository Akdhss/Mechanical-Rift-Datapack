tag @s add silenced

execute store result bossbar silence_effect value run scoreboard players get @s mr_effect_silence_time

scoreboard players remove @s mr_effect_silence_time 1

execute if score @s mr_effect_silence_time matches ..0 run function mr_b:effect/silence/silence_expire