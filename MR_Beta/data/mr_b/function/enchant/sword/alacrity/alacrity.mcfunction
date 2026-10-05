execute if entity @s[tag=alacrity_cooldown] run return fail
scoreboard players add @s mr_enchant_alacrity_count 1


execute if score @s[tag=!alacrity_cooldown] mr_enchant_alacrity_count matches ..2 run return fail
execute if score @s[tag=!alacrity_cooldown] mr_enchant_alacrity_count matches 3.. run effect give @a[team=rift_party,distance=..4.5] speed 4 2 true
execute if score @s[tag=!alacrity_cooldown] mr_enchant_alacrity_count matches 3.. run effect give @a[team=rift_party,distance=..4.5] absorption 4 1 true
execute if score @s[tag=!alacrity_cooldown] mr_enchant_alacrity_count matches 3.. run title @s actionbar [{text:"-- Alacrity on Cooldown --",color:"gray"}]

execute if score @s mr_enchant_alacrity_count matches 3.. run scoreboard players set @s mr_enchant_alacrity_cd 120
execute if score @s mr_enchant_alacrity_count matches 3.. run tag @s add alacrity_cooldown
execute if score @s mr_enchant_alacrity_count matches 3.. run scoreboard players reset @s mr_enchant_alacrity_count


particle minecraft:trial_spawner_detection ~ ~1 ~ 2.5 0.3 2.5 0.01 200 force
particle minecraft:glow ~ ~.3 ~ 2.0 0.1 2.0 0.01 15 force
particle dust{color:[1,0.9,0.4],scale:0.8} ~ ~0.5 ~ 1.5 .5 1.5 0.01 10 force

playsound minecraft:entity.iron_golem.attack master @a ~ ~ ~ 1 0.7
playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.8
playsound minecraft:block.netherite_block.place master @a ~ ~ ~ 1 0.6
playsound minecraft:item.totem.use master @a ~ ~ ~ 0.5 2
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.8 0.9
playsound minecraft:entity.horse.gallop master @a ~ ~ ~ 0.7 1.2
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 0.8 1.4
playsound minecraft:block.amethyst_cluster.hit master @a ~ ~ ~ 0.6 1.6
playsound minecraft:item.shield.block master @a ~ ~ ~ 1 0.7
playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.6 0.6
playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.8 1


particle trial_spawner_detection_ominous ~4.5 ~0.25 ~0 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~4.16 ~0.25 ~1.76 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~3.18 ~0.25 ~3.18 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~1.76 ~0.25 ~4.16 0.2 0 0.2 0 10 force

particle trial_spawner_detection_ominous ~0 ~0.25 ~4.5 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-1.76 ~0.25 ~4.16 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-3.18 ~0.25 ~3.18 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-4.16 ~0.25 ~1.76 0.2 0 0.2 0 10 force

particle trial_spawner_detection_ominous ~-4.5 ~0.25 ~0 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-4.16 ~0.25 ~-1.76 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-3.18 ~0.25 ~-3.18 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-1.76 ~0.25 ~-4.16 0.2 0 0.2 0 10 force

particle trial_spawner_detection_ominous ~0 ~0.25 ~-4.5 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~1.76 ~0.25 ~-4.16 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~3.18 ~0.25 ~-3.18 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~4.16 ~0.25 ~-1.76 0.2 0 0.2 0 10 force

particle trial_spawner_detection_ominous ~4.4 ~0.25 ~0.9 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~3.7 ~0.25 ~2.6 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~2.6 ~0.25 ~3.7 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~0.9 ~0.25 ~4.4 0.2 0 0.2 0 10 force

particle trial_spawner_detection_ominous ~-0.9 ~0.25 ~4.4 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-2.6 ~0.25 ~3.7 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-3.7 ~0.25 ~2.6 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-4.4 ~0.25 ~0.9 0.2 0 0.2 0 10 force

particle trial_spawner_detection_ominous ~-4.4 ~0.25 ~-0.9 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-3.7 ~0.25 ~-2.6 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-2.6 ~0.25 ~-3.7 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~-0.9 ~0.25 ~-4.4 0.2 0 0.2 0 10 force

particle trial_spawner_detection_ominous ~0.9 ~0.25 ~-4.4 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~2.6 ~0.25 ~-3.7 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~3.7 ~0.25 ~-2.6 0.2 0 0.2 0 10 force
particle trial_spawner_detection_ominous ~4.4 ~0.25 ~-0.9 0.2 0 0.2 0 10 force