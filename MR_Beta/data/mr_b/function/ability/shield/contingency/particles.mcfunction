#Particles Generated with: Cloud Wolf's Particle Grapher
execute on origin if entity @s[team=!rift_enemy] run return fail

tag @s[team=!rift_enemy] add projectile_delete
execute at @s on origin if entity @s[team=rift_party] run tag @n[tag=projectile_delete] remove projectile_delete
tag @e[tag=mr_projectile_strong] remove projectile_delete
tag @e[tag=mr_projectile_medium] remove projectile_delete
tag @e[tag=mr_projectile_weak] remove projectile_delete


function mr_b:ability/shield/contingency/particles2


kill @e[tag=projectile_delete,sort=nearest,team=!rift_party,team=!rift_enemy,type=!player] 

