# warn-off-file execute-group

scoreboard players add @s .test 1
execute if score @s .test matches 100.. store result storage mr_b:backroom toggle.gate float 1 run random value 1..46
execute if score @s .test matches 100.. run function mr_b:world_origin_exclusive/backrooms/macro with storage mr_b:backroom toggle
execute if score @s .test matches 100.. run data remove storage mr_b:backroom toggle
execute if score @s .test matches 115.. run scoreboard players reset @s .test



fill 134 55 168 210 55 63 minecraft:dirt_path replace dirt