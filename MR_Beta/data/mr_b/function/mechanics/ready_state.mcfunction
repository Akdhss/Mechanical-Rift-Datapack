execute unless entity @e[name=player_spawn,limit=1,type=marker] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail

scoreboard players add @p[team=rift_party] ready_state 1
execute as @p[team=rift_party,scores={ready_state=1}] run title @s actionbar {text:"-- READY --",bold:true,color:"dark_green"}
execute as @p[team=rift_party,scores={ready_state=2}] run title @s actionbar {text:"-- NOT READY --",bold:true,color:"dark_red"}

execute as @a[team=rift_party,scores={ready_state=2..}] run scoreboard players set @s ready_state 0