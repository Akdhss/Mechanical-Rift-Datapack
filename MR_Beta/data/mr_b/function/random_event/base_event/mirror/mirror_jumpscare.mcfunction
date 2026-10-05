execute on attacker run function mr_b:random_event/base_event/mirror/mirror_reset



stopsound @s master
stopsound @s hostile
playsound mr_b:enemy/mirror/jumpscare player @s ~ ~ ~ 2.5 1 1
playsound mr_b:enemy/mirror/panic player @s ~ ~ ~ 2.5 1 1


effect give @s darkness 10 0 true
effect give @s blindness 10 5 true
effect give @s nausea 10 5 true