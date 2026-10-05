scoreboard players remove @s mr_effect_cold_time 1
data merge entity @s {NoAI:1b,Silent:1b}
execute store result bossbar freeze_effect value run scoreboard players get @s mr_effect_cold_time
execute as @s[tag=mr_freeze] run return fail

execute at @s run function mr_b:sfx/effect/freeze/freeze

attribute @s movement_speed modifier remove movement_speed
attribute @s jump_strength modifier remove jump_strength
attribute @s attack_speed modifier remove attack_speed




attribute @s movement_speed modifier add movement_speed -1 add_multiplied_total
attribute @s jump_strength modifier add jump_strength -1 add_multiplied_total
attribute @s attack_speed modifier add attack_speed -1 add_multiplied_total


execute if entity @s[tag=!mr_freeze] run function mr_b:effect/freeze/freeze_link

tag @s add mr_freeze



