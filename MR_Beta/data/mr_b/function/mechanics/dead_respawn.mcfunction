effect give @s blindness 2 255 true
tag @s add party_alive
execute at @e[name=player_spawn] as @s run function mr_b:mechanics/player/spawn/start
tag @s remove party_dead
tag @s remove lily_consumed
attribute @s minecraft:jump_strength base reset
scoreboard players reset @s player_death
gamemode adventure

