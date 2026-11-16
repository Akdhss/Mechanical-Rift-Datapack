
tp @s ~ ~.5 ~
execute store result storage mr_b:cutscene coord_begin.x double 0.001 run data get entity @s Pos[0] 1000
execute store result storage mr_b:cutscene coord_begin.y double 0.001 run data get entity @s Pos[1] 1000
execute store result storage mr_b:cutscene coord_begin.z double 0.001 run data get entity @s Pos[2] 1000
execute store result storage mr_b:cutscene coord_begin.r1 float 0.001 run data get entity @s Rotation[0] 1000
execute store result storage mr_b:cutscene coord_begin.r2 float 0.001 run data get entity @s Rotation[1] 1000

execute if entity @s[gamemode=creative] run tag @s add creative_stay

# --- X Coordinate ---
execute store result score #pos temp run data get entity @s Pos[0] 1000
execute store result score #rand temp run random value -10000..10000
scoreboard players operation #pos temp += #rand temp
execute store result storage mr_b:cutscene coord_begin.x2 double 0.001 run scoreboard players get #pos temp

# --- Z Coordinate ---
execute store result score #pos temp run data get entity @s Pos[2] 1000
execute store result score #rand temp run random value -10000..10000
scoreboard players operation #pos temp += #rand temp
execute store result storage mr_b:cutscene coord_begin.z2 double 0.001 run scoreboard players get #pos temp

execute store result score #pos temp run data get entity @s Rotation[0] 1000
execute store result score #rand temp run random value -100000..100000
scoreboard players operation #pos temp += #rand temp
execute store result storage mr_b:cutscene coord_begin.r1_2 double 0.001 run scoreboard players get #pos temp


execute at @s run function mr_b:general/camera_cutscene/spawn_check_macro with storage mr_b:cutscene coord_begin