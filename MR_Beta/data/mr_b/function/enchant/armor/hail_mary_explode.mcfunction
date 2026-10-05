execute as @a at @s run function mr_b:sfx/boom

execute as @e[distance=16..20] run damage @s 18 explosion by @e[name=hail_mary,limit=1]
execute as @e[distance=11..15] run damage @s 50 explosion by @e[name=hail_mary,limit=1]
execute as @e[distance=6..10] run damage @s 150 explosion by @e[name=hail_mary,limit=1]
execute as @e[distance=1..5] run damage @s 300 explosion by @e[name=hail_mary,limit=1]

kill @s