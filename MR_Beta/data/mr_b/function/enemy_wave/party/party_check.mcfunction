
scoreboard objectives add mr_scale_player_hundred dummy
scoreboard players set .const mr_scale_player_hundred 100

execute if score @e[name=player_spawn,sort=nearest,limit=1,type=marker] mr_difficulty matches 1 run scoreboard players set @s mr_enemy_scale_party 5
execute if score @e[name=player_spawn,sort=nearest,limit=1,type=marker] mr_difficulty matches 2 run scoreboard players set @s mr_enemy_scale_party 10
execute if score @e[name=player_spawn,sort=nearest,limit=1,type=marker] mr_difficulty matches 3 run scoreboard players set @s mr_enemy_scale_party 15
execute if score @e[name=player_spawn,sort=nearest,limit=1,type=marker] mr_difficulty matches 4 run scoreboard players set @s mr_enemy_scale_party 20

scoreboard players operation @s mr_enemy_scale_party *= @e[name=player_spawn,sort=nearest,limit=1,type=marker] mr_player_count

execute store result storage mr_b:scale party.whole int 0.01 run scoreboard players get @s mr_enemy_scale_party

# temp = whole * 100
scoreboard players operation @s mr_scale_player_hundred = @s mr_enemy_scale_party
scoreboard players operation @s mr_scale_player_hundred /= .const mr_scale_player_hundred

# decimal = original - (whole * 100)
scoreboard players operation @s mr_enemy_scale_party %= .const mr_scale_player_hundred

execute store result storage mr_b:scale party.decimal int 1 run scoreboard players get @s mr_enemy_scale_party

execute as @s run function mr_b:enemy_wave/party/party_scale with storage mr_b:scale party