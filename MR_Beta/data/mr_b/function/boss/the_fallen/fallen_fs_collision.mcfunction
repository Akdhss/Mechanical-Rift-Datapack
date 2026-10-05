execute as @e[tag=boss,tag=collapse_ready] at @s as @e[team=rift_party,distance=..3] run damage @s 6 magic by @e[tag=boss,limit=1]
execute as @e[tag=boss,tag=!collapse_ready] at @s as @e[team=rift_party,distance=..3] run damage @s 4 magic by @e[tag=boss,limit=1]
scoreboard players add @e[tag=boss] mr_fallen_tp_range 1


execute as @e[tag=boss] at @s run particle mycelium ~ ~1 ~ 0.2 0.4 0.2 0 20
execute as @e[tag=boss] at @s run particle trial_spawner_detection_ominous ~ ~1 ~ 0.2 0.4 0.2 0 20

execute if score @e[tag=boss,limit=1] mr_fallen_tp_range matches ..10 run schedule function mr_b:boss/the_fallen/fallen_fs_collision 1t
execute if score @e[tag=boss,limit=1] mr_fallen_tp_range matches 11.. run scoreboard players reset @e[tag=boss] mr_fallen_tp_range

execute as @e[tag=boss,tag=!collapse_ready,tag=fallen_juggle] at @s if entity @e[team=rift_party,distance=..5] if score @e[name=player_spawn,limit=1] mr_difficulty matches 2.. run function mr_b:boss/the_fallen/fallen_sl_effect
execute as @e[tag=boss,tag=!collapse_ready,tag=fallen_juggle] at @s if entity @e[team=rift_party,distance=..5] if score @e[name=player_spawn,limit=1] mr_difficulty matches 2.. run function mr_b:boss/the_fallen/sfx/skill_wind_up
execute as @e[tag=boss,tag=!collapse_ready,tag=fallen_juggle] at @s if entity @e[team=rift_party,distance=..5] if score @e[name=player_spawn,limit=1] mr_difficulty matches 2.. run tag @s remove fallen_juggle


