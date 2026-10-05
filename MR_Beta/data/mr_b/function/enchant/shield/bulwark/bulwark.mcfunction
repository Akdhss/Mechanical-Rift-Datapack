execute if score @s mr_player_shield_use matches 1 run item modify entity @s weapon.offhand mr_b:tool_use_max_slow
execute if score @s mr_player_shield_use matches 1 run effect give @a[distance=..5] resistance 1 2 true
execute if score @s mr_player_shield_use matches 1 run function mr_b:enchant/shield/bulwark/bulwark_range
#execute if score @s mr_player_shield_use matches 1 if predicate mr_b:wind_bolt unless score @s mr_enchant_shield_shift_cd matches 1.. run function mr_b:enchant/shield/bulwark/bulwark_shift

scoreboard players set @s mr_player_shield_use 0

# radius 5, 16 points (every 22.5°)
