execute as @a[team=rift_party,tag=!castle_rook,tag=!party_dead,tag=party_alive,distance=..3.5] at @s run function mr_b:ability/shield/castle/castle_collision


scoreboard players add .distance global_range 1


execute if score .distance global_range matches ..500 positioned ^ ^ ^.25 rotated ~ ~ run function mr_b:ability/shield/castle/castle_laser




