



tellraw @a[team=rift_party] {text:"------------------------------",bold:true,color:"gray"}
tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}
execute if score @s mr_obj_random matches 1.. run tellraw @a[team=rift_party] {text:"  -- ! OBJECTIVE ! --",bold:true,color:"dark_red"}
tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}



execute if score @s mr_obj_random matches 1 run tellraw @a[team=rift_party] {text:" -- [ STORM ] --",bold:true,color:"gold"}
execute if score @s mr_obj_random matches 2 run tellraw @a[team=rift_party] {text:" -- [ STORM ] --",bold:true,color:"gold"}




tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}
tellraw @a[team=rift_party] {text:"------------------------------",bold:true,color:"gray"}