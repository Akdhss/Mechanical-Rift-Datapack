#kill @e[tag=dummy]

summon husk ~ ~.0001 ~ {NoGravity:false,Silent:1b,PersistenceRequired:1b,NoAI:1b,CustomName:["Dummy"],Tags:["wave_mob","dummy","dummy_spawn"]}

execute as @e[tag=dummy_spawn] run attribute @s max_health modifier add max_health 80 add_multiplied_total

scoreboard players set @e[tag=dummy_spawn] mr_dummy_hp_average 0
scoreboard players set @e[tag=dummy_spawn] mr_dummy_hp_snapshot 0

execute as @e[tag=dummy_spawn] run data modify entity @s Health set value 10000f

tag @e remove dummy_spawn