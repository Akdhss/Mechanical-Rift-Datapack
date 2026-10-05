execute if score @s mr_difficulty matches 1 run title @a[team=rift_party] actionbar {text:"-- Difficulty: Easy --",bold:true,color:"dark_green"}
execute if score @s mr_difficulty matches 2 run title @a[team=rift_party] actionbar {text:"-- Difficulty: Normal --",bold:true,color:"gold"}
execute if score @s mr_difficulty matches 3 run title @a[team=rift_party] actionbar {text:"-- Difficulty: Hard --",bold:true,color:"red"}
execute if score @s mr_difficulty matches 4 run title @a[team=rift_party] actionbar {text:"-- Difficulty: Lunatic --",bold:true,color:"dark_red"}