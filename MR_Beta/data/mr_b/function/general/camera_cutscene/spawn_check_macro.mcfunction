$tp @s $(x) $(y) $(z) $(r1) $(r2)

gamemode spectator @s
tag @s add camera_spectator

# Summon 50 blocks above the player's exact coordinates
#$summon minecraft:item_display $(x) ~50 $(z) {view_range:0f,teleport_duration:20,Tags:["camera","camera_new"],Rotation:[$(r1)f,90f]}
$summon minecraft:item_display $(x2) ~50 $(z2) {view_range:0f,teleport_duration:30,Tags:["camera","camera_new"],Rotation:[$(r1_2)f,90f]}

# Link UUID scores to this exact new camera
scoreboard players operation @e[type=item_display,tag=camera_new,limit=1] uuid0 = @s uuid0
scoreboard players operation @e[type=item_display,tag=camera_new,limit=1] uuid1 = @s uuid1
scoreboard players operation @e[type=item_display,tag=camera_new,limit=1] uuid2 = @s uuid2
scoreboard players operation @e[type=item_display,tag=camera_new,limit=1] uuid3 = @s uuid3

# Save this player's return coordinates (multiplied by 1000 for precision) onto the camera
execute store result score @e[type=item_display,tag=camera_new,limit=1] cam_x run data get entity @s Pos[0] 1000
execute store result score @e[type=item_display,tag=camera_new,limit=1] cam_y run data get entity @s Pos[1] 1000
execute store result score @e[type=item_display,tag=camera_new,limit=1] cam_z run data get entity @s Pos[2] 1000

# Spectate this specific camera
spectate @e[type=item_display,tag=camera_new,limit=1] @s

# Teleport the camera down to trigger the 40-tick smooth interpolation
$tp @e[type=item_display,tag=camera_new,limit=1] $(x) $(y) $(z) $(r1) 0

# Immediately remove camera_new so the next player's spawn never collides with it
tag @e[type=item_display,tag=camera_new] remove camera_new
