execute as @e[team=rift_party,distance=..4.5] at @s run function mr_b:enchant/bow/aetherline/aetherline_collision

particle dust{color:[1,0.85,0.2],scale:1.2} ~ ~ ~ 0 0 0 0 5 force
particle dust{color:[1,1,0.6],scale:0.8} ~ ~ ~ 0 0 0 0 5 force
particle end_rod ~ ~ ~ 1.5 1.5 1.5 0.01 5 force
particle wax_on ~ ~ ~ 1.1 1.1 1.1 0.01 5 force
particle dust{color:[1,0.9,0.4],scale:1.5} ~ ~ ~ 1.2 1.2 1.2 0.01 5 force


playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.4 2.0
playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 0.3 1.7

scoreboard players add .distance global_range 1

execute if score .distance global_range matches ..300 positioned ^ ^ ^.25 rotated ~ ~ run function mr_b:enchant/bow/aetherline/aetherline_laser


