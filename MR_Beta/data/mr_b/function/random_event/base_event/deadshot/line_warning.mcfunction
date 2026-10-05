execute store result score @s global_random run random value 1..5

execute if score @s global_random matches 1 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Your prayers aren't enough.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 2 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Recalculating.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 3 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Lucky.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 4 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Still breathing.” ",bold:false,color:"dark_red"}]
execute if score @s global_random matches 5 run tellraw @a[team=rift_party] [{text:"[ ",bold:true,color:"white"},{selector:"@s",bold:true,color:"dark_red"},{text:" ] ",bold:true,color:"white"},{text:" “Warning shot.” ",bold:false,color:"dark_red"}]

