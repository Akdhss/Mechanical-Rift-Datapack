
attribute @s attack_damage modifier remove disarm_attack_damage
attribute @s entity_interaction_range modifier remove disarm_entity_interaction_range
attribute @s block_interaction_range modifier remove disarm_block_interaction_range

data merge entity @s[type=creeper] {ExplosionRadius:3}



tag @s remove mr_disarm
scoreboard players set @s mr_effect_disarm_time 0