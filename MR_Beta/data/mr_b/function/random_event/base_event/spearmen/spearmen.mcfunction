# warn-off-file target-selector-no-dimension
# warn-off-file target-selector-no-type
# warn-off-file execute-group
execute as @e[name=player_spawn,distance=0..] at @s run summon zombie ~ ~ ~ {PersistenceRequired:1b,Tags:["wave_mob","spearman","pathing_mob","landing","mr_unassigned"], equipment:{mainhand:{id:iron_spear},head:{id:stone_button},chest:{id:iron_chestplate}}}

execute as @e[tag=spearman,tag=mr_unassigned] run attribute @s max_health base set 40
execute as @e[tag=spearman,tag=mr_unassigned] run data modify entity @s Health set value 10000f


kill @e[distance=0..,type=area_effect_cloud]
effect give @e[tag=wave_mob,tag=landing,distance=0..,type=zombie] resistance infinite 1 true

execute as @e[tag=spearman,tag=mr_unassigned] run item replace entity @s weapon.mainhand with iron_spear[kinetic_weapon={delay_ticks:10,contact_cooldown_ticks:10,forward_movement:0.0,damage_multiplier:1.0,dismount_conditions:{max_duration_ticks:9999,min_speed:0,min_relative_speed:0},knockback_conditions:{max_duration_ticks:9999,min_speed:0,min_relative_speed:0},damage_conditions:{max_duration_ticks:9999,min_speed:0,min_relative_speed:0}}] 1


execute store result score @e[tag=mr_unassigned,distance=0..] mr_wave_loc_random run random value 1..4
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4
execute as @e[tag=mr_unassigned,distance=0..] run function mr_b:enemy_wave/enemy_loc