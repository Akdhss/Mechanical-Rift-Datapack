# warn-off-file target-selector-no-type
# warn-off-file execute-group
execute if score @s mr_ability_null_command_pulse matches 1.. run scoreboard players remove @s mr_ability_null_command_pulse 1

execute at @s if score @s mr_ability_null_command_pulse matches 9 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_0
execute at @s if score @s mr_ability_null_command_pulse matches 8 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_1
execute at @s if score @s mr_ability_null_command_pulse matches 7 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_2
execute at @s if score @s mr_ability_null_command_pulse matches 6 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_3
execute at @s if score @s mr_ability_null_command_pulse matches 5 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_4
execute at @s if score @s mr_ability_null_command_pulse matches 4 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_5
execute at @s if score @s mr_ability_null_command_pulse matches 3 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_6
execute at @s if score @s mr_ability_null_command_pulse matches 2 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_7
execute at @s if score @s mr_ability_null_command_pulse matches 1 positioned ~ ~1 ~ run function mr_b:ability/domain/null_command/pulse/frame_8

execute if score @s mr_ability_null_command_pulse matches 10.. run return fail


execute at @s as @e[distance=..20,team=rift_enemy] run tag @s add silenced
execute at @s as @e[distance=..20,team=rift_enemy] if score @s mr_effect_silence_time matches ..61 run scoreboard players set @s mr_effect_silence_time 61
execute as @a[distance=..20,tag=silenced] store result bossbar silence_effect max run scoreboard players get @s mr_effect_silence_time


 