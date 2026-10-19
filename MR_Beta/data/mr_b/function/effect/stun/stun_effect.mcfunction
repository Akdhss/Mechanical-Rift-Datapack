attribute @s movement_speed modifier add stun_movement_speed -1 add_multiplied_total
attribute @s jump_strength modifier add stun_jump_strength -1 add_multiplied_total

posteffect add @s[tag=mr_stun] mr_b:effect/stun

data merge entity @s {NoAI:1b,Silent:1b}


tag @s add silenced
tag @s add mr_disarm

scoreboard players remove @s mr_effect_stun_time 1

execute if score @s mr_effect_stun_time > @s mr_effect_silence_time run scoreboard players operation @s mr_effect_silence_time = @s mr_effect_stun_time
execute if score @s mr_effect_stun_time > @s mr_effect_disarm_time run scoreboard players operation @s mr_effect_disarm_time = @s mr_effect_stun_time
execute if score @s mr_effect_stun_time matches ..0 run function mr_b:effect/stun/stun_expire


execute store result bossbar stun_effect value run scoreboard players get @s mr_effect_stun_time




particle dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.75} ~0.500 ~1.95 ~0.000 0 0 0 0 1 force
particle dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.75} ~0.354 ~1.95 ~0.354 0 0 0 0 1 force
particle dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.75} ~0.000 ~1.95 ~0.500 0 0 0 0 1 force
particle dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.75} ~-0.354 ~1.95 ~0.354 0 0 0 0 1 force
particle dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.75} ~-0.500 ~1.95 ~0.000 0 0 0 0 1 force
particle dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.75} ~-0.354 ~1.95 ~-0.354 0 0 0 0 1 force
particle dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.75} ~0.000 ~1.95 ~-0.500 0 0 0 0 1 force
particle dust_color_transition{from_color:[1.0,0.83,0.22],to_color:[0.7,0.61,0.0],scale:0.75} ~0.354 ~1.95 ~-0.354 0 0 0 0 1 force