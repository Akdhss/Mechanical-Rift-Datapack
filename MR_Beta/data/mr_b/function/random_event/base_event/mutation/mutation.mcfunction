tag @e[tag=wave_mob,tag=!mutated,limit=5,tag=!boss,type=!player,tag=!relife,tag=!disappeared] add mutated
execute as @e[tag=wave_mob,tag=mutated] run attribute @s scale base set 1.25
execute if score @s mr_difficulty matches 1..2 as @e[tag=wave_mob,tag=mutated] run attribute @s attack_damage modifier add attack_damage .5 add_multiplied_total
execute if score @s mr_difficulty matches 1..2 as @e[tag=wave_mob,tag=mutated] run attribute @s attack_speed modifier add attack_speed .5 add_multiplied_total
execute if score @s mr_difficulty matches 1..2 as @e[tag=wave_mob,tag=mutated] run attribute @s movement_speed modifier add movement_speed .35 add_multiplied_total
execute if score @s mr_difficulty matches 3..4 as @e[tag=wave_mob,tag=mutated] run attribute @s attack_damage modifier add attack_damage 1.2 add_multiplied_total
execute if score @s mr_difficulty matches 3..4 as @e[tag=wave_mob,tag=mutated] run attribute @s attack_speed modifier add attack_speed 1.2 add_multiplied_total
execute if score @s mr_difficulty matches 3..4 as @e[tag=wave_mob,tag=mutated] run attribute @s movement_speed modifier add movement_speed .75 add_multiplied_total
item replace entity @e[tag=wave_mob,tag=mutated] weapon.offhand with shield