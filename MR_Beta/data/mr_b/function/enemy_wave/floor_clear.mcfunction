tellraw @a {text:"----------------------------------------",bold:true,color:"gold"}
tellraw @a {text:"",bold:true,color:"gold"}


title @a[team=rift_party] title {text:"-- FLOOR CLEARED --",bold:true,color:"gray"}
title @a[team=rift_party] subtitle {text:"",bold:true,color:"gray"}
gamemode creative @a[team=rift_party]
tellraw @a {text:"",bold:true,color:"gold"}

tellraw @s {text:"----------------------------------------",bold:true,color:"gold"}
tellraw @s {text:"",bold:true,color:"dark_red"}
tellraw @s ["",{text:"Kills: "},{score:{name:"@s",objective:"mr_player_count_kill"},color:"gold"}]
tellraw @s ["",{text:"Damage Dealt (Melee): "},{score:{name:"@s",objective:"mr_player_count_damage_dealt_melee"},color:"gold"}]
tellraw @s ["",{text:"Damage Taken: "},{score:{name:"@s",objective:"mr_player_count_damage_taken"},color:"gold"}]
tellraw @s ["",{text:"Deaths: "},{score:{name:"@s",objective:"mr_player_count_deaths"},color:"gold"}]
tellraw @s {text:"",bold:true,color:"dark_red"}
tellraw @s {text:"----------------------------------------",bold:true,color:"gold"}




execute as @a[team=rift_party] run function mr_b:enchant/armor/chestplate/overtime/overtime_expire

scoreboard players reset @a mr_player_count_kill
scoreboard players reset @a mr_player_count_damage_dealt_melee
scoreboard players reset @a mr_player_count_damage_taken
scoreboard players reset @a mr_player_count_deaths

execute as @a[team=rift_party] run function mr_b:shop/sell_check

execute as @e[name=player_spawn] run scoreboard players reset @s mr_enemy_count
execute as @e[name=player_spawn] run scoreboard players reset @s mr_enemy_spawn
execute as @e[name=player_spawn] run scoreboard players reset @s mr_wave
execute as @e[name=player_spawn] run scoreboard players reset @s mr_wave_count
execute as @e[name=player_spawn] run scoreboard players reset @s mr_event_time
execute as @e[name=player_spawn] run scoreboard players reset @s mr_wave_delay
execute as @e[name=player_spawn] run tag @s remove run_ongoing
execute as @a[team=rift_party] run scoreboard players reset @s player_death
execute as @a[tag=party_alive] run tag @s remove party_alive
execute as @a[tag=party_dead] run tag @s remove party_dead
execute as @a[team=rift_party] run scoreboard players reset @s mr_ability_castle_count
bossbar remove boss_bar 
bossbar remove wave_progress
bossbar remove ability_cd
bossbar remove wave_delay
execute as @a[team=rift_party] at @s run function mr_b:mechanics/ready_state
execute as @e[team=rift_party] run scoreboard players reset @s mr_enemy_credit_drop


scoreboard players reset @a mr_ability_castle_count
scoreboard players reset @a mr_ability_castle_cd
scoreboard players reset @a mr_ability_frost_touch_cd_refresh
scoreboard players reset @a mr_ability_frost_touch_count
scoreboard players reset @a mr_ability_sanc_cd_count
scoreboard players reset @a mr_ability_sanc_cd

tag @a remove determination_used
tag @a remove determination_active

tp @a[team=rift_party] @e[name=lobby_spawn,limit=1]




clear @a written_book[rarity=epic]