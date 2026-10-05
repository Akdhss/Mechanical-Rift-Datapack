bossbar add wave_progress [{"text":"Wave Progress","bold":true,"color":"dark_red"}]
bossbar set minecraft:wave_progress color red

#execute at @s run spreadplayers ~ ~ 2 2 under 250 false @a[team=rift_party,scores={ready_state=1}]

execute at @s as @a[team=rift_party,scores={ready_state=1}] run function mr_b:mechanics/player/spawn/start


scoreboard players set @s mr_wave_delay 1000
scoreboard players set @s mr_wave_count 1
scoreboard players reset @s mr_enemy_endless_time
tag @s remove wave_finished
execute store result score @s mr_player_count run execute if entity @a[team=rift_party,scores={ready_state=1}]

bossbar add wave_delay [{"text":"Time until next wave:","bold":true,"color":"#00DB9A"}]
execute store result bossbar wave_delay max run scoreboard players get @s mr_wave_delay
bossbar set wave_delay color blue
bossbar set wave_delay players @a[team=rift_party]


execute as @a[team=rift_party] if score @s ready_state matches 1 run function mr_b:mechanics/game_start_player

team modify rift_enemy color dark_red
team modify rift_party friendlyFire false


