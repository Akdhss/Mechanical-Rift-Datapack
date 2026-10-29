

execute as @e[name=player_spawn] if score @s mr_difficulty matches 1 run tag @e[tag=wave_mob,limit=5,tag=!boss,type=!player,tag=!special_attribute] add disappeared
execute as @e[name=player_spawn] if score @s mr_difficulty matches 2 run tag @e[tag=wave_mob,limit=6,tag=!boss,type=!player,tag=!special_attribute] add disappeared
execute as @e[name=player_spawn] if score @s mr_difficulty matches 3 run tag @e[tag=wave_mob,limit=7,tag=!boss,type=!player,tag=!special_attribute] add disappeared
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 run tag @e[tag=wave_mob,limit=8,tag=!boss,type=!player,tag=!special_attribute] add disappeared

tag @e[tag=disappeared,tag=!special_attribute] add special_attribute

effect give @e[tag=disappeared] invisibility infinite 0