

effect clear @s resistance

attribute @s max_health modifier remove determination_max_health
attribute @s attack_damage modifier remove determination_attack_damage
attribute @s knockback_resistance modifier remove determination_max_health
attribute @s explosion_knockback_resistance modifier remove determination_max_health

tag @s add determination_used
tag @s remove determination_active
scoreboard players reset @s mr_enchant_determination_time
kill @s
scoreboard players reset @s player_death

function mr_b:mechanics/active_death