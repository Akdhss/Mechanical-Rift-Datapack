execute if entity @s[tag=silenced] run return fail
execute unless entity @a[tag=party_dead,tag=!second_wind,tag=!lily_used] run return fail

tag @s add divine

playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 0.9 0.6
playsound minecraft:block.anvil.place player @s ~ ~ ~ 0.6 0.8
playsound minecraft:entity.ravager.step player @s ~ ~ ~ 0.7 0.7

clear @s potion[potion_contents={custom_color:15333398}] 1

tellraw @a ["",{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"] ",bold:true,color:"dark_green"},{text:"\"Your duty is not over!\"",bold:true,color:"blue"}]

tag @r[tag=party_dead,tag=!second_wind,limit=1] add second_wind
execute as @a[tag=second_wind] unless score @s mr_enchant_lily_time matches 1.. run scoreboard players set @s mr_enchant_lily_time 250

attribute @s minecraft:jump_strength base reset

tag @s remove divine

scoreboard objectives modify mr_enchant_lily_time displayname "Respawn Timer"
scoreboard objectives setdisplay sidebar.team.green mr_enchant_lily_time
