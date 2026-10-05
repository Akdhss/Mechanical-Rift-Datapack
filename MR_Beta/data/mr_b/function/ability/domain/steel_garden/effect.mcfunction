execute at @s as @e[distance=..20,team=rift_enemy] if score @s mr_effect_disarm_time matches ..300 run scoreboard players set @s mr_effect_disarm_time 300
execute at @s as @e[distance=..20] run tag @s add mr_disarm

execute as @a[distance=..20,tag=mr_disarm] store result bossbar disarm_effect max run scoreboard players get @s mr_effect_disarm_time







#execute on attacker as @e[distance=..3.5,team=rift_enemy,limit=5] run tag @s add mr_disarm
#execute on attacker as @e[distance=..3.5,team=rift_enemy,limit=5] if score @s mr_effect_disarm_time matches ..100 run scoreboard players set @s mr_effect_disarm_time 100





kill @s