execute store result score @s global_random run random value 1..5

execute at @s run playsound mr_b:enemy/deadshot/gunshot hostile @s ~ ~ ~ 0.05

scoreboard players reset @e[tag=deadshot_killing_fail] mr_special_enemy_deadshot_snipe
tag @e remove deadshot_killing_fail

execute if score @s global_random matches 1 on attacker run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “I’ve killed better men than you for less.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 2 on attacker run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Target down.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 3 on attacker run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Right between the eyes.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 4 on attacker run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Sleep.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 5 on attacker run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Try moving next time.” ",bold:false,color:"dark_red"}]

advancement revoke @s only mr_b:enemy_line/deadshot_kill