


scoreboard players add @s mr_shop_player_currency 25
scoreboard players remove @s mr_enemy_credit_drop 4

execute if score @s mr_enemy_credit_drop matches 8.. run function mr_b:enemy_wave/enemy_credit_drop
