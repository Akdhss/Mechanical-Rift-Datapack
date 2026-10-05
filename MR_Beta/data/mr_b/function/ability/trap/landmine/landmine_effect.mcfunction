execute as @e[distance=..2.5] run damage @s 120 explosion



particle explosion ~ ~0.1 ~ 0 0 0 0 1 force
particle flame ~ ~0.1 ~ 1.2 0.4 1.2 0.03 25 normal
particle smoke ~ ~0.1 ~ 1.4 0.6 1.4 0.03 30 normal
particle dust{color:[0.2,0.2,0.2],scale:1.2} ~ ~0.1 ~ 1.5 0.5 1.5 0.08 25 force
particle block{block_state:dirt} ~ ~0.05 ~ 1.2 0.5 1.2 0.08 25 normal
particle falling_dust{block_state:dirt} ~ ~0.2 ~ 1.5 0.8 1.5 0.02 20 normal

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.9 1.3
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.6 0.6
playsound minecraft:block.stone.break master @a ~ ~ ~ 0.7 0.8
playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 0.5 0.7


kill @s