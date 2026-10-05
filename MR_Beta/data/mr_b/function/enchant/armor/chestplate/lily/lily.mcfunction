execute if entity @s[tag=party_alive] run scoreboard players reset @s mr_enchant_lily_time
execute unless entity @a[tag=party_alive] run return fail
execute if entity @s[tag=traitor] run return fail
execute if entity @s[tag=party_alive] run return fail
execute if entity @s[tag=lily_consumed] run return fail
execute if entity @s[tag=silenced] run return fail
execute if entity @e[tag=wave_starting,type=marker,name=player_spawn] run return fail
execute if score @s mr_enchant_lily_time matches 1.. run return fail

tag @s add lily_used

tellraw @a ["",{text:"[",bold:true,color:"dark_green"},{selector:"@s",bold:true},{text:"] ",bold:true,color:"dark_green"},{text:"\"I'm not done yet...\"",bold:true,color:"blue"}]
scoreboard players set @s mr_enchant_lily_time 400

scoreboard objectives modify mr_enchant_lily_time displayname "Respawn Timer"
scoreboard objectives setdisplay sidebar.team.green mr_enchant_lily_time