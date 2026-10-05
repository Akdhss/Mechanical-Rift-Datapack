execute as @e[name=player_spawn] at @s run summon wither_skeleton ~ ~20 ~ {PersistenceRequired:1b,CustomName:["The Fallen"],Tags:["spawning","fallen","collapse_ready","wave_mob","pathing_mob","boss","mr_unassigned_boss"],equipment:{mainhand:{id:iron_sword},head:{id:iron_helmet},chest:{id:iron_chestplate}}}


execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 1 as @e[tag=boss] run attribute @s max_health modifier add boss_max_health 6 add_multiplied_total
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 2 as @e[tag=boss] run attribute @s max_health modifier add boss_max_health 10 add_multiplied_total
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 3 as @e[tag=boss] run attribute @s max_health modifier add boss_max_health 14 add_multiplied_total
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 4 as @e[tag=boss] run attribute @s max_health modifier add boss_max_health 18 add_multiplied_total

attribute @e[tag=spawning,limit=1] scale base set 0.95

execute as @e[tag=spawning] run data modify entity @s Health set value 1000f
effect give @e[tag=boss] glowing infinite 0 true
effect give @e[tag=boss] slowness infinite 0 true
effect give @e[tag=boss] resistance infinite 0 true

execute store result score @e[tag=mr_unassigned_boss,type=wither_skeleton] mr_wave_loc_random run random value 1..4

execute as @e[tag=mr_unassigned_boss] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned_boss] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned_boss] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned_boss] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4

execute as @e[tag=mr_unassigned_boss,type=wither_skeleton] run function mr_b:enemy_wave/enemy_loc

bossbar add boss_bar [{"text":"Fallen","bold":true,"color":"dark_gray"}]
bossbar set minecraft:boss_bar color white
bossbar set minecraft:boss_bar players @a[team=rift_party] 

tag @e[tag=spawning] remove spawning

execute as @e[tag=boss,tag=!boss_invulnerable] run function mr_b:boss/boss_ult_thresh

bossbar add ability_cd [{"text":"Ability","bold":true,"color":"blue"}]
bossbar set minecraft:ability_cd color blue
bossbar set minecraft:ability_cd max 200
bossbar set minecraft:ability_cd players @a[team=rift_party] 
