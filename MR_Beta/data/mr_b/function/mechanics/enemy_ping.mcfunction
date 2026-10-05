team modify rift_enemy color dark_red
effect give @e[team=rift_enemy,name=!Mirror] glowing 2 1 true
scoreboard players reset @s mr_enemy_late_ping
execute as @a[team=rift_party] at @s run function mr_b:sfx/enemy_ping