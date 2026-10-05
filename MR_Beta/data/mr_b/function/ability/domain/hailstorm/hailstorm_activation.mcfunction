
execute if entity @s[tag=silenced] run return fail

execute if entity @s[tag=casting_domain] run return fail

tag @s add casting_domain
tag @s add domain_hailstorm
tag @s remove ultimate_ready

effect give @s slowness infinite 255 true
effect give @s weakness infinite 255 true
effect give @s resistance 15 1 true
attribute @s jump_strength base set 0

scoreboard players set @s mr_domain_wind_up 300



clear @s potion[potion_contents={custom_color:1441913}] 1

playsound minecraft:block.chain.place master @a ~ ~ ~ 0.6 1.2
playsound minecraft:block.gravel.place master @a ~ ~ ~ 0.7 0.9
playsound minecraft:block.stone.place master @a ~ ~ ~ 0.5 0.8