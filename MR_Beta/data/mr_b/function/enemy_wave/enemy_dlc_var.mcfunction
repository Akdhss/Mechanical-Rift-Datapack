execute store success score @s mr_enemy_special_limit if entity @e[type=piglin_brute] if score @s mr_enemy_special_limit matches 1.. run execute store result score @s mr_wave_enemy_random run random value 1..7

execute if score @s mr_wave_enemy_random matches 1 run summon piglin ~ ~20 ~ {PersistenceRequired:1b,Tags:["mr_unassigned"],IsImmuneToZombification:1b,equipment:{mainhand:{id:iron_sword}}}
execute if score @s mr_wave_enemy_random matches 2 run summon piglin ~ ~20 ~ {PersistenceRequired:1b,Tags:["mr_unassigned"],IsImmuneToZombification:1b,equipment:{mainhand:{id:iron_sword}}}
execute if score @s mr_wave_enemy_random matches 3 run summon piglin ~ ~20 ~ {PersistenceRequired:1b,Tags:["mr_unassigned"],IsImmuneToZombification:1b,equipment:{mainhand:{id:wooden_spear}}}
execute if score @s mr_wave_enemy_random matches 4 run summon piglin ~ ~20 ~ {PersistenceRequired:1b,Tags:["mr_unassigned"],IsImmuneToZombification:1b,equipment:{mainhand:{id:crossbow}}}

enchant @e[tag=mr_unassigned] quick_charge 2

execute if score @s mr_wave_enemy_random matches 5 run summon blaze ~ ~20 ~ {PersistenceRequired:1b,Tags:["mr_unassigned"]}
execute if score @s mr_wave_enemy_random matches 6 run summon blaze ~ ~20 ~ {PersistenceRequired:1b,Tags:["mr_unassigned"]}
execute if score @s mr_wave_enemy_random matches 7 run summon magma_cube ~ ~20 ~ {PersistenceRequired:1b,Tags:["mr_unassigned"],Size:2}

execute if score @s mr_wave_enemy_random matches 8 run summon piglin_brute ~ ~20 ~ {PersistenceRequired:1b,Tags:["mr_unassigned"],IsImmuneToZombification:1b,equipment:{mainhand:{id:wooden_axe}}}


execute if score @s mr_difficulty matches ..2 as @e[type=piglin_brute,tag=mr_unassigned] run attribute @s max_health base set 20
execute if score @s mr_difficulty matches 3 as @e[type=piglin_brute,tag=mr_unassigned] run attribute @s max_health base set 30
execute if score @s mr_difficulty matches 4 as @e[type=piglin_brute,tag=mr_unassigned] run attribute @s max_health base set 40

execute if score @s mr_difficulty matches ..2 as @e[type=piglin_brute,tag=mr_unassigned] run attribute @s attack_damage modifier add brute_attack_damage -0.6 add_multiplied_base
execute if score @s mr_difficulty matches 3 as @e[type=piglin_brute,tag=mr_unassigned] run attribute @s attack_damage modifier add brute_attack_damage -0.3 add_multiplied_base

enchant @e[tag=mr_unassigned] unbreaking 4

tag @e[type=zombie] add undead
tag @e[type=skeleton] add undead
tag @e[type=husk] add undead
tag @e[type=parched] add undead
tag @e[type=stray] add undead
