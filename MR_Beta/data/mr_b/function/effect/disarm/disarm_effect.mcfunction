
attribute @s attack_damage modifier add disarm_attack_damage -10 add_multiplied_total
attribute @s entity_interaction_range modifier add disarm_entity_interaction_range -100 add_multiplied_total
attribute @s block_interaction_range modifier add disarm_block_interaction_range -100 add_multiplied_total


data merge entity @s[type=creeper] {ExplosionRadius:0}

scoreboard players remove @s mr_effect_disarm_time 1
execute if score @s mr_effect_disarm_time matches ..0 run function mr_b:effect/disarm/disarm_expire

execute store result bossbar disarm_effect value run scoreboard players get @s mr_effect_disarm_time




particle minecraft:sulfur_cube_goo ~ ~1 ~ .3 .5 .3 0 1
particle minecraft:infested ~ ~1 ~ .3 .5 .3 0 1