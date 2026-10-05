tag @s add celerity_user
effect give @a[tag=!celerity_user,team=rift_party,distance=..4.5] regeneration 5 3 true
effect clear @a[team=rift_party,distance=..4.5] poison
effect give @s regeneration 5 1 true
tag @s remove celerity_user

particle minecraft:happy_villager ~ ~.3 ~ 2.5 0.1 2.5 0.01 20 force
particle minecraft:glow ~ ~.3 ~ 2.0 0.1 2.0 0.01 15 force
particle dust{color:[1,0.9,0.4],scale:0.8} ~ ~0.5 ~ 1.5 .5 1.5 0.01 10 force

playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 1 0.9
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 0.9 1.7
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.8
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.7 1.4
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 0.8 1.2
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.7 1.6
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 0.8 1.3
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 0.7 1.5
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.7 1.2
playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 0.9 1.3
playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.8 2

particle dust{color:[1,0.84,0],scale:3} ~4.5 ~0.25 ~0 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~4.16 ~0.25 ~1.76 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~3.18 ~0.25 ~3.18 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~1.76 ~0.25 ~4.16 0 0 0 0 1 force

particle dust{color:[1,0.84,0],scale:3} ~0 ~0.25 ~4.5 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-1.76 ~0.25 ~4.16 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-3.18 ~0.25 ~3.18 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-4.16 ~0.25 ~1.76 0 0 0 0 1 force

particle dust{color:[1,0.84,0],scale:3} ~-4.5 ~0.25 ~0 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-4.16 ~0.25 ~-1.76 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-3.18 ~0.25 ~-3.18 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-1.76 ~0.25 ~-4.16 0 0 0 0 1 force

particle dust{color:[1,0.84,0],scale:3} ~0 ~0.25 ~-4.5 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~1.76 ~0.25 ~-4.16 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~3.18 ~0.25 ~-3.18 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~4.16 ~0.25 ~-1.76 0 0 0 0 1 force

particle dust{color:[1,0.84,0],scale:3} ~4.4 ~0.25 ~0.9 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~3.7 ~0.25 ~2.6 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~2.6 ~0.25 ~3.7 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~0.9 ~0.25 ~4.4 0 0 0 0 1 force

particle dust{color:[1,0.84,0],scale:3} ~-0.9 ~0.25 ~4.4 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-2.6 ~0.25 ~3.7 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-3.7 ~0.25 ~2.6 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-4.4 ~0.25 ~0.9 0 0 0 0 1 force

particle dust{color:[1,0.84,0],scale:3} ~-4.4 ~0.25 ~-0.9 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-3.7 ~0.25 ~-2.6 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-2.6 ~0.25 ~-3.7 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~-0.9 ~0.25 ~-4.4 0 0 0 0 1 force

particle dust{color:[1,0.84,0],scale:3} ~0.9 ~0.25 ~-4.4 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~2.6 ~0.25 ~-3.7 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~3.7 ~0.25 ~-2.6 0 0 0 0 1 force
particle dust{color:[1,0.84,0],scale:3} ~4.4 ~0.25 ~-0.9 0 0 0 0 1 force