
execute if entity @s[tag=silenced] run return fail

execute if score @s mr_trap_placement_cooldown matches 1.. run return fail

scoreboard players set @s mr_trap_placement_cooldown 20


summon marker ~ ~ ~ {CustomName:"quicksand",Tags:["unarmed_trap","delayed_trap","trap"]}
execute as @e[name=quicksand] at @s if block ~ ~-.5 ~ air run function mr_b:ability/trap/trap_ground

clear @s potion[potion_contents={custom_color:11768320}] 1

playsound minecraft:block.sand.step master @a ~ ~ ~ 0.2 0.6
playsound minecraft:block.soul_sand.step master @a ~ ~ ~ 0.2 0.5
playsound minecraft:block.sand.step master @a ~ ~ ~ 0.2 0.8
playsound minecraft:block.sand.hit master @a ~ ~ ~ 0.15 0.6