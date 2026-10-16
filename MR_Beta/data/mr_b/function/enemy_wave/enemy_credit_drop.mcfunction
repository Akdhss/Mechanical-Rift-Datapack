


execute if entity @e[name=player_spawn,limit=1,tag=!objective_active,distance=0..,type=marker] run scoreboard players add @s mr_shop_player_currency_kill 25
execute if entity @e[name=player_spawn,limit=1,tag=objective_active,distance=0..,type=marker] run scoreboard players add @s mr_shop_player_currency_kill 10
scoreboard players remove @s mr_enemy_credit_drop 8

execute if items entity @s armor.head *[enchantments~[{enchantments:"mr_b:collector"}]] run effect give @s absorption 5 1 true 

execute if score @s mr_enemy_credit_drop matches 8.. run function mr_b:enemy_wave/enemy_credit_drop
