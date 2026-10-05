execute as @e[name=player_spawn] at @s run summon ravager ~ ~20 ~ {PersistenceRequired:1b,Tags:["captain","captain_mount","reinforcement_ready","wave_mob","pathing_mob","boss","mr_unassigned_boss"],Passengers:[{id:pillager,CustomName:"Captain",Tags:["captain","captain_rider","boss_invulnerable","wave_mob","boss"],Invulnerable:1b,equipment:{mainhand:{id:crossbow},head:{id:white_banner,tag:{BlockEntityTag:{Patterns:[{Color:15,Pattern:"mr"},{Color:8,Pattern:"bs"},{Color:7,Pattern:"cs"},{Color:8,Pattern:"bo"},{Color:15,Pattern:"ms"},{Color:8,Pattern:"hh"},{Color:8,Pattern:"mc"},{Color:15,Pattern:"bo"}]}}}}}]}

execute as @e[tag=boss,type=pillager] run enchant @s quick_charge 3
execute as @e[tag=boss,type=pillager] run enchant @s unbreaking 3

effect give @e[tag=boss,tag=!captain_mount] speed infinite 1 true
effect give @e[tag=boss] glowing infinite 0 true

execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 1 as @e[tag=boss] run attribute @s max_health modifier add boss_max_health 2 add_multiplied_total
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 2 as @e[tag=boss] run attribute @s max_health modifier add boss_max_health 4 add_multiplied_total
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 3 as @e[tag=boss] run attribute @s max_health modifier add boss_max_health 6 add_multiplied_total
execute if score @e[name=player_spawn,limit=1] mr_difficulty matches 4 as @e[tag=boss] run attribute @s max_health modifier add boss_max_health 9 add_multiplied_total
attribute @e[tag=boss,type=ravager,limit=1] scale base set 0.85

execute as @e[tag=boss] run data modify entity @s Health set value 100000f

execute store result score @s[type=ravager,tag=boss] mr_captain_hp run data get entity @e[type=minecraft:ravager,limit=1] Health

execute as @e[tag=boss,tag=!boss_invulnerable] run function mr_b:boss/boss_ult_thresh

execute store result score @e[tag=mr_unassigned_boss,type=ravager] mr_wave_loc_random run random value 1..4


execute as @e[tag=mr_unassigned_boss,type=ravager] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned_boss,type=ravager] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned_boss,type=ravager] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned_boss,type=ravager] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4


execute as @e[tag=mr_unassigned_boss,type=ravager] run function mr_b:enemy_wave/enemy_loc

bossbar add boss_bar [{"text":"The Captain","bold":true,"color":"dark_red"}]
bossbar set minecraft:boss_bar color red
bossbar set minecraft:boss_bar players @a[team=rift_party] 

