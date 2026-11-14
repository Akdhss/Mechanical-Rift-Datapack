# warn-off-file execute-group
execute if entity @s[tag=run_fail_end] run return fail

execute as @e[team=rift_enemy] run data merge entity @s {NoAI:1b,Silent:1b,Invulnerable:1b}
execute as @e[team=rift_enemy] run effect give @s glowing infinite 255 true

execute as @a[team=rift_party] at @s run playsound mr_b:system/run_fail

tag @s add run_fail_end
schedule function mr_b:mechanics/run_fail/fail_start 10s


