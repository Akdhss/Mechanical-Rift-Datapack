execute as @e[name=player_spawn] if score @s mr_difficulty matches 1..3 at @s run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]}]}
execute as @e[name=player_spawn] if score @s mr_difficulty matches 4 at @s run summon area_effect_cloud ~ ~ ~ {Passengers:[{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Fuse:15,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Fuse:15,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Fuse:15,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Fuse:15,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]},{id:creeper,equipment:{body:{id:stone_button,components:{enchantments:{"mr_b:enemy/death_check":1}}}},PersistenceRequired:1b,Fuse:15,Tags:["wave_mob","pathing_mob","landing","mr_unassigned"]}]}
kill @e[distance=0..,type=area_effect_cloud]

execute as @e[name=player_spawn,distance=0..] if score @s mr_difficulty matches 2.. run effect give @e[tag=wave_mob,tag=landing,distance=0..,type=creeper] speed 3 1 true
execute as @e[name=player_spawn,distance=0..] if score @s mr_difficulty matches 3.. run tag @e[tag=wave_mob,tag=landing,distance=0..,type=creeper] add camo_bomb


execute store result score @e[tag=mr_unassigned,distance=0..] mr_wave_loc_random run random value 1..4

execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 1 run tag @s add enemy_spawn_1
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 2 run tag @s add enemy_spawn_2
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 3 run tag @s add enemy_spawn_3
execute as @e[tag=mr_unassigned,distance=0..] if score @s mr_wave_loc_random matches 4 run tag @s add enemy_spawn_4

execute as @e[tag=mr_unassigned,distance=0..] run function mr_b:enemy_wave/enemy_loc

