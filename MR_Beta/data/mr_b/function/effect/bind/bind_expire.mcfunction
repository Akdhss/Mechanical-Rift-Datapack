attribute @s movement_speed modifier remove bind_movement_speed
attribute @s jump_strength base reset

tag @s remove mr_bind
posteffect remove @s mr_b:effect/bind
scoreboard players set @s mr_effect_bind_time 0

