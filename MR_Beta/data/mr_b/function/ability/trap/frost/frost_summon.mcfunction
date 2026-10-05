advancement revoke @s only mr_b:ability/trap/ab_frost

execute if entity @s[tag=silenced] run return fail

execute if score @s mr_trap_placement_cooldown matches 1.. run return fail

scoreboard players set @s mr_trap_placement_cooldown 20


summon marker ~ ~ ~ {CustomName:"frost",Tags:["unarmed_trap","delayed_trap","trap"]}
execute as @e[name=frost] at @s if block ~ ~-.5 ~ air run function mr_b:ability/trap/trap_ground

clear @s potion[potion_contents={custom_color:174813}] 1

playsound minecraft:block.amethyst_block.place player @a ~ ~ ~ 0.7 0.8
playsound minecraft:block.glass.place player @a ~ ~ ~ 0.5 1.4
playsound minecraft:block.powder_snow.place player @a ~ ~ ~ 0.8 0.9
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 0.4 1.7