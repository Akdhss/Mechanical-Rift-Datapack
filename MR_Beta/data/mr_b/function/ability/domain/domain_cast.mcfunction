execute if entity @s[tag=domain_hailstorm] if score @s mr_domain_wind_up matches ..0 at @s run function mr_b:ability/domain/hailstorm/hailstorm_summon
execute if entity @s[tag=domain_hailstorm] run function mr_b:voiceline/domain_hailstorm

execute if entity @s[name=steel_garden] if score @s mr_domain_wind_up matches ..0 at @s run function mr_b:ability/domain/steel_garden/effect
execute if entity @s[name=steel_garden] run function mr_b:voiceline/domain_hailstorm

execute if entity @s[tag=domain_null_command] if score @s mr_domain_wind_up matches 1.. at @s run function mr_b:ability/domain/null_command/effect
execute if entity @s[tag=domain_null_command] if score @s mr_domain_wind_up matches ..0 at @s run function mr_b:ability/domain/null_command/expire