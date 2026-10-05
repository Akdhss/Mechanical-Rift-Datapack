execute as @s[name=impact,tag=throwable_in_air] at @s run function mr_b:ability/grenade/impact/effect
execute as @s[name=molotov,tag=throwable_in_air] at @s run function mr_b:ability/grenade/molotov/effect
execute as @s[name=snare,tag=throwable_in_air] at @s run function mr_b:ability/grenade/snare/effect
execute as @s[name=impulse,tag=throwable_in_air] at @s run function mr_b:ability/grenade/impulse/effect







execute as @s[tag=throwable_in_air,name=!test_beacon] run kill @s