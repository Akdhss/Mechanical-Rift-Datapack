# If we're not in the ground, store motion then return
execute unless entity @s[nbt={inGround:1b}] run return run function mr_b:enchant/crossbow/ricochet/store_motion

particle item{item:"slime_ball"} ~ ~0.125 ~ 0.125 0.125 0.125 0.125 5

scoreboard players set MOD math 625
scoreboard players set NEG math -1

execute store result score POS_X math run data get entity @s Pos[0] 10000
execute store result score POS_Y math run data get entity @s Pos[1] 10000
execute store result score POS_Z math run data get entity @s Pos[2] 10000

scoreboard players operation POS_X math %= MOD math
scoreboard players operation POS_Y math %= MOD math
scoreboard players operation POS_Z math %= MOD math

execute store result score MOVE_X math run data get entity @s data.motion_x 9000
execute store result score MOVE_Y math run data get entity @s data.motion_y 9000
execute store result score MOVE_Z math run data get entity @s data.motion_z 9000

# Check the direction to ricochet
execute if score POS_X math matches 500 run scoreboard players operation MOVE_X math *= NEG math
execute if score POS_Y math matches 500 run scoreboard players operation MOVE_Y math *= NEG math
execute if score POS_Z math matches 500 run scoreboard players operation MOVE_Z math *= NEG math

execute if score POS_X math matches 124 run scoreboard players operation MOVE_X math *= NEG math
execute if score POS_Y math matches 124 run scoreboard players operation MOVE_Y math *= NEG math
execute if score POS_Z math matches 124 run scoreboard players operation MOVE_Z math *= NEG math

# Apply the motion and unstick the arrow
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get MOVE_X math
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get MOVE_Y math
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get MOVE_Z math
data modify entity @s inGround set value 0b

function mr_b:enchant/crossbow/ricochet/store_motion

# Decrease our ricochet counter
execute store result entity @s data.ricochets int 1 run data get entity @s data.ricochets 0.99
tag @s[nbt={data:{ricochets:0}}] remove ricochet_arrow
#tag @s[nbt={data:{ricochets:0}}] add eye_arrow

data modify entity @s[tag=!ricochet_arrow] SoundEvent set value "entity.arrow.hit"