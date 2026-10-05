# warn-off-file target-selector-no-type
# warn-off-file execute-group



execute as @s[type=ravager,tag=boss,tag=!silenced,tag=!mr_stun] at @s run scoreboard players add @s mr_captain_cry_cd 1
execute as @s[type=ravager,tag=boss] at @s if score @s mr_captain_cry_cd matches 200..201 run function mr_b:boss/the_captain/captain_leap
execute as @s[type=ravager,tag=boss] at @s if score @s mr_captain_cry_cd matches 300.. run function mr_b:boss/the_captain/captain_cry
execute as @s[type=ravager,tag=boss,tag=captain_leaping] at @s unless block ~ ~-.5 ~ air run function mr_b:boss/the_captain/captain_land


execute as @e[tag=boss,tag=reinforcement_ready,tag=!silenced,distance=0..,type=ravager] at @s if score @s mr_boss_hp <= @s mr_boss_thresh run function mr_b:boss/the_captain/captain_reinforcement
execute unless entity @e[tag=captain_mount,distance=0..] as @e[tag=captain_rider,distance=0..] run data modify entity @s Invulnerable set value 0b
execute unless entity @e[tag=captain_mount,distance=0..] as @e[tag=captain_rider,distance=0..] run tag @s remove boss_invulnerable
execute if entity @e[tag=captain_mount,distance=0..] as @e[tag=captain_rider,distance=0..] run data modify entity @s Invulnerable set value 1b
execute if entity @e[tag=captain_mount,distance=0..] as @e[tag=captain_rider,distance=0..] run tag @s add boss_invulnerable

execute as @e[distance=0..,type=arrow] at @s on origin if entity @s[tag=boss,distance=0..,type=pillager] run function mr_b:boss/the_captain/captain_ray/ray_raycast

execute unless entity @e[tag=boss,distance=0..,type=ravager] store result score @e[tag=boss,limit=1,distance=0..,type=pillager] mr_captain_hp run data get entity @e[limit=1,distance=0..,type=minecraft:pillager] Health


execute as @s[tag=boss,tag=!silenced,tag=!mr_stun,distance=0..,type=wither_skeleton] on target if entity @s[team=rift_party,distance=0..] as @e[tag=boss,distance=0..,type=wither_skeleton] run scoreboard players add @s mr_fallen_skill_cd 1
execute as @s[tag=boss,nbt={HurtTime:9s},tag=!silenced,tag=!mr_stun,distance=0..,type=wither_skeleton] on attacker if entity @s[team=rift_party,distance=0..] as @e[tag=boss,distance=0..,type=wither_skeleton] run scoreboard players add @s mr_fallen_skill_cd 30

execute as @s[type=wither_skeleton,tag=boss,nbt={HurtTime:9s},tag=!collapsing] at @s run function mr_b:boss/the_fallen/sfx/hurt

execute as @s[type=wither_skeleton,tag=boss,tag=!collapsing,tag=!silenced,tag=!mr_stun] if score @s mr_fallen_skill_cd matches 200.. run function mr_b:boss/the_fallen/fallen_skill
execute as @s[tag=boss,distance=0..,type=wither_skeleton] at @s run tp facing ~ ~ ~ facing entity @n[tag=fs_target,distance=0..] eyes
execute as @s[type=wither_skeleton,tag=boss,tag=fallen_wind] if score @s mr_fallen_skill_wind matches 20.. run function mr_b:boss/the_fallen/fallen_fs_raycast

execute as @s[type=wither_skeleton,tag=boss,tag=fallen_wind_sl] if score @s mr_fallen_skill_wind matches 15.. at @s run function mr_b:boss/the_fallen/fallen_sl_effect
execute as @s[type=wither_skeleton,tag=boss,tag=fallen_wind_sl] if score @s mr_fallen_skill_wind matches ..15 at @s run function mr_b:vfx/fallen_slash_indicator
scoreboard players add @s[type=wither_skeleton,tag=boss,tag=fallen_wind] mr_fallen_skill_wind 1
scoreboard players add @s[type=wither_skeleton,tag=boss,tag=fallen_wind_sl] mr_fallen_skill_wind 1
execute as @s[type=wither_skeleton,tag=boss,tag=!dodge_ready] run scoreboard players add @s mr_fallen_dodge_cd 1
execute as @s[type=wither_skeleton,tag=boss,tag=!dodge_ready,tag=collapse_ready] if score @s mr_fallen_dodge_cd matches 200.. run tag @s add dodge_ready
execute as @s[type=wither_skeleton,tag=boss,tag=!dodge_ready,tag=!collapse_ready] if score @s mr_fallen_dodge_cd matches 100.. run tag @s add dodge_ready


execute as @s[tag=boss,tag=dodge_ready,tag=!collapsing,tag=!silenced,tag=!mr_stun,distance=0..,type=wither_skeleton] at @s as @e[distance=..5,tag=!arrow_incoming,type=arrow] at @s if block ~ ~-.3 ~ air on origin if entity @s[team=rift_party,distance=0..] as @e[tag=boss,tag=dodge_ready,distance=0..,type=wither_skeleton] at @s run function mr_b:boss/the_fallen/fallen_dodge_skill

# warn-off execute-unnecessary
execute as @s[tag=boss,tag=!collapse_ready,tag=dodge_ready,tag=!collapsing,tag=!silenced,tag=!mr_stun,nbt={HurtTime:9s},distance=0..,type=wither_skeleton] at @s on attacker if entity @e[distance=..5,team=rift_party] as @e[tag=boss,tag=dodge_ready,tag=!collapsing,tag=!silenced,tag=!mr_stun,distance=0..,type=wither_skeleton] at @s run tag @s add fallen_backdash

execute as @s[type=wither_skeleton,tag=boss,tag=fallen_backdash] at @s run function mr_b:boss/the_fallen/fallen_dodge_skill

execute as @s[type=wither_skeleton,tag=boss,tag=collapse_ready,tag=!spawning] at @s if score @s mr_boss_hp <= @s mr_boss_thresh run function mr_b:boss/the_fallen/fallen_collapse



execute as @s[type=wither_skeleton,tag=boss] if score @s mr_fallen_dodge_cd matches ..10 run particle trial_spawner_detection ~ ~1.25 ~ .3 .5 .3 0 20
execute as @s[type=wither_skeleton,tag=boss] if score @s mr_fallen_dodge_cd matches ..10 run particle cloud ~ ~.25 ~ .1 .2 .1 0 10

execute as @s[type=wither_skeleton,tag=boss,tag=dodge_ready] at @s run particle electric_spark ~ ~1.25 ~ .3 .5 .3 0 2

execute as @s[type=wither_skeleton,tag=boss,tag=collapsing] at @s if score @s mr_fallen_collapse_cd matches ..3 run particle minecraft:ominous_spawning ~ ~1 ~ 0.1 .5 0.1 1 25
execute as @s[type=wither_skeleton,tag=boss,tag=collapsing] at @s if score @s mr_fallen_collapse_cd matches ..3 run particle minecraft:scrape ~ ~1 ~ 0.2 .5 0.2 1 5




execute store result bossbar ability_cd value run scoreboard players get @s[tag=boss,tag=fallen] mr_fallen_skill_cd
