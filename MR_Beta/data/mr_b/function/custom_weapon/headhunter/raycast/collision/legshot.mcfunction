say leg
execute as @e[name=player_spawn] if score @s mr_difficulty matches ..3 as @e[tag=hh_hit] run damage @s 10 mr_b:blade_call by @a[tag=raycast_hh,limit=1]
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 as @e[tag=hh_hit] run damage @s 15 mr_b:blade_call by @a[tag=raycast_hh,limit=1]