#execute if entity @e[name=player_spawn,limit=1,type=marker,tag=wave_starting] run return fail
#execute if entity @e[name=player_spawn,limit=1,type=marker,tag=run_ongoing] run return fail
kill @e[tag=wave_mob]
kill @e[name=east_spawn]
kill @e[name=south_spawn]
kill @e[name=north_spawn]
kill @e[name=west_spawn]
kill @e[name=lobby_spawn]
kill @e[name=player_spawn]

tellraw @a {text:"----------------------------------------",bold:true,color:"gold"}
tellraw @a {text:"",bold:true,color:"gold"}


gamemode creative @a[team=rift_party]

execute as @a[team=rift_party] run function mr_b:enchant/armor/chestplate/overtime/overtime_expire

scoreboard players reset @a mr_player_count_kill
scoreboard players reset @a mr_player_count_damage_dealt_melee
scoreboard players reset @a mr_player_count_damage_taken
scoreboard players reset @a mr_player_count_deaths

execute as @a[team=rift_party] run function mr_b:shop/sell_check

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

tp @a[team=rift_party] @e[name=lobby_spawn,limit=1]




clear @a written_book[rarity=epic]