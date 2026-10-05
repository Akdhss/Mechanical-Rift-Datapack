
tag @s add mr_stun
execute if score @s mr_effect_stun_time matches ..120 run scoreboard players set @s mr_effect_stun_time 120

#playsound mr_b:enemy/spearman/grunt master @a ~ ~ ~

scoreboard players reset @s mr_special_enemy_spearman_charge
tag @s remove spearman_charging
attribute @s movement_speed modifier remove spearman_mvspd_base

item replace entity @s weapon.mainhand with stone_button

item replace entity @s weapon.mainhand with iron_spear[kinetic_weapon={delay_ticks:10,contact_cooldown_ticks:10,forward_movement:0.0,damage_multiplier:1.0,dismount_conditions:{max_duration_ticks:0,min_speed:0,min_relative_speed:0},knockback_conditions:{max_duration_ticks:0,min_speed:0,min_relative_speed:0},damage_conditions:{max_duration_ticks:0,min_speed:0,min_relative_speed:0}}] 1


