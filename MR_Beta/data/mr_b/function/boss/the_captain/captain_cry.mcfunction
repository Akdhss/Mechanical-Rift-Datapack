effect give @e[tag=wave_mob,distance=..10,tag=!boss] speed 10 1
effect give @e[tag=wave_mob,distance=..10,tag=!boss] strength 10 1
effect give @e[team=rift_party,distance=..20,tag=!boss] slowness 10 1
effect give @e[team=rift_party,distance=..20,tag=!boss] weakness 10 1
scoreboard players reset @s mr_captain_cry_cd

playsound minecraft:entity.pillager.celebrate master @a ~ ~ ~ 1.5 1
playsound minecraft:entity.ravager.roar master @a ~ ~ ~ 1.5 0.9
playsound minecraft:entity.vindicator.ambient master @a ~ ~ ~ 1.8 0.8
playsound minecraft:block.bell.use master @a ~ ~ ~ 1.7 1.2
playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1.6 0.8