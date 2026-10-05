execute at @s run particle dust{color:[0.85,0.09,0.09],scale:1} ~ ~2 ~ 0.5 0.3 0.5 500 15

tag @s add blade_call_hit

execute as @e[name=player_spawn] if score @s mr_difficulty matches ..3 as @e[tag=blade_call_hit] run damage @s 100 mr_b:blade_call by @a[tag=raycast_blade_call,limit=1]
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 as @e[tag=blade_call_hit] run damage @s 150 mr_b:blade_call by @a[tag=raycast_blade_call,limit=1]

tag @s remove blade_call_hit