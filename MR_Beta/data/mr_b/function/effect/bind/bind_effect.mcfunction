attribute @s movement_speed modifier add bind_movement_speed -1 add_multiplied_total
attribute @s jump_strength base set 0
scoreboard players remove @s mr_effect_bind_time 1
execute if score @s mr_effect_bind_time matches ..0 run function mr_b:effect/bind/bind_expire

execute store result bossbar bind_effect value run scoreboard players get @s mr_effect_bind_time
execute at @s if block ~ ~-.05 ~ air run tag @s add mr_ground

posteffect add @s[tag=mr_bind] mr_b:effect/bind

particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.5 ~0.25 ~0 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.46 ~0.25 ~0.19 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.35 ~0.25 ~0.35 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.19 ~0.25 ~0.46 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0 ~0.25 ~0.5 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.19 ~0.25 ~0.46 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.35 ~0.25 ~0.35 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.46 ~0.25 ~0.19 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.5 ~0.25 ~0 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.46 ~0.25 ~-0.19 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.35 ~0.25 ~-0.35 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.19 ~0.25 ~-0.46 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0 ~0.25 ~-0.5 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.19 ~0.25 ~-0.46 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.35 ~0.25 ~-0.35 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.46 ~0.25 ~-0.19 0 0 0 0 1


particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.75 ~ ~0 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.69 ~ ~0.29 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.53 ~ ~0.53 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.29 ~ ~0.69 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0 ~ ~0.75 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.29 ~ ~0.69 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.53 ~ ~0.53 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.69 ~ ~0.29 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.75 ~ ~0 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.69 ~ ~-0.29 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.53 ~ ~-0.53 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~-0.29 ~ ~-0.69 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0 ~ ~-0.75 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.29 ~ ~-0.69 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.53 ~ ~-0.53 0 0 0 0 1
particle dust_color_transition{from_color:[0.0,0.71,0.8],to_color:[0.0,0.53,0.7],scale:0.75} ~0.69 ~ ~-0.29 0 0 0 0 1