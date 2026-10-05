execute at @s if score @s mr_difficulty matches 1 run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:pillager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:crossbow}}},{id:pillager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:crossbow}}}]}
execute at @s if score @s mr_difficulty matches 2 run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:pillager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:crossbow}}},{id:pillager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:crossbow}}},{id:vindicator,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:iron_axe}}}]}
execute at @s if score @s mr_difficulty matches 3 run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:evoker,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:pillager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:crossbow}}},{id:pillager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:crossbow}}},{id:vindicator,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:iron_axe}}}]}
execute at @s if score @s mr_difficulty matches 4 run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:ravager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:evoker,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:pillager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:crossbow}}},{id:pillager,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:crossbow}}},{id:vindicator,PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"],equipment:{mainhand:{id:iron_axe}}}]}

kill @e[type=area_effect_cloud]
effect give @e[type=vindicator,tag=wave_mob,tag=landing] resistance infinite 3 true
execute as @e[type=pillager,tag=wave_mob,tag=landing] run enchant @s quick_charge 1
execute as @e[type=ravager,tag=wave_mob,tag=landing] run attribute @s scale base set .75
execute if score @s mr_difficulty matches 2 run effect give @e[type=pillager,tag=wave_mob,tag=landing] speed infinite 1 true
execute if score @s mr_difficulty matches 3.. run effect give @e[type=pillager,tag=wave_mob,tag=landing] speed infinite 2 true
execute if score @s mr_difficulty matches 4 run tag @e[type=pillager,tag=wave_mob,tag=!boss] add camo_ranged


execute store result score @e[tag=mr_unassigned] mr_wave_loc_random run random value 1..4
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4
execute as @e[tag=mr_unassigned] run function mr_b:enemy_wave/enemy_loc