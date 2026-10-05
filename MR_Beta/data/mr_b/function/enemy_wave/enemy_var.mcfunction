execute if score @s mr_difficulty matches 1 run function mr_b:enemy_wave/wave/easy
execute if score @s mr_difficulty matches 2 run function mr_b:enemy_wave/wave/normal
execute if score @s mr_difficulty matches 3 run function mr_b:enemy_wave/wave/hard
execute if score @s mr_difficulty matches 4 run function mr_b:enemy_wave/wave/lunatic

execute if score @s mr_difficulty matches ..2 as @e[type=iron_golem,tag=mr_unassigned] run attribute @s max_health base set 25
execute if score @s mr_difficulty matches 3 as @e[type=iron_golem,tag=mr_unassigned] run attribute @s max_health base set 35
execute if score @s mr_difficulty matches 4 as @e[type=iron_golem,tag=mr_unassigned] run attribute @s max_health base set 50

execute if score @s mr_difficulty matches ..2 as @e[type=iron_golem,tag=mr_unassigned] run attribute @s attack_damage modifier add golem_attack_damage -0.6 add_multiplied_base
execute if score @s mr_difficulty matches 3 as @e[type=iron_golem,tag=mr_unassigned] run attribute @s attack_damage modifier add golem_attack_damage -0.3 add_multiplied_base

execute as @e[tag=mr_unassigned] run data modify entity @s last_hurt_by_mob set from entity @r[team=rift_party] UUID


tag @e[type=zombie] add undead
tag @e[type=skeleton] add undead
tag @e[type=husk] add undead
tag @e[type=parched] add undead
tag @e[type=stray] add undead
