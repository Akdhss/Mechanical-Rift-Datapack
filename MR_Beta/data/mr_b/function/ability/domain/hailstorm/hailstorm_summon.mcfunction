tag @s remove domain_hailstorm
tag @s remove casting_domain
tag @s add hailstorm_used
scoreboard players set @s mr_ability_hailstorm_cd 2400

effect clear @s slowness
effect clear @s weakness
attribute @s jump_strength base reset

summon marker ~ ~ ~ {CustomName:"hailstorm",Tags:["domain","newly_set"]}

scoreboard players set @e[tag=newly_set] mr_ability_hailstorm_duration 400

tag @e remove newly_set

playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 0.7 1.8
playsound minecraft:ambient.basalt_deltas.mood master @a ~ ~ ~ 1 0.5
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.8 0.6
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.warden.nearby_close master @a ~ ~ ~ 0.5 1.8