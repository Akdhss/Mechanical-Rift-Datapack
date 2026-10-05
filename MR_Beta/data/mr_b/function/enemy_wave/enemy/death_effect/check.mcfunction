# warn-off-file target-selector-no-type
# warn-off-file execute-group

execute if score @s mr_enemy_death_check matches 1 run return fail
execute if entity @s[tag=silenced] run return fail




tag @s add death_effect_check


execute at @s[type=husk] unless entity @e[distance=..0.1,limit=1,tag=death_effect_check] run summon armor_stand
execute at @s[type=creeper] unless entity @e[distance=..0.1,limit=1,tag=death_effect_check] run function mr_b:enemy_wave/enemy/death_effect/creeper


execute at @s unless entity @e[distance=..0.1,limit=1,tag=death_effect_check] run scoreboard players set @s mr_enemy_death_check 1
tag @s remove death_effect_check

