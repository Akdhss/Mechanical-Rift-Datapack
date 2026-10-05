execute unless score @s mr_wave_dlc matches 1.. run title @a[team=rift_party] actionbar {text:"-- [DLC] None --",bold:true,color:"gold"}
execute if score @s mr_wave_dlc matches 1 run title @a[team=rift_party] actionbar {text:"-- [DLC] Nether Waste --",bold:true,color:"dark_red"}
execute if score @s mr_wave_dlc matches 2 run title @a[team=rift_party] actionbar {text:"-- [DLC] Traitor --",bold:true,color:"#06576b"}
