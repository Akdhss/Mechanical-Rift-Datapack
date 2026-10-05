# warn-off-file target-selector-no-type
# warn-off-file execute-group
tag @e[team=rift_enemy,distance=0..] add silenced
tag @a[team=rift_party] add silenced

execute as @e[name=player_spawn,distance=0..] if score @s mr_difficulty matches ..2 as @e[team=rift_enemy,distance=0..] if score @s mr_effect_silence_time matches ..125 run scoreboard players set @s mr_effect_silence_time 125
execute as @e[name=player_spawn,distance=0..] if score @s mr_difficulty matches 3.. as @e[team=rift_enemy,distance=0..] if score @s mr_effect_silence_time matches ..250 run scoreboard players set @s mr_effect_silence_time 250

execute as @e[name=player_spawn,distance=0..] if score @s mr_difficulty matches ..2 as @a[team=rift_party,distance=0..] if score @s mr_effect_silence_time matches ..125 run scoreboard players set @s mr_effect_silence_time 125
execute as @e[name=player_spawn,distance=0..] if score @s mr_difficulty matches 3.. as @a[team=rift_party,distance=0..] if score @s mr_effect_silence_time matches ..250 run scoreboard players set @s mr_effect_silence_time 250

execute as @a[tag=silenced] store result bossbar silence_effect max run scoreboard players get @s mr_effect_silence_time


playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 0.45 0.5
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 0.4
playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.9 0.7

playsound minecraft:ambient.soul_sand_valley.mood master @a ~ ~ ~ 1 0.5
playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 0.8 0.6
playsound minecraft:block.portal.ambient master @a ~ ~ ~ 0.35 0.4