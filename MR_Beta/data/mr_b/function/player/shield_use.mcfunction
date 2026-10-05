
scoreboard players set @s mr_player_shield_use 0
scoreboard players add @s mr_player_shield_hold 1
execute if items entity @s weapon.* *[enchantments~[{enchantments:"mr_b:weapon/shield/lightweight/lightweight"}]] run scoreboard players set @s mr_player_shield_use 1
execute if items entity @s weapon.* *[enchantments~[{enchantments:"mr_b:weapon/shield/bulwark/bulwark"}]] run scoreboard players set @s mr_player_shield_use 1
execute if items entity @s weapon.* *[enchantments~[{enchantments:"mr_b:weapon/shield/counterstance/counterstance"}]] run scoreboard players set @s mr_player_shield_use 1

execute as @s[tag=mr_disarm] at @s run function mr_b:effect/disarm/disarm_shield

advancement revoke @s only mr_b:shield_use