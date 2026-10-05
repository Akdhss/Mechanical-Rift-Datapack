tag @s add mr_shatter
tag @s add mr_icebreak

execute on attacker if entity @s[tag=hailstorm_buff] at @e[tag=mr_icebreak] run tag @e[distance=..4] add mr_shatter
execute on attacker if entity @s[tag=hailstorm_buff] at @e[tag=mr_icebreak] run effect give @e[team=rift_enemy,distance=..4] slowness 5 2 true
execute on attacker if entity @s[tag=hailstorm_buff] run effect give @s absorption 10 2 true
tag @s remove mr_icebreak