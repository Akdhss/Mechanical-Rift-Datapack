execute if score @s mr_wave matches ..2 run function mr_b:objective/obj_check
execute if score @s mr_wave matches ..2 run return fail

execute if entity @s[tag=obj_storm] run function mr_b:objective/obj_check
execute if entity @s[tag=obj_storm] run return fail

scoreboard players add @s mr_obj_count 1
tag @s add obj_storm
tag @s add objective_active_force

execute as @a[team=rift_party] at @s run playsound mr_b:objective/storm/storm_start master @s
bossbar set minecraft:obj_storm max 2400
bossbar set minecraft:obj_storm players @a[team=rift_party] 

tellraw @a[team=rift_party] {text:"------------------------------",bold:true,color:"gray"}
tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}
execute if score @s mr_obj_random matches 1.. run tellraw @a[team=rift_party] {text:"  -- ! OBJECTIVE ! --",bold:true,color:"dark_red"}
tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}



tellraw @a[team=rift_party] {text:" -- [ STORM ] --",bold:true,color:"gold"}




tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}
tellraw @a[team=rift_party] {text:"------------------------------",bold:true,color:"gray"}