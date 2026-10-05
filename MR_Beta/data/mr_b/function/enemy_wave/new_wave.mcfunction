execute as @a[team=rift_party] run function mr_b:shop/item_sets/set_refresh

### initial effects ###
execute as @a if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/gold_plating/gold_plating"}]] run effect give @s absorption infinite 9 true


scoreboard players set @e[name=player_spawn,limit=1] mr_wave_delay 1000

bossbar set wave_delay players @a[tag=test]
execute at @a run function mr_b:sfx/wave_start

title @a[team=rift_party] title {text:"-- NEW WAVE INCOMING --",bold:true,color:"dark_red"}
title @a[team=rift_party] subtitle {text:"",bold:true,color:"gray"}
execute as @e[name=player_spawn,limit=1] run scoreboard players add @s mr_wave 1
execute as @e[name=player_spawn,limit=1] run function mr_b:enemy_wave/wave_scale
execute as @e[name=player_spawn,limit=1] run scoreboard players operation @s mr_enemy_spawn = @s mr_wave_enemy
execute as @e[name=player_spawn,limit=1] run tag @s remove wave_finished

execute as @e[name=player_spawn] store result score @s mr_dlc_traitor_chance run random value 1..3
execute as @e[name=player_spawn] if score @s mr_player_count matches 2.. if score @s mr_wave_dlc matches 2 if score @s mr_dlc_traitor_chance matches 1 run tag @r[team=rift_party] add traitor
execute as @a[tag=traitor] run tellraw @s {text:"----- You are the traitor -----",bold:true,color:"dark_red"}

execute as @a[tag=lily_consumed] run tag @s remove lily_consumed

