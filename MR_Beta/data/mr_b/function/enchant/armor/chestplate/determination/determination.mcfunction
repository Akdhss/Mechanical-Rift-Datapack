execute unless entity @s[scores={player_death=1..}] run return fail
execute if entity @s[tag=determination_used] run return fail


function mr_b:mechanics/active_death

tag @s remove party_dead
tag @s add party_alive

tag @s add determination_active
tag @s add link_ongoing




summon armor_stand ~ ~ ~ {CustomName:"determination",Tags:["link_ongoing"]}


scoreboard players add .global mr_special_enemy_mirror_link 1
scoreboard players operation @e[name=determination,tag=link_ongoing] mr_special_enemy_mirror_link = .global mr_special_enemy_mirror_link 
scoreboard players operation @a[tag=link_ongoing] mr_special_enemy_mirror_link = .global mr_special_enemy_mirror_link 
tag @e remove link_ongoing

tp @n[name=determination] ~ ~ ~ ~ ~



execute store result score .global global_random run random value 1..3

execute at @s if score .global global_random matches 1 run playsound mr_b:enchant/determination/dead1 player @a
execute at @s if score .global global_random matches 2 run playsound mr_b:enchant/determination/dead2 player @a
execute at @s if score .global global_random matches 3.. run stopsound @a master mr_b:player/generic/death/death1
execute at @s if score .global global_random matches 3.. run stopsound @a master mr_b:player/generic/death/death2
execute at @s if score .global global_random matches 3.. run stopsound @a master mr_b:player/generic/death/death3
execute at @s if score .global global_random matches 3.. run playsound mr_b:enchant/determination/dead3 player @a ~ ~ ~ 100


function mr_b:effect/cleanse/cleanse_effect



