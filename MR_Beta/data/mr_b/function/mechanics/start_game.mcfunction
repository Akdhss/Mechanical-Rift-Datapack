execute unless entity @e[name=player_spawn,limit=1,type=marker] run tellraw @a [{text:"No valid spawn exists!",bold:true,color:"dark_red"}]
execute unless entity @e[name=player_spawn,limit=1,type=marker] run return fail

execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run tellraw @a [{text:"Game ongoing!",bold:true,color:"dark_red"}]
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run tellraw @a [{text:"Game ongoing!",bold:true,color:"dark_red"}]
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail

execute unless score @e[name=player_spawn,limit=1,type=marker] mr_player_count matches 1.. run tellraw @a [{text:"No party registered!",bold:true,color:"dark_red"}]
execute unless score @e[name=player_spawn,limit=1,type=marker] mr_player_count matches 1.. run return fail

execute if entity @a[team=rift_party,scores={ready_state=0}] run say Players not ready!
execute if entity @a[team=rift_party,scores={ready_state=0}] run tellraw @a {selector:"@a[team=rift_party,scores={ready_state=0}]"}
execute if entity @a[team=rift_party,scores={ready_state=0}] run return fail
kill @e[tag=wave_mob]

execute as @a[team=rift_party] run function mr_b:general/lobby_menu/menu_off


execute if entity @a[team=rift_party] if score @s ready_state matches 1 run say Game Starting!
tellraw @a {text:"----------------------------------------",bold:true,color:"dark_green"}
tellraw @a {text:"",bold:true,color:"dark_green"}

tellraw @a {text:"-- Game Starting --",bold:true,color:"white"}

tellraw @a {text:"",bold:true,color:"dark_green"}

execute if score @e[name=player_spawn,limit=1,type=marker] mr_difficulty matches 1 run tellraw @a [{text:"Difficulty: ",bold:true,color:"gray"},{text:"Easy",bold:true,color:"green"}]
execute if score @e[name=player_spawn,limit=1,type=marker] mr_difficulty matches 2 run tellraw @a [{text:"Difficulty: ",bold:true,color:"gray"},{text:"Normal",bold:true,color:"gold"}]
execute if score @e[name=player_spawn,limit=1,type=marker] mr_difficulty matches 3 run tellraw @a [{text:"Difficulty: ",bold:true,color:"gray"},{text:"Hard",bold:true,color:"red"}]
execute if score @e[name=player_spawn,limit=1,type=marker] mr_difficulty matches 4 run tellraw @a [{text:"Difficulty: ",bold:true,color:"gray"},{text:"Lunatic",bold:true,color:"dark_red"}]

execute unless score @e[name=player_spawn,limit=1,type=marker] mr_wave_dlc matches 1.. run tellraw @a [{text:"DLC: ",bold:true,color:"gray"},{text:"None",bold:true,color:"gold"}]
execute if score @e[name=player_spawn,limit=1,type=marker] mr_wave_dlc matches 1 run tellraw @a [{text:"DLC: ",bold:true,color:"gray"},{text:"Nether Waste",bold:true,color:"dark_red"}]
execute if score @e[name=player_spawn,limit=1,type=marker] mr_wave_dlc matches 2 run tellraw @a [{text:"DLC: ",bold:true,color:"gray"},{text:"Traitor",bold:true,color:"#06576b"}]

tellraw @a [{text:"Players: ",bold:true,color:"gray"},{selector:"@a[team=rift_party,scores={ready_state=1}]"}]
tellraw @a {text:"",bold:true,color:"dark_green"}
tellraw @a {text:"----------------------------------------",bold:true,color:"dark_green"}

tag @e[name=player_spawn,limit=1,type=marker] add wave_starting
tag @a remove party_dead
tag @a remove lily_consumed
scoreboard players reset @a player_death
execute as @a run function mr_b:enchant/armor/chestplate/overtime/overtime_expire
execute as @e[name=player_spawn,limit=1,type=marker] run scoreboard players reset @s mr_event_time











schedule function mr_b:mechanics/redirect/redirect_game_start 4.5s
