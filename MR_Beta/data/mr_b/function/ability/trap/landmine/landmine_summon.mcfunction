
execute if entity @s[tag=silenced] run return fail

execute if score @s mr_trap_placement_cooldown matches 1.. run return fail

scoreboard players set @s mr_trap_placement_cooldown 20

summon marker ~ ~ ~ {CustomName:"landmine",Tags:["unarmed_trap","trap"]}




execute as @e[name=landmine] at @s if block ~ ~-.5 ~ air run function mr_b:ability/trap/trap_ground

clear @s potion[potion_contents={custom_color:7929856}] 1

playsound minecraft:block.chain.place master @a ~ ~ ~ 0.6 1.2
playsound minecraft:block.gravel.place master @a ~ ~ ~ 0.7 0.9
playsound minecraft:block.stone.place master @a ~ ~ ~ 0.5 0.8