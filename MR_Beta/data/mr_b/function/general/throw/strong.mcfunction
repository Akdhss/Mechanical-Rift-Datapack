playsound mr_b:player/throw master @a

execute store result score @s mr_generic_x1 run data get entity @s Pos[0] 1000
execute store result score @s mr_generic_y1 run data get entity @s Pos[1] 1000
execute store result score @s mr_generic_z1 run data get entity @s Pos[2] 1000

tp @s ^ ^ ^.1

execute store result score @s mr_generic_x2 run data get entity @s Pos[0] 1000
execute store result score @s mr_generic_y2 run data get entity @s Pos[1] 1000
execute store result score @s mr_generic_z2 run data get entity @s Pos[2] 1000

scoreboard players operation @s mr_generic_x2 -= @s mr_generic_x1
scoreboard players operation @s mr_generic_y2 -= @s mr_generic_y1
scoreboard players operation @s mr_generic_z2 -= @s mr_generic_z1

execute store result entity @s Motion[0] double 0.02 run scoreboard players get @s mr_generic_x2
execute store result entity @s Motion[1] double 0.02 run scoreboard players get @s mr_generic_y2
execute store result entity @s Motion[2] double 0.02 run scoreboard players get @s mr_generic_z2

tag @s add motion_added