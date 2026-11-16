execute if entity @s[tag=creative_stay] run gamemode creative @s
execute if entity @s[tag=!creative_stay] run gamemode adventure @s
tag @s remove creative_stay
tag @s remove camera_spectator
effect give @s blindness 1 255 true
$tp @s $(x) $(y) $(z)
playsound mr_b:player/generic/deploy/player_deploy
