execute if score @s mr_domain_wind_up matches ..240 run scoreboard players add @s mr_ability_null_command_dr 1
execute if score @s mr_ability_null_command_dr matches ..60 run return fail


execute if score @s mr_ability_null_command_dr matches ..61 run tag @s remove null_command_start

execute if score @s mr_ability_null_command_dr matches ..61 run scoreboard players set @s mr_ability_null_command_pulse 10


execute if score @s mr_ability_null_command_dr matches ..61 at @s run playsound mr_b:skill/null_command/null_pulse master @a

scoreboard players reset @s mr_ability_null_command_dr

#execute on attacker as @e[distance=..3.5,team=rift_enemy,limit=5] run tag @s add mr_disarm
#execute on attacker as @e[distance=..3.5,team=rift_enemy,limit=5] if score @s mr_effect_disarm_time matches ..100 run scoreboard players set @s mr_effect_disarm_time 100







