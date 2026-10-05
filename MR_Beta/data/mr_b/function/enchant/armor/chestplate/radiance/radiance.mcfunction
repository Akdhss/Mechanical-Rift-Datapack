scoreboard players add @s mr_enchant_radiance_cd 1
execute as @a[scores={mr_enchant_radiance_cd=41..}] at @s run effect give @a[distance=..6,tag=party_alive] minecraft:regeneration 3 1 true
execute as @a[scores={mr_enchant_radiance_cd=41..}] at @s run effect give @a[distance=..6,tag=party_alive] minecraft:saturation 1 1 true
execute as @a[scores={mr_enchant_radiance_cd=41..}] run scoreboard players set @s mr_enchant_radiance_cd 0

### particlez ###
particle dust{color:[1,1,0],scale:0.5} ~6 ~0.25 ~0 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~5.55 ~0.25 ~2.55 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~4.24 ~0.25 ~4.24 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~2.55 ~0.25 ~5.55 0.2 0 0.2 0 1 force

particle dust{color:[1,1,0],scale:0.5} ~0 ~0.25 ~6 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-2.55 ~0.25 ~5.55 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-4.24 ~0.25 ~4.24 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-5.55 ~0.25 ~2.55 0.2 0 0.2 0 1 force

particle dust{color:[1,1,0],scale:0.5} ~-6 ~0.25 ~0 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-5.55 ~0.25 ~-2.55 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-4.24 ~0.25 ~-4.24 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-2.55 ~0.25 ~-5.55 0.2 0 0.2 0 1 force

particle dust{color:[1,1,0],scale:0.5} ~0 ~0.25 ~-6 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~2.55 ~0.25 ~-5.55 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~4.24 ~0.25 ~-4.24 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~5.55 ~0.25 ~-2.55 0.2 0 0.2 0 1 force

particle dust{color:[1,1,0],scale:0.5} ~5.87 ~0.25 ~1.2 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~5.1 ~0.25 ~3.6 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~3.6 ~0.25 ~5.1 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~1.2 ~0.25 ~5.87 0.2 0 0.2 0 1 force

particle dust{color:[1,1,0],scale:0.5} ~-1.2 ~0.25 ~5.87 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-3.6 ~0.25 ~5.1 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-5.1 ~0.25 ~3.6 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-5.87 ~0.25 ~1.2 0.2 0 0.2 0 1 force

particle dust{color:[1,1,0],scale:0.5} ~-5.87 ~0.25 ~-1.2 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-5.1 ~0.25 ~-3.6 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-3.6 ~0.25 ~-5.1 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~-1.2 ~0.25 ~-5.87 0.2 0 0.2 0 1 force

particle dust{color:[1,1,0],scale:0.5} ~1.2 ~0.25 ~-5.87 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~3.6 ~0.25 ~-5.1 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~5.1 ~0.25 ~-3.6 0.2 0 0.2 0 1 force
particle dust{color:[1,1,0],scale:0.5} ~5.87 ~0.25 ~-1.2 0.2 0 0.2 0 1 force