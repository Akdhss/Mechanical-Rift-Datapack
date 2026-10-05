# warn-off-file target-selector-no-type

tp @s ~ ~ ~ ~10 ~

particle trial_spawner_detection ~ ~0.5 ~ 3 .5 3 0 5 force
particle ominous_spawning ~ ~0.5 ~ 3 .5 3 0 5 force

execute positioned ^7.50 ^0.2 ^0.00 unless entity @e[distance=1..7.5,name=sanc_obelisk] at @s run particle dust_color_transition{from_color:[0.0,0.14,0.8],to_color:[0.0,0.86,0.33],scale:2.5} ^7.50 ^0.2 ^0.00 0 0 0 0 1 force
execute positioned ^0.00 ^0.2 ^-7.50 unless entity @e[distance=1..7.5,name=sanc_obelisk] at @s run particle dust_color_transition{from_color:[0.0,0.14,0.8],to_color:[0.0,0.86,0.33],scale:2.5} ^0.00 ^0.2 ^-7.50 0 0 0 0 1 force
execute positioned ^-7.50 ^0.2 ^0.00 unless entity @e[distance=1..7.5,name=sanc_obelisk] at @s run particle dust_color_transition{from_color:[0.0,0.14,0.8],to_color:[0.0,0.86,0.33],scale:2.5} ^-7.50 ^0.2 ^0.00 0 0 0 0 1 force
execute positioned ^0.00 ^0.2 ^7.50 unless entity @e[distance=1..7.5,name=sanc_obelisk] at @s run particle dust_color_transition{from_color:[0.0,0.14,0.8],to_color:[0.0,0.86,0.33],scale:2.5} ^0.00 ^0.2 ^7.50 0 0 0 0 1 force