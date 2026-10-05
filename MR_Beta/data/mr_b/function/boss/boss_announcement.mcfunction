title @a[team=rift_party] title {text:"-- BOSS --",bold:true,color:"dark_red"}
execute as @e[team=rift_party] at @s run function mr_b:sfx/event_start
execute as @e[name=player_spawn,scores={mr_boss_random=1}] run title @a[team=rift_party] subtitle {text:"-- [ THE CAPTAIN ] --",bold:true,color:"gold"}
execute as @e[name=player_spawn,scores={mr_boss_random=2}] run title @a[team=rift_party] subtitle {text:"-- [ THE FALLEN ] --",bold:true,color:"gold"}
