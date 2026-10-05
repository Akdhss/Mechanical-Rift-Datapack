function mr_b:effect/disarm/disarm_shield
execute if score @s mr_player_shield_hold matches 1 run return fail

tag @s add mr_stun
execute if score @s mr_effect_stun_time matches ..80 run scoreboard players set @s mr_effect_stun_time 80

execute store result bossbar stun_effect max run scoreboard players get @s mr_effect_stun_time
execute store result bossbar silence_effect max run scoreboard players get @s mr_effect_stun_time
execute store result bossbar disarm_effect max run scoreboard players get @s mr_effect_stun_time

execute store result score @s global_random run random value 1..3
execute if score @s global_random matches 1 at @s run playsound mr_b:enemy/spearman/hurt1 player @s ~ ~ ~ 20
execute if score @s global_random matches 2 at @s run playsound mr_b:enemy/spearman/hurt2 player @s ~ ~ ~ 20
execute if score @s global_random matches 3 at @s run playsound mr_b:enemy/spearman/hurt3 player @s ~ ~ ~ 20