particle mycelium ~ ~ ~ .1 .1 .1 0 5 force

tp @s ~ ~-.05 ~
execute at @s if block ~ ~-.05 ~ air run function mr_b:effect/ground/ground_effect
tag @s remove mr_ground