

execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"mr_b:weapon/bow/sonic_boom/sonic_boom"}]] unless score @s mr_enchant_sonic_time matches 1.. run scoreboard players add @s mr_player_bow_charge 1
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"mr_b:debilitation"}]] unless score @s mr_enchant_debil_time matches 1.. run scoreboard players add @s mr_player_bow_charge 1
execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"mr_b:aetherline"}]] unless score @s mr_enchant_aether_time matches 1.. run scoreboard players add @s mr_player_bow_charge 1

execute if score @s mr_player_bow_charge matches 20 at @s run function mr_b:sfx/bow_full_charge

execute if score @s mr_player_bow_charge matches 20.. at @s run particle trial_spawner_detection_ominous ~ ~.5 ~ .3 .4 .3 0 3
execute if score @s mr_player_bow_charge matches 20.. at @s run particle trial_spawner_detection ~ ~.5 ~ .3 .4 .3 0 3

advancement revoke @s only mr_b:bow_charge