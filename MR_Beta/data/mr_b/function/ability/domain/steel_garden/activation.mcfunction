execute if entity @s[tag=silenced] run return fail

execute if entity @s[tag=casting_domain] run return fail

tag @s add domain_steel_garden
tag @s remove ultimate_ready
scoreboard players set @s mr_ability_steel_garden_cd 1800
tag @s add steel_garden_used
 

summon marker ~ ~ ~ {CustomName:"steel_garden",Tags:["domain","newly_set","independent_domain"]}
scoreboard players set @e[name=steel_garden,tag=newly_set] mr_domain_wind_up 90
tag @e[name=steel_garden] remove newly_set

execute as @e[name=steel_garden] at @s if block ~ ~-.3 ~ air run function mr_b:ability/trap/trap_ground

execute as @a[team=rift_party] at @s run playsound mr_b:skill/steel_garden/cast master @s ~ ~ ~ 500

tag @s remove domain_steel_garden

clear @s potion[potion_contents={custom_color:10592673}] 1

playsound minecraft:block.chain.place master @a ~ ~ ~ 0.6 1.2
playsound minecraft:block.gravel.place master @a ~ ~ ~ 0.7 0.9
playsound minecraft:block.stone.place master @a ~ ~ ~ 0.5 0.8