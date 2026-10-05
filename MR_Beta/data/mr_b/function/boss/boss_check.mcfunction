execute as @e[name=player_spawn] at @s store result score @s mr_boss_random run random value 1..2
function mr_b:boss/boss_announcement
scoreboard players set @s mr_wave_delay 1
execute as @e[name=player_spawn,scores={mr_boss_random=1}] run function mr_b:boss/the_captain/captain
execute as @e[name=player_spawn,scores={mr_boss_random=2}] run function mr_b:boss/the_fallen/fallen
execute as @e[name=player_spawn] run scoreboard players reset @s mr_boss_random