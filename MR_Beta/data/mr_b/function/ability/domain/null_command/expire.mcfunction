execute at @s as @e[distance=..20,team=rift_enemy] run tag @s add silenced
execute at @s as @e[distance=..20,team=rift_enemy] if score @s mr_effect_silence_time matches ..100 run scoreboard players set @s mr_effect_silence_time 100


execute as @a[distance=..20,tag=silenced] store result bossbar silence_effect max run scoreboard players get @s mr_effect_silence_time

scoreboard players reset @s mr_ability_null_command_dr

scoreboard players set @s mr_ability_null_command_pulse 10

playsound mr_b:skill/null_command/null_end master @a

#execute on attacker as @e[distance=..3.5,team=rift_enemy,limit=5] run tag @s add mr_disarm
#execute on attacker as @e[distance=..3.5,team=rift_enemy,limit=5] if score @s mr_effect_disarm_time matches ..100 run scoreboard players set @s mr_effect_disarm_time 100

attribute @s attack_damage modifier remove null_command_ad_boost
attribute @s movement_speed modifier remove null_command_mvspd_boost
attribute @s attack_speed modifier remove null_command_as_boost
attribute @s movement_efficiency modifier remove null_command_me_boost





tag @s remove domain_null_command
tag @s remove casting_domain