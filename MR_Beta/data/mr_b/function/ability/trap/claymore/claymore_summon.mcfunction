

advancement revoke @s only mr_b:ability/trap/ab_claymore

execute if entity @s[tag=silenced] run return fail

execute if score @s mr_trap_placement_cooldown matches 1.. run return fail

scoreboard players set @s mr_trap_placement_cooldown 5

#summon silverfish ~ ~ ~ {CustomName:"claymore",Tags:["unarmed_trap","unset","trap","1","trap_unlink"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b}
#summon silverfish ~ ~ ~ {CustomName:"claymore",Tags:["unarmed_trap","unset","trap","2","trap_unlink"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b}
summon silverfish ~ ~ ~ {CustomName:"claymore",Tags:["unarmed_trap","unset","trap","3","trap_unlink"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b}
summon silverfish ~ ~ ~ {CustomName:"claymore",Tags:["unarmed_trap","unset","trap","4","trap_unlink"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b}
summon silverfish ~ ~ ~ {CustomName:"claymore",Tags:["unarmed_trap","unset","trap","5","trap_unlink"],NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b}

execute as @e[name=claymore] run attribute @s scale base set .5

tp @e[name=claymore,tag=unset,tag=1] ~ ~.25 ~ ~13 0
tp @e[name=claymore,tag=unset,tag=2] ~ ~.25 ~ ~-13 0
tp @e[name=claymore,tag=unset,tag=3] ~ ~.25 ~ ~6.5 0
tp @e[name=claymore,tag=unset,tag=4] ~ ~.25 ~ ~-6.5 0
tp @e[name=claymore,tag=unset,tag=5] ~ ~.25 ~ ~ 0



effect give @e[name=claymore] invisibility infinite 1 true
effect give @e[name=claymore] resistance infinite 255 true


tag @e[tag=unset] remove unset


scoreboard players add .global mr_trap_claymore_link 1

scoreboard players operation @e[name=claymore,tag=trap_unlink] mr_trap_claymore_link = .global mr_trap_claymore_link

tag @e remove trap_unlink



execute as @e[name=claymore] at @s if block ~ ~-.5 ~ air run function mr_b:ability/trap/trap_ground

clear @s potion[potion_contents={custom_color:3112960}] 1

playsound minecraft:block.chain.place master @a ~ ~ ~ 0.6 1.2
playsound minecraft:block.gravel.place master @a ~ ~ ~ 0.7 0.9
playsound minecraft:block.stone.place master @a ~ ~ ~ 0.5 0.8
playsound minecraft:block.sand.step master @a ~ ~ ~ 0.2 0.6
playsound minecraft:block.soul_sand.step master @a ~ ~ ~ 0.2 0.5
playsound minecraft:block.sand.step master @a ~ ~ ~ 0.2 0.8
playsound minecraft:block.sand.hit master @a ~ ~ ~ 0.15 0.6




