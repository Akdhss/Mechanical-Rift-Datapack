execute at @s store result storage mr_b:launch jump.yaw double 1 run data get entity @s Rotation[0]
execute at @s store result storage mr_b:launch jump.pitch double 1 run data get entity @s Rotation[1]

rotate @s ~ ~

tp @s ~ ~ ~