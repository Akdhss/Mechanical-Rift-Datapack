# warn-off-file target-selector-no-type
execute as @a[tag=party_dead] run function mr_b:mechanics/dead_respawn





execute as @a run function mr_b:enchant/armor/chestplate/overtime/overtime_expire




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

bossbar set wave_progress players @a[tag=test]

execute store result bossbar wave_delay max run scoreboard players get @e[name=player_spawn,limit=1,distance=0..] mr_wave_delay
bossbar set wave_delay players @s[team=rift_party]

effect give @s speed 50 2 true
tellraw @s {text:" ",bold:true,color:"gold"}
tellraw @s {text:" ",bold:true,color:"gold"}
tellraw @s {text:"----- WAVE FINISHED -----",bold:true,color:"gold"}
tellraw @s {text:" ",bold:true,color:"gold"}

tellraw @s ["",{text:"Next Wave: ",bold:true,color:"red"},{score:{name:"@e[name=player_spawn]",objective:"mr_wave_count"},color:"dark_red",bold:true}]
tellraw @s {text:" ",bold:true,color:"gold"}

execute as @e[name=player_spawn,distance=0..] run function mr_b:objective/obj_clear

function mr_b:enemy_wave/endwave_credit

execute at @s run function mr_b:sfx/wave_end

tag @e[name=player_spawn,distance=0..] add wave_finished
