stopsound @s master mr_b:enemy/boss/fallen/skill_wind_up


execute store result score @s global_random run random value 1..7

execute if score @s global_random matches 1 run playsound mr_b:enemy/boss/fallen/dismantle master @a ~ ~ ~ 1 .85
execute if score @s global_random matches 2 run playsound mr_b:enemy/boss/fallen/dismantle master @a ~ ~ ~ 1 .9
execute if score @s global_random matches 3 run playsound mr_b:enemy/boss/fallen/dismantle master @a ~ ~ ~ 1 .95
execute if score @s global_random matches 4 run playsound mr_b:enemy/boss/fallen/dismantle master @a ~ ~ ~ 1 1
execute if score @s global_random matches 5 run playsound mr_b:enemy/boss/fallen/dismantle master @a ~ ~ ~ 1 1.05
execute if score @s global_random matches 6 run playsound mr_b:enemy/boss/fallen/dismantle master @a ~ ~ ~ 1 1.1
execute if score @s global_random matches 7 run playsound mr_b:enemy/boss/fallen/dismantle master @a ~ ~ ~ 1 1.15