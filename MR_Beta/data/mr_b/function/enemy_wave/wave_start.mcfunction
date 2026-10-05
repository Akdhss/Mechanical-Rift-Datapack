execute as @e[name=player_spawn] run tag @s add run_ongoing

### initial effects ###
execute as @a if items entity @a armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/gold_plating/gold_plating"}]] run effect give @s absorption infinite 9 true

execute as @e[name=player_spawn,limit=1] run scoreboard players set @s mr_wave_enemy 60

execute store result bossbar wave_progress max run scoreboard players get @s mr_wave_enemy

execute as @e[name=player_spawn,limit=1] run scoreboard players set @s mr_wave 5
tag @a remove traitor
execute as @e[name=player_spawn,limit=1] run function mr_b:enemy_wave/wave_scale

execute as @e[name=player_spawn] if score @s mr_player_count matches 2.. if score @s mr_wave_dlc matches 2 run team modify rift_party friendlyFire true
execute as @e[name=player_spawn] store result score @s mr_dlc_traitor_chance run random value 1..3
execute as @e[name=player_spawn] if score @s mr_player_count matches 2.. if score @s mr_wave_dlc matches 2 if score @s mr_dlc_traitor_chance matches 1 run tag @r[team=rift_party] add traitor
execute as @a[tag=traitor] run tellraw @s {text:"----- You are the traitor -----",bold:true,color:"dark_red"}


bossbar set wave_delay players @a[tag=test]
execute store result bossbar wave_delay max run scoreboard players get @e[name=player_spawn,limit=1] mr_wave_delay

execute as @e[name=player_spawn] if score @s mr_wave_delay matches ..0 run scoreboard players operation @s mr_enemy_spawn = @s mr_wave_enemy

