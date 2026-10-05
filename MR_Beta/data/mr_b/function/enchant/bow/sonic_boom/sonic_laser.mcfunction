execute as @e[team=rift_enemy,distance=..4.5] positioned ^ ^ ^.25 run function mr_b:enchant/bow/sonic_boom/sonic_collision

particle sonic_boom ~ ~ ~ 0 0 0 0.0 1 force


scoreboard players add .distance global_range 1

playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 0.001 0.7
execute if score .distance global_range matches ..300 positioned ^ ^ ^.25 rotated ~ ~ run function mr_b:enchant/bow/sonic_boom/sonic_laser


