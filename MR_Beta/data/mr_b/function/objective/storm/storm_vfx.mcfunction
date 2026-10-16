
execute if score @s mr_obj_storm_duration matches ..600 run function mr_b:objective/storm/vfx/stage_1
execute if score @s mr_obj_storm_duration matches 600..1200 run function mr_b:objective/storm/vfx/stage_2
execute if score @s mr_obj_storm_duration matches 1200..1800 run function mr_b:objective/storm/vfx/stage_3
execute if score @s mr_obj_storm_duration matches 1800..2400 run function mr_b:objective/storm/vfx/stage_4


execute if score @s mr_obj_storm_duration matches 500..600 run title @a[team=rift_party] actionbar {text:"-- STORM CLOSING IN !! --",bold:true,color:"gold"}
execute if score @s mr_obj_storm_duration matches 1100..1200 run title @a[team=rift_party] actionbar {text:"-- STORM CLOSING IN !! --",bold:true,color:"gold"}
execute if score @s mr_obj_storm_duration matches 1700..1800 run title @a[team=rift_party] actionbar {text:"-- STORM CLOSING IN !! --",bold:true,color:"gold"}

execute if score @s mr_obj_storm_duration matches 500 as @a[team=rift_party] at @s run function mr_b:objective/storm/sfx/closing_in_warning
execute if score @s mr_obj_storm_duration matches 1100 as @a[team=rift_party] at @s run function mr_b:objective/storm/sfx/closing_in_warning
execute if score @s mr_obj_storm_duration matches 1700 as @a[team=rift_party] at @s run function mr_b:objective/storm/sfx/closing_in_warning
