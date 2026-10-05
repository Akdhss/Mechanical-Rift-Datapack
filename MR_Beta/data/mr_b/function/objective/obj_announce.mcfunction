execute unless entity @s[tag=announce_event] run return fail


execute as @e[team=rift_party] at @s run function mr_b:sfx/event_start

#execute as @e[name=player_spawn,scores={mr_event_random=1..}] run title @a[team=rift_party] title {text:"-- EVENT! --",bold:true,color:"dark_red"}

#execute as @e[name=player_spawn,scores={mr_event_dlc_random=1..}] run title @a[team=rift_party] title {text:"-- DLC EVENT! --",bold:true,color:"dark_red"}

tellraw @a[team=rift_party] {text:"------------------------------",bold:true,color:"gray"}
tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}
execute if score @s mr_event_random matches 1.. run tellraw @a[team=rift_party] {text:"  -- EVENT! --",bold:true,color:"dark_red"}
execute if score @s mr_event_dlc_random matches 1.. run tellraw @a[team=rift_party] {text:" -- DLC EVENT! --",bold:true,color:"dark_red"}
tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}



execute if score @s mr_event_random matches 1 run tellraw @a[team=rift_party] {text:" -- [ STORM ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 2 run tellraw @a[team=rift_party] {text:" -- [ STORM ] --",bold:true,color:"gold"}




tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}
tellraw @a[team=rift_party] {text:"------------------------------",bold:true,color:"gray"}