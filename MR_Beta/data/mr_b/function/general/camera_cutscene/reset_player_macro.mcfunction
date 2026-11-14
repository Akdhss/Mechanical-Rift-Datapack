execute if entity @s[tag=creative_stay] run gamemode creative @s
execute if entity @s[tag=!creative_stay] run gamemode adventure @s
tag @s remove creative_stay
tag @s remove camera_spectator
$tp @s $(x) $(y) $(z)
playsound mr_b:player/generic/deploy/player_deploy
