execute on attacker if entity @s[tag=mr_disarm] run return fail

tag @s add mr_shatter
tag @s add mr_shatterpoint

execute on attacker if entity @s[tag=hailstorm_buff] at @e[tag=mr_shatterpoint] run tag @e[distance=..3] add mr_shatter

tag @s remove mr_shatterpoint