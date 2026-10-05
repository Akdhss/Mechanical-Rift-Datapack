#execute positioned ^ ^ ^2 as @e[distance=..2,team=rift_enemy] run say HIT

stopsound @a ambient




particle explosion ~ ~0.1 ~ 0 0 0 0 1 force
particle flame ~ ~0.1 ~ 1.2 0.4 1.2 0.03 25 normal
particle smoke ~ ~0.1 ~ 1.4 0.6 1.4 0.03 30 normal
particle dust{color:[0.2,0.2,0.2],scale:1.2} ~ ~0.1 ~ 1.5 0.5 1.5 0.08 25 force

playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.9 1.3
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 0.6 0.6
playsound minecraft:block.stone.break hostile @a ~ ~ ~ 0.7 0.8
playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 0.5 0.7

execute as @e[distance=..2.75,team=rift_enemy] run damage @s 15 mr_b:explosion
execute as @e[distance=..2.75,team=rift_party] run damage @s 15 mr_b:explosion

execute as @e[distance=..3.25,name=landmine] run function mr_b:ability/trap/landmine/landmine_effect

execute at @s as @e[name=claymore] if score @s mr_trap_claymore_link = @n mr_trap_claymore_link run kill @s