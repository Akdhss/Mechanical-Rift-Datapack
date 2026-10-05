execute if entity @s[tag=silenced] run return fail

execute if entity @s[tag=casting_domain] run return fail

tag @s add domain_null_command
tag @s add casting_domain
tag @s add null_command_used

tag @s remove ultimate_ready

attribute @s attack_damage modifier add null_command_ad_boost 1 add_multiplied_base
attribute @s movement_speed modifier add null_command_mvspd_boost .5 add_multiplied_base
attribute @s attack_speed modifier add null_command_as_boost 1 add_multiplied_base
attribute @s movement_efficiency modifier add null_command_me_boost .5 add_multiplied_base

effect give @s slowness 1 4 true

scoreboard players set @s mr_ability_null_command_cd 1800

scoreboard players set @s mr_ability_null_command_pulse 19

scoreboard players set @s mr_domain_wind_up 270

tag @s add null_command_start


execute if score @s mr_domain_wind_up matches 270 at @s run playsound mr_b:skill/null_command/null_cast master @a ~ ~ ~ 500

clear @s potion[potion_contents={custom_color:50636}] 1

