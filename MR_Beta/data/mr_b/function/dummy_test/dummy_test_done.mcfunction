execute on attacker run tag @s add dummy_test_result

tellraw @a[tag=dummy_test_result] ["",{text:"------------------------------------------------",color:"dark_gray"},{text:"\n"},{text:"Total Hits: "},{score:{name:"@s",objective:"mr_dummy_hit_count"},color:"dark_red"},{text:"\n"},{text:"Damage Per Second: "},{score:{name:"@s",objective:"mr_dummy_hp_average"},color:"dark_red"},{text:"\n"},{text:"Highest Damage Instance: "},{score:{name:"@s",objective:"mr_dummy_hp_snapshot"},color:"dark_red"},{text:"\n"},{text:"Total Damage Dealt: "},{score:{name:"@s",objective:"mr_dummy_hp_count"},color:"dark_red"},{text:"\n"},{text:"------------------------------------------------",color:"dark_gray"}]

tag @e remove dummy_test_result
tag @s remove dps_timer_start
scoreboard players reset @s mr_dummy_hp_calc
scoreboard players reset @s mr_dummy_hp_count
scoreboard players reset @s mr_dummy_hp_current
scoreboard players reset @s mr_dummy_timer
scoreboard players reset @s mr_dummy_hit_count
scoreboard players set @s mr_dummy_hp_average 0
scoreboard players set @s mr_dummy_hp_snapshot 0

kill @s
execute at @s run function mr_b:dummy_test/dummy_spawn