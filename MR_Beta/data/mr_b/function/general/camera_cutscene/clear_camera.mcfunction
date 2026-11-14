# 1. Tag the exact camera running this function
tag @s add active_camera

# 2. Copy this camera's saved return coords into storage for the macro
execute store result storage mr_b:cutscene coord_end.x double 0.001 run scoreboard players get @s cam_x
execute store result storage mr_b:cutscene coord_end.y double 0.001 run scoreboard players get @s cam_y
execute store result storage mr_b:cutscene coord_end.z double 0.001 run scoreboard players get @s cam_z

# 3. Find the matching player and run the reset macro on them
execute as @a[tag=camera_spectator] if score @s uuid0 = @e[tag=active_camera,limit=1] uuid0 if score @s uuid1 = @e[tag=active_camera,limit=1] uuid1 if score @s uuid2 = @e[tag=active_camera,limit=1] uuid2 if score @s uuid3 = @e[tag=active_camera,limit=1] uuid3 run function mr_b:general/camera_cutscene/reset_player_macro with storage mr_b:cutscene coord_end

# 4. Kill ONLY this camera
kill @s
