# warn-off-file execute-group
execute if entity @s[tag=run_fail_end] run return fail

execute as @e[team=rift_enemy] run data merge entity @s {NoAI:1b,Silent:1b}
execute as @e[team=rift_enemy] run effect give @s glowing infinite 255 true

tag @s add run_fail_end
schedule function mr_b:mechanics/run_fail/fail_start 10s


