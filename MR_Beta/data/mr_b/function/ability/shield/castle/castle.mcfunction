execute if entity @s[tag=silenced] run return fail
execute if score @s mr_ability_castle_time matches 1.. run return fail




tag @s add castle_rook

playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 0.9 0.6
playsound minecraft:block.anvil.place player @s ~ ~ ~ 0.6 0.8
playsound minecraft:entity.ravager.step player @s ~ ~ ~ 0.7 0.7

execute at @s anchored eyes run function mr_b:ability/shield/castle/castle_laser


scoreboard players reset .distance global_range
tag @s remove castle_rook
