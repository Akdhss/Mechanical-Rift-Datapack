

execute if score @s mr_player_shield_use matches 1 unless score @s mr_player_shield_hold matches ..15 run return fail


execute on attacker at @s as @e[distance=..3.5,team=rift_enemy] run tag @s add mr_disarm
execute on attacker at @s as @e[distance=..3.5,team=rift_enemy] if score @s mr_effect_disarm_time matches ..100 run scoreboard players set @s mr_effect_disarm_time 100
execute on attacker store result bossbar disarm_effect max run scoreboard players get @s mr_effect_disarm_time


effect give @s speed 5 2 true
effect give @s resistance 5 2 true
effect give @s absorption 5 1 true

execute store result bossbar disarm_effect max run scoreboard players get @s mr_effect_disarm_time