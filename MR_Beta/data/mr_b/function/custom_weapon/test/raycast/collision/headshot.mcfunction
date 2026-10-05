say head
execute as @e[name=player_spawn] if score @s mr_difficulty matches ..3 as @e[tag=hh_hit] run damage @s 35 mr_b:blade_call by @a[tag=raycast_hh,limit=1]
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 as @e[tag=hh_hit] run damage @s 50 mr_b:blade_call by @a[tag=raycast_hh,limit=1]

effect give @a[tag=raycast_hh] speed 5 0 true