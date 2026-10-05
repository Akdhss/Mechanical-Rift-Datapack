execute unless entity @s[tag=announce_event] run return fail


execute as @e[team=rift_party] at @s run function mr_b:sfx/event_start

#execute as @e[name=player_spawn,scores={mr_event_random=1..}] run title @a[team=rift_party] title {text:"-- EVENT! --",bold:true,color:"dark_red"}

#execute as @e[name=player_spawn,scores={mr_event_dlc_random=1..}] run title @a[team=rift_party] title {text:"-- DLC EVENT! --",bold:true,color:"dark_red"}

tellraw @a[team=rift_party] {text:"------------------------------",bold:true,color:"gray"}
tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}
execute if score @s mr_event_random matches 1.. run tellraw @a[team=rift_party] {text:"  -- EVENT! --",bold:true,color:"dark_red"}
execute if score @s mr_event_dlc_random matches 1.. run tellraw @a[team=rift_party] {text:" -- DLC EVENT! --",bold:true,color:"dark_red"}
tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}



execute if score @s mr_event_random matches 1 run tellraw @a[team=rift_party] {text:" -- [ BOMBERS ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 2 run tellraw @a[team=rift_party] {text:" -- [ SPEARMAN ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 3 run tellraw @a[team=rift_party] {text:" -- [ GHOST ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 4 run tellraw @a[team=rift_party] {text:" -- [ RAID ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 5 run tellraw @a[team=rift_party] {text:" -- [ DEADSHOT ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 6 run tellraw @a[team=rift_party] {text:" -- [ MIRROR ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 7 run tellraw @a[team=rift_party] {text:" -- [ SENTINEL ] --",bold:true,color:"gold"}



execute if score @s mr_event_random matches 8 run tellraw @a[team=rift_party] {text:" -- [ SILENCE ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 9 run tellraw @a[team=rift_party] {text:" -- [ MUTATION ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 10 run tellraw @a[team=rift_party] {text:" -- [ METEOR ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 11 run tellraw @a[team=rift_party] {text:" -- [ RE:LIFE ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 12 run tellraw @a[team=rift_party] {text:" -- [ HEMORRHAGE ] --",bold:true,color:"gold"}
execute if score @s mr_event_random matches 13 run tellraw @a[team=rift_party] {text:" -- [ DISAPPEAR ] --",bold:true,color:"gold"}



execute if score @s mr_event_dlc_random matches 1 run tellraw @a[team=rift_party] {text:" -- [ RED MOON ] --",bold:true,color:"gold"}
execute if score @s mr_event_dlc_random matches 2 run tellraw @a[team=rift_party] {text:" -- [ FIRE STORM ] --",bold:true,color:"gold"}
execute if score @s mr_event_dlc_random matches 3 run tellraw @a[team=rift_party] {text:" -- [ BEASTS ] --",bold:true,color:"gold"}



tellraw @a[team=rift_party] {text:"",bold:true,color:"dark_red"}
tellraw @a[team=rift_party] {text:"------------------------------",bold:true,color:"gray"}