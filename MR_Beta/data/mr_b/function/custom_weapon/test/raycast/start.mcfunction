tag @s add raycast_hh

#scoreboard players remove @s mr_custom_weapon_headhunter_ammo 1


playsound minecraft:item.trident.throw player @s ~ ~ ~ 0.8 1.6
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.6 1.8
playsound minecraft:item.crossbow.shoot player @s ~ ~ ~ 0.7 1.7
playsound minecraft:entity.arrow.shoot player @s ~ ~ ~ 0.5 2.0
playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 0.4 1.8
playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 0.3 1.5


execute as @a[tag=raycast_hh] anchored eyes positioned ^ ^ ^ run function mr_b:custom_weapon/test/raycast/laser




tag @s remove raycast_hh
tag @s remove hh_wall

scoreboard players reset .distance global_range

