execute as @e[team=rift_enemy,distance=..4.5] positioned ^ ^ ^.25 run function mr_b:enchant/bow/debilitation/debilitation_collision

particle dust{color:[0.4,0,0.6],scale:1.2} ~ ~ ~ 1 1 1 0 5 force
particle dust{color:[0.2,0,0.3],scale:1.6} ~ ~ ~ 1 1 1 0 5 force
particle dust{color:[0.6,0.8,1],scale:0.6} ~ ~ ~ 1 1 1 0.01 5 force
particle sculk_charge_pop ~ ~ ~ 1 1 1 0.01 5 force
particle squid_ink ~ ~ ~ 1 1 1 0.01 5 force



scoreboard players add .distance global_range 1

playsound minecraft:block.sculk_sensor.clicking master @a ~ ~ ~ 0.5 0.8
playsound minecraft:block.conduit.ambient.short master @a ~ ~ ~ 0.4 0.6

execute if score .distance global_range matches ..300 positioned ^ ^ ^.25 rotated ~ ~ run function mr_b:enchant/bow/debilitation/debilitation_laser


