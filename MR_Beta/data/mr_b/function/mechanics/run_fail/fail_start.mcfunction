kill @e[tag=wave_mob,distance=0..]
execute as @e[name=player_spawn,limit=1,distance=0..,type=marker] run function mr_b:mechanics/run_fail/fail_marker


execute as @a[team=rift_party] run function mr_b:mechanics/run_fail/fail_player

execute as @a[team=rift_party] run function mr_b:enchant/armor/chestplate/overtime/overtime_expire

scoreboard players reset * mr_shop_player_currency