# warn-off-file target-selector-no-type
execute as @a[tag=party_dead] run function mr_b:mechanics/dead_respawn

scoreboard players add @e[name=player_spawn,distance=0..] mr_wave_count 1
scoreboard players add @s mr_shop_player_currency 75

scoreboard players add @s[tag=class_freemix] mr_shop_player_currency 250
scoreboard players add @s[tag=class_support] mr_shop_player_currency 175
scoreboard players add @s[tag=class_tank] mr_shop_player_currency 125
execute as @s[tag=class_rich] run scoreboard players add @a mr_shop_player_currency 500
execute if entity @s[tag=class_rich] run tellraw @a [{"text":"V.I.P. Nitronic Bonus!","bold":true,"color":"gold"}]

execute as @a run function mr_b:enchant/armor/chestplate/overtime/overtime_expire


execute if score @e[limit=1,distance=0..,name=player_spawn,type=marker] mr_player_misc_setting_1 matches 1 run scoreboard players add @s mr_shop_player_currency 50
execute if score @e[limit=1,distance=0..,name=player_spawn,type=marker] mr_player_misc_setting_2 matches 1 run scoreboard players add @s mr_shop_player_currency 50
execute if score @e[limit=1,distance=0..,name=player_spawn,type=marker] mr_player_misc_setting_3 matches 1 run scoreboard players add @s mr_shop_player_currency 50

tag @s remove determination_used
tag @s remove determination_active
scoreboard players reset @s mr_enchant_determination_time
scoreboard players reset @s player_death
effect clear @s resistance

attribute @s max_health modifier remove determination_decay
attribute @s max_health modifier remove determination_max_health
attribute @s attack_damage modifier remove determination_attack_damage
attribute @s knockback_resistance modifier remove determination_max_health
attribute @s explosion_knockback_resistance modifier remove determination_max_health



execute store result bossbar wave_delay max run scoreboard players get @e[name=player_spawn,limit=1,distance=0..] mr_wave_delay
bossbar set wave_delay players @s[team=rift_party]

effect give @s speed 50 2 true

tellraw @s {text:"----- WAVE FINISHED -----",bold:true,color:"gold"}
tellraw @s {text:" ",bold:true,color:"gold"}

tellraw @s ["",{text:"Wave: ",bold:true,color:"red"},{score:{name:"@e[name=player_spawn]",objective:"mr_wave_count"},color:"dark_red",bold:true}]
tellraw @s {text:" ",bold:true,color:"gold"}

execute at @s run function mr_b:sfx/wave_end

tag @e[name=player_spawn,distance=0..] add wave_finished