attribute @s max_health modifier remove survivor_max_hp

execute if score @e[limit=1,name=player_spawn] mr_wave_count matches 1 run attribute @s max_health modifier add survivor_max_hp .1 add_multiplied_total
execute if score @e[limit=1,name=player_spawn] mr_wave_count matches 2 run attribute @s max_health modifier add survivor_max_hp .2 add_multiplied_total
execute if score @e[limit=1,name=player_spawn] mr_wave_count matches 3 run attribute @s max_health modifier add survivor_max_hp .3 add_multiplied_total
execute if score @e[limit=1,name=player_spawn] mr_wave_count matches 4 run attribute @s max_health modifier add survivor_max_hp .4 add_multiplied_total
execute if score @e[limit=1,name=player_spawn] mr_wave_count matches 5 run attribute @s max_health modifier add survivor_max_hp .5 add_multiplied_total