tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" Back like I've never left!",bold:true,color:"gold"}]



scoreboard players reset @s mr_enchant_lily_time





effect give @s blindness 2 255 true
tag @s add party_alive
execute at @e[name=player_spawn] as @s run function mr_b:mechanics/player/spawn/start
tag @s remove party_dead
tag @s remove lily_consumed
attribute @s minecraft:jump_strength base reset
scoreboard players reset @s player_death
gamemode adventure

tag @s add lily_consumed

tag @s remove lily_used

execute as @s[tag=!second_wind] run attribute @s max_health modifier add lily_max_health_decay -.5 add_multiplied_total
execute as @s[tag=!second_wind] run scoreboard players set @s mr_enchant_lily_hp 200

execute as @s at @s run function mr_b:sfx/revive

tag @s[tag=second_wind] remove second_wind