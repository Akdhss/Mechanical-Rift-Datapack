attribute @s movement_speed modifier remove movement_speed
attribute @s jump_strength modifier remove jump_strength
attribute @s attack_speed modifier remove attack_speed

posteffect remove @s[tag=!mr_freeze] mr_b:effect/cold
posteffect remove @s[tag=!mr_freeze] mr_b:effect/freeze
tag @s remove mr_cold
scoreboard players set @s mr_effect_cold_time 0
scoreboard players reset @s mr_effect_cold_stack