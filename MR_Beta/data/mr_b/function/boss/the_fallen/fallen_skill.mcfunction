scoreboard players set @s[tag=collapse_ready] mr_fallen_skill_random 2

execute if score @e[name=player_spawn,limit=1] mr_difficulty matches ..2 run scoreboard players set @s[tag=!collapse_ready] mr_fallen_skill_random 2

execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 3.. store result score @s[tag=!collapse_ready] mr_fallen_skill_random run random value 2..3


execute at @s if entity @e[team=rift_party,distance=..3] run scoreboard players set @s mr_fallen_skill_random 1
#execute at @s unless entity @e[team=rift_party,distance=..15] run scoreboard players set @s mr_fallen_skill_random 3


execute at @s run function mr_b:boss/the_fallen/sfx/skill_wind_up


scoreboard players reset @s mr_fallen_skill_cd
execute at @s if score @s mr_fallen_skill_random matches 1 run function mr_b:boss/the_fallen/fallen_sl_skill
execute if score @s mr_fallen_skill_random matches 2 run function mr_b:boss/the_fallen/fallen_fs_skill
execute if score @s mr_fallen_skill_random matches 3 anchored eyes run function mr_b:boss/the_fallen/dismantle/summon

scoreboard players reset @s mr_fallen_skill_random

