

attribute @s movement_speed modifier remove stun_movement_speed
attribute @s jump_strength modifier remove stun_jump_strength
attribute @s attack_speed modifier remove stun_attack_speed
attribute @s attack_damage modifier remove stun_attack_damage
attribute @s entity_interaction_range modifier remove stun_entity_interaction_range
attribute @s block_interaction_range modifier remove stun_block_interaction_range



data merge entity @s {NoAI:0b,Silent:0b}

tag @s remove mr_stun
posteffect remove @s mr_b:effect/stun
scoreboard players set @s mr_effect_stun_time 0