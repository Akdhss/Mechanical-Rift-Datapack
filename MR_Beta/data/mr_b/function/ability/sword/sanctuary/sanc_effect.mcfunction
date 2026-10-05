execute as @e[name=sanc_obelisk] at @s as @e[team=rift_party,distance=..7.5] run effect give @s regeneration 2 4 false
execute as @e[name=sanc_obelisk] at @s as @e[team=rift_party,distance=..7.5] run effect give @s resistance 2 1 false
execute if entity @e[name=sanc_obelisk] run schedule function mr_b:ability/sword/sanctuary/sanc_effect 2s