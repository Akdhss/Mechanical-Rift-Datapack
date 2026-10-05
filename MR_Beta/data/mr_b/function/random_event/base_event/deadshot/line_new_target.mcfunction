execute store result score @s global_random run random value 1..5



execute if score @s global_random matches 1 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “End of the line.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 2 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Target acquired.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 3 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Start running boy.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 4 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “No escape.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 5 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Caught your scent.” ",bold:false,color:"dark_red"}]

