tag @s add blade_call_hit

execute as @e[name=player_spawn] if score @s mr_difficulty matches ..3 as @e[tag=blade_call_hit] run damage @s 12 mr_b:blade_call by @a[tag=raycast_blade_call,limit=1]
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 as @e[tag=blade_call_hit] run damage @s 35 mr_b:blade_call by @a[tag=raycast_blade_call,limit=1]

tag @s remove blade_call_hit