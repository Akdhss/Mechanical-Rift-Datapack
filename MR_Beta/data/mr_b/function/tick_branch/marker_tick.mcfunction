# warn-off-file target-selector-no-type
# warn-off-file execute-group

execute if entity @s[tag=newly_set_player_spawn] run function mr_b:set_placement/player_spawn_fix

execute store result score @s mr_enemy_count if entity @n[limit=999,tag=wave_mob,distance=0..]
execute store result score @s mr_player_count if entity @a[team=rift_party]
bossbar set wave_progress name [{"text":"Enemies Left: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"mr_enemy_count"}}]

execute store result bossbar wave_delay value run scoreboard players get @s mr_wave_delay
execute if entity @s[tag=run_ongoing] run scoreboard players add @s mr_enemy_aggro_time 1
execute unless score @s mr_enemy_count matches 1.. run scoreboard players reset @s mr_enemy_aggro_time
execute if score @s mr_enemy_aggro_time matches 250.. as @e[team=rift_enemy,distance=0..] run data modify entity @s last_hurt_by_mob set from entity @e[team=rift_party,distance=0..,limit=1,sort=random] UUID
execute if score @s mr_enemy_aggro_time matches 250.. run scoreboard players reset @s mr_enemy_aggro_time





#enemy spawn start
execute if score @s mr_enemy_spawn matches 1.. if score @s mr_enemy_count matches ..59 at @s run function mr_b:enemy_wave/enemy_spawn


#endless spawn
execute if entity @s[tag=endless_enabled] if score @s mr_wave matches ..5 if score @s mr_enemy_count matches 1.. run scoreboard players add @s mr_enemy_endless_time 1
execute if entity @s[tag=endless_enabled] if score @s mr_enemy_endless_time matches 1500.. run function mr_b:enemy_wave/endless_spawn
execute if entity @s[tag=endless_enabled] if score @s mr_enemy_endless_time matches 1500.. run scoreboard players reset @s mr_enemy_endless_time



execute unless score @s[tag=!obj_storm] mr_enemy_count matches 1.. if score @s mr_wave_delay matches 1.. at @s run bossbar set wave_delay players @a[team=rift_party]
execute if score @s mr_enemy_count matches 1.. if score @s mr_wave_delay matches 1.. at @s run bossbar set wave_delay players @a[tag=test]


execute if score @s mr_enemy_count matches 1..10 unless score @s mr_enemy_spawn matches 1.. run scoreboard players add @s mr_enemy_late_ping 1
execute if score @s mr_enemy_count matches 11.. run scoreboard players reset @s mr_enemy_late_ping
execute if score @s[tag=wave_finished] mr_enemy_spawn matches 1.. run tag @s remove wave_finished
execute if score @s[tag=wave_starting] mr_enemy_spawn matches 1.. run tag @s remove wave_starting
execute if score @s mr_enemy_late_ping matches 150.. if score @s mr_enemy_count matches 1..10 run function mr_b:mechanics/enemy_ping


execute if score @s mr_wave_delay matches 20 as @n[limit=999,team=rift_party,distance=0..] at @s run function mr_b:sfx/start_ding
execute if score @s mr_wave_delay matches 40 as @n[limit=999,team=rift_party,distance=0..] at @s run function mr_b:sfx/start_ding
execute if score @s mr_wave_delay matches 60 as @n[limit=999,team=rift_party,distance=0..] at @s run function mr_b:sfx/start_ding


execute if score @s[tag=!objective_active] mr_enemy_count matches 0 if score @s mr_wave_delay matches 0 run scoreboard players set @s mr_wave_delay 1000
execute if score @s[tag=!objective_active] mr_enemy_count matches 0 if score @s mr_wave_delay matches 1.. run scoreboard players remove @s mr_wave_delay 1
execute if entity @s[tag=run_ongoing] if score @s mr_wave matches ..5 if score @s mr_enemy_count matches 0 if score @s mr_wave_delay matches 0 run function mr_b:enemy_wave/new_wave
execute if entity @s[tag=!run_ongoing] if score @s mr_enemy_count matches 0 if score @s mr_wave_delay matches 0 run function mr_b:enemy_wave/wave_start


execute if entity @s[tag=run_ongoing] if entity @a[tag=party_dead,tag=!determination_active] unless entity @a[tag=party_alive] run function mr_b:mechanics/run_fail



execute unless score @s mr_enemy_spawn matches 1.. if entity @s[tag=!wave_finished,tag=!wave_starting,tag=!objective_active] if score @s mr_enemy_count matches 0 if score @s mr_wave_delay matches 1.. as @a[team=rift_party] run function mr_b:enemy_wave/end_wave


execute if entity @s[tag=wave_starting] as @a[team=rift_party] if score @s player_death matches 1.. run function mr_b:mechanics/dead_respawn

execute if entity @s[tag=!run_ongoing,tag=!wave_starting,distance=0..] store result score @s mr_team_current if entity @a[team=rift_party,scores={ready_state=1},distance=0..]
execute if entity @s[tag=!run_ongoing,tag=!wave_starting,distance=0..] store result score @s mr_team_max if entity @a[team=rift_party,distance=0..]

execute if entity @s[tag=!run_ongoing,tag=!wave_starting] store result bossbar team_status value run scoreboard players get @s mr_team_current
execute if entity @s[tag=!run_ongoing,tag=!wave_starting] store result bossbar team_status max run scoreboard players get @s mr_team_max

bossbar set team_status players @a[team=rift_party,tag=!party_alive,tag=!party_dead]



execute if score @s mr_wave_delay matches 999 if score @s mr_wave matches 5 run function mr_b:boss/boss_check

execute if score @s mr_wave matches 6 if score @s mr_enemy_count matches 0 if entity @n[limit=999,tag=party_alive,distance=0..] run function mr_b:enemy_wave/floor_clear

execute if entity @s[tag=run_ongoing] store result bossbar wave_progress value run scoreboard players get @s mr_enemy_count


execute if score @s mr_wave matches ..5 if score @s mr_enemy_count matches 1.. run scoreboard players add @s mr_event_time 1
execute if score @s[tag=!event_guaranteed] mr_event_time matches 600.. store result score @s mr_event_chance run random value 1..2
execute if score @s[tag=!event_guaranteed] mr_event_time matches 600.. run scoreboard players reset @s mr_event_time
execute if score @s[tag=event_guaranteed] mr_event_time matches 600.. store result score @s mr_event_chance run random value 2..3
execute if score @s[tag=event_guaranteed] mr_event_time matches 600.. run scoreboard players reset @s mr_event_time
execute if score @s mr_event_chance matches 2.. run function mr_b:random_event/event_check
execute if score @s mr_event_chance matches 2.. run scoreboard players reset @s mr_event_chance

execute if score @s mr_event_meteor_dur matches 1.. run scoreboard players remove @s mr_event_meteor_dur 1
execute if score @s mr_event_meteor_dur matches 1.. run scoreboard players add @s mr_event_meteor_freq 1
execute if score @s mr_event_meteor_dur matches ..0 run scoreboard players reset @s mr_event_meteor_dur
execute if score @s mr_event_meteor_freq matches 100.. run function mr_b:random_event/base_event/meteor/meteor_spawn
execute if score @s mr_event_meteor_freq matches 100.. run scoreboard players reset @s mr_event_meteor_freq

execute unless score @s mr_wave_dlc matches 2 run effect give @n[limit=999,team=rift_party,distance=0..] glowing 1 0 true

execute if entity @s[tag=hemorrhage_active] run scoreboard players remove @s mr_event_hemo_time 1
execute if entity @s[tag=hemorrhage_active] if score @s mr_event_hemo_time matches ..0 run tag @s remove hemorrhage_active
execute if score @s mr_event_hemo_time matches ..0 run scoreboard players reset @s mr_event_hemo_time
execute if entity @s[tag=hemorrhage_active,distance=0..] as @e[nbt={HurtTime:9s},distance=0..] run tag @s add mr_bleed
execute if entity @s[tag=hemorrhage_active,distance=0..] as @e[nbt={HurtTime:9s},distance=0..] run scoreboard players set @s mr_effect_bleed_time 50
execute if entity @s[tag=hemorrhage_active,distance=0..] as @e[nbt={HurtTime:9s},tag=!bleed_hit,distance=0..] run scoreboard players add @s mr_effect_bleed_stack 1


execute if entity @e[tag=boss,distance=0..] run tag @s add boss_alive
execute unless entity @e[tag=boss,distance=0..] if entity @s[tag=boss_alive,distance=0..] run title @a title [{"text":"-- Boss Has Fallen --","bold":true,"color":"gold"}]
execute unless entity @e[tag=boss,distance=0..] run tag @s remove boss_alive


execute if entity @s[tag=backroom_map_origin_world_exclusive] run function mr_b:world_origin_exclusive/backrooms/backroom


#objective
execute if score @s[tag=!objective_active,tag=!objective_finished] mr_wave matches 3.. if entity @e[tag=wave_mob] run function mr_b:objective/obj_check
execute if entity @s[tag=objective_active] if score @s mr_wave matches ..5 if score @s mr_enemy_count matches ..60 run scoreboard players add @s mr_obj_endless 1
execute if entity @s[tag=objective_active] if score @s mr_obj_endless matches 250.. run function mr_b:enemy_wave/endless_spawn
execute if entity @s[tag=objective_active] if score @s mr_obj_endless matches 250.. run scoreboard players reset @s mr_obj_endless

execute if entity @s[tag=objective_active] if score @s mr_obj_count matches ..0 run function mr_b:objective/spawning_disable

execute if entity @s[tag=obj_storm] at @s run function mr_b:objective/storm/storm


execute if entity @s[tag=wave_starting] unless entity @a[scores={mr_enchant_lily_time=1..}] run scoreboard objectives setdisplay sidebar.team.green mr_shop_player_currency
execute if entity @s[tag=run_ongoing] unless entity @a[scores={mr_enchant_lily_time=1..}] run scoreboard objectives setdisplay sidebar.team.green mr_shop_player_currency


#------------------------------------------------------- [ MENU TOGGLES ] ------------------------------------------------------- 


execute if score @s mr_player_misc_setting_1 matches 1 run tag @s add event_guaranteed
execute if score @s mr_player_misc_setting_2 matches 1 run tag @s add endless_enabled
execute if score @s mr_player_misc_setting_3 matches 1 run tag @s remove announce_event

execute unless score @s mr_player_misc_setting_1 matches 1 run tag @s remove event_guaranteed
execute unless score @s mr_player_misc_setting_2 matches 1 run tag @s remove endless_enabled
execute unless score @s mr_player_misc_setting_3 matches 1 run tag @s add announce_event