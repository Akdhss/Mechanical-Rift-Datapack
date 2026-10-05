# warn-off-file execute-group
execute if score @s mr_special_enemy_spearman_charge matches 1 as @a[team=rift_party] at @s run playsound mr_b:enemy/spearman/spearman_engage master @s ~ ~ ~
execute if score @s mr_special_enemy_spearman_charge matches 80..81 as @a[team=rift_party] at @s run playsound mr_b:enemy/spearman/spearman_charge master @s ~ ~ ~

execute unless score @s mr_special_enemy_spearman_charge matches 82.. run scoreboard players add @s mr_special_enemy_spearman_charge 1
execute unless entity @s[tag=spearman_charging] run particle dust_plume ~ ~2 ~
execute if entity @s[tag=spearman_charging] run particle witch ~ ~2 ~
attribute @s movement_speed modifier add spearman_charge -99 add_multiplied_base

execute if score @s mr_special_enemy_spearman_charge matches 82 run attribute @s movement_speed modifier remove spearman_charge

execute if score @s mr_special_enemy_spearman_charge matches ..80 run return fail
execute if score @s mr_special_enemy_spearman_charge matches 82 run return fail


tag @s add spearman_charging

attribute @s movement_speed modifier add spearman_mvspd_base 1 add_multiplied_base



item replace entity @s weapon.mainhand with iron_spear[kinetic_weapon={delay_ticks:10,contact_cooldown_ticks:10,forward_movement:0.0,damage_multiplier:1.0,dismount_conditions:{max_duration_ticks:9999,min_speed:0,min_relative_speed:0},knockback_conditions:{max_duration_ticks:9999,min_speed:0,min_relative_speed:0},damage_conditions:{max_duration_ticks:9999,min_speed:0,min_relative_speed:0}}] 1
