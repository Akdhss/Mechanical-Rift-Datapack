# warn-off-file target-selector-no-type
# warn-off-file execute-group

execute if entity @s[team=!rift_enemy] run attribute @s minecraft:follow_range base set 9999999999

execute if entity @s[team=!rift_enemy] run team join rift_enemy
execute if entity @s[type=magma_cube] run attribute @s movement_speed modifier add base_movement_speed 3 add_multiplied_base


execute if entity @s[tag=camo_bomb,tag=!silenced,nbt=!{active_effects:[{id:"minecraft:glowing"}]}] at @s unless entity @e[team=rift_party,distance=..6.4] run effect give @s invisibility infinite 2 false

execute if entity @s[tag=camo_ranged,tag=!silenced,nbt=!{active_effects:[{id:"minecraft:glowing"}]}] at @s unless entity @e[team=rift_party,distance=..10.9] run effect give @s invisibility infinite 2 false


execute if entity @s[tag=camo_bomb,nbt={active_effects:[{id:"minecraft:invisibility"}]}] at @s if entity @e[team=rift_party,distance=..6.5] run function mr_b:enemy_wave/enemy/invis/reveal
execute if entity @s[tag=camo_ranged,nbt={active_effects:[{id:"minecraft:invisibility"}]}] at @s if entity @e[team=rift_party,distance=..11] run function mr_b:enemy_wave/enemy/invis/reveal

execute if entity @s[tag=camo_bomb,tag=silenced,nbt={active_effects:[{id:"minecraft:invisibility"}]}] at @s run function mr_b:enemy_wave/enemy/invis/reveal
execute if entity @s[tag=camo_ranged,tag=silenced,nbt={active_effects:[{id:"minecraft:invisibility"}]}] at @s run function mr_b:enemy_wave/enemy/invis/reveal

execute if entity @s[tag=spearman,tag=!mr_stun] if entity @a[distance=6..16,gamemode=adventure] run function mr_b:enemy_wave/enemy/spearman/charge
execute if entity @s[tag=spearman] if score @s mr_special_enemy_spearman_charge matches 1.. run function mr_b:enemy_wave/enemy/spearman/charge



execute if entity @s[tag=landing] unless block ~ ~-1 ~ air run tag @s remove landing
execute if entity @s[tag=mr_ratio_target] at @s run particle crit ~ ~2.5 ~ 0.1 0.1 0.1 0 5

execute if entity @s[type=vex,team=rift_enemy] as @s[type=vex,team=rift_enemy] run scoreboard players add @s mr_enemy_vex_expire 1
execute if entity @s[type=vex,team=rift_enemy] as @s[type=vex,team=rift_enemy] if score @s mr_enemy_vex_expire matches 1200.. run kill @s

execute if entity @s[tag=deadshot,tag=!mr_freeze,tag=!silenced,distance=0..] at @s on target if entity @s[team=rift_party,distance=0..] as @n[tag=deadshot,distance=0..] run function mr_b:random_event/base_event/deadshot/fire/wind_up

execute unless score @s mr_effect_bind_time matches 0.. run scoreboard players set @s mr_effect_bind_time 0
execute unless score @s mr_effect_cold_time matches 0.. run scoreboard players set @s mr_effect_cold_time 0
execute unless score @s mr_effect_silence_time matches 0.. run scoreboard players set @s mr_effect_silence_time 0
execute unless score @s mr_effect_bleed_time matches 0.. run scoreboard players set @s mr_effect_bleed_time 0
execute unless score @s mr_effect_stun_time matches 0.. run scoreboard players set @s mr_effect_stun_time 0
execute unless score @s mr_effect_disarm_time matches 0.. run scoreboard players set @s mr_effect_disarm_time 0

execute if entity @s[name=mirror_face] run tag @s add mirror_death_state
execute if entity @s[name=mirror_face,distance=0..] at @s as @e[name=Mirror,distance=0..] if score @s mr_special_enemy_mirror_link = @n[name=mirror_face,distance=0..] mr_special_enemy_mirror_link as @n[name=mirror_face,distance=0..] run tag @s remove mirror_death_state
execute if entity @s[tag=mirror_death_state] run kill @s

execute if entity @s[name=Mirror] run tag @s add mirror_death_state
execute if entity @s[name=Mirror,distance=0..] as @e[name=mirror_face,distance=0..] if score @s mr_special_enemy_mirror_link = @n[name=Mirror,distance=0..] mr_special_enemy_mirror_link as @n[name=Mirror,distance=0..] run tag @s remove mirror_death_state
execute if entity @s[tag=mirror_death_state] run kill @s

execute if entity @s[name=sentinel,tag=!silenced] run scoreboard players add @s mr_special_enemy_sentinel_wind 1
execute if score @s mr_special_enemy_sentinel_wind matches 100.. run function mr_b:random_event/base_event/sentinel/charge
execute if entity @s[name=sentinel,tag=sentinel_charge] run function mr_b:random_event/base_event/sentinel/detect

