scoreboard players add @s mr_obj_storm_duration 1

execute at @s if score @s mr_obj_storm_duration matches ..600 as @e[distance=..45,team=rift_party,tag=!storm_affected,type=player] run function mr_b:objective/storm/storm_inside
execute at @s if score @s mr_obj_storm_duration matches 600..1200 as @e[distance=..35,team=rift_party,tag=!storm_affected,type=player] run function mr_b:objective/storm/storm_inside
execute at @s if score @s mr_obj_storm_duration matches 1200..1800 as @e[distance=..25,team=rift_party,tag=!storm_affected,type=player] run function mr_b:objective/storm/storm_inside
execute at @s if score @s mr_obj_storm_duration matches 1800..2400 as @e[distance=..15,team=rift_party,tag=!storm_affected,type=player] run function mr_b:objective/storm/storm_inside

execute at @s if score @s mr_obj_storm_duration matches ..600 as @e[distance=45..,team=rift_party,tag=!storm_affected,type=player] run function mr_b:objective/storm/storm_effect
execute at @s if score @s mr_obj_storm_duration matches 600..1200 as @e[distance=35..,team=rift_party,tag=!storm_affected,type=player] run function mr_b:objective/storm/storm_effect
execute at @s if score @s mr_obj_storm_duration matches 1200..1800 as @e[distance=25..,team=rift_party,tag=!storm_affected,type=player] run function mr_b:objective/storm/storm_effect
execute at @s if score @s mr_obj_storm_duration matches 1800..2400 as @e[distance=15..,team=rift_party,tag=!storm_affected,type=player] run function mr_b:objective/storm/storm_effect

execute at @s if score @s mr_obj_storm_duration matches ..600 as @e[distance=40..45,team=rift_party,type=player] run title @s actionbar {text:"-- NEARING THE STORM BARRIER --",bold:true,color:"gold"}

execute at @s if score @s mr_obj_storm_duration matches 600..1200 as @e[distance=30..35,team=rift_party,type=player] run title @s actionbar {text:"-- NEARING THE STORM BARRIER --",bold:true,color:"gold"}
execute at @s if score @s mr_obj_storm_duration matches 1200..1800 as @e[distance=20..25,team=rift_party,type=player] run title @s actionbar {text:"-- NEARING THE STORM BARRIER --",bold:true,color:"gold"}
execute at @s if score @s mr_obj_storm_duration matches 1800..2400 as @e[distance=10..15,team=rift_party,type=player] run title @s actionbar {text:"-- NEARING THE STORM BARRIER --",bold:true,color:"gold"}

execute at @s if score @s mr_obj_storm_duration matches 500 as @e[distance=40..45,team=rift_party,type=player] run title @s actionbar {text:"-- THE STORM CLOSES IN --",bold:true,color:"red"}

execute at @s if score @s mr_obj_storm_duration matches 1100 as @e[distance=30..35,team=rift_party,type=player] run title @s actionbar {text:"-- THE STORM CLOSES IN --",bold:true,color:"red"}
execute at @s if score @s mr_obj_storm_duration matches 1700 as @e[distance=20..25,team=rift_party,type=player] run title @s actionbar {text:"-- THE STORM CLOSES IN --",bold:true,color:"red"}
execute at @s if score @s mr_obj_storm_duration matches 2300 as @e[distance=10..15,team=rift_party,type=player] run title @s actionbar {text:"-- THE STORM CLOSES IN --",bold:true,color:"red"}


execute at @s run function mr_b:objective/storm/storm_vfx

execute store result bossbar minecraft:obj_storm value run scoreboard players get @s mr_obj_storm_duration
execute if score @s mr_obj_storm_duration matches 2400.. run function mr_b:objective/storm/event_end