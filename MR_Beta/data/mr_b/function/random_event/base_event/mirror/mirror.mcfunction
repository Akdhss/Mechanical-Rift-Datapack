summon husk ~ ~ ~ {PersistenceRequired:1b,CustomName:"Mirror",Silent:1b,active_effects:[{id:invisibility,duration:999999999,show_particles:0b}],Tags:["clone_link","wave_mob","mr_unassigned","pathing_mob"],attributes:[{id:max_health,base:30f}]}
summon minecraft:mannequin ~ ~ ~ {profile:"@r",CustomName:"mirror_face",Tags:["clone_link","wave_mob"],attributes:[{id:max_health,base:30f}]}

#execute as @e[name=mirror_face,tag=clone_link] run data modify storage mr_b:mirror copy.equipment set from entity @s equipment


execute as @e[tag=clone_link] run data modify entity @s Health set value 10000f

execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 3.. run tag @e[name=mirror_face] add camo_ranged

execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 1..2 run effect give @e[name=Mirror] speed infinite 0 true
execute if score @e[limit=1,name=player_spawn] mr_difficulty matches 3..4 run effect give @e[name=Mirror] speed infinite 1 true

data merge entity @s {equipment:{head:{id:netherite_chestplate}}}

scoreboard players add .global mr_special_enemy_mirror_link 1
scoreboard players operation @e[name=Mirror,tag=clone_link] mr_special_enemy_mirror_link = .global mr_special_enemy_mirror_link 
scoreboard players operation @e[name=mirror_face,tag=clone_link] mr_special_enemy_mirror_link = .global mr_special_enemy_mirror_link 
tag @e remove clone_link


execute store result score @e[tag=mr_unassigned] mr_wave_loc_random run random value 1..4
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4
execute as @e[tag=mr_unassigned] run function mr_b:enemy_wave/enemy_loc

