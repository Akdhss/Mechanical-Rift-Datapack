attribute @s movement_speed modifier remove movement_speed
attribute @s jump_strength modifier remove jump_strength
attribute @s attack_speed modifier remove attack_speed
data merge entity @s {NoAI:0b,Silent:0b}

# FREEZE ENDING (HEAVIER)
# Frozen shell cracking off in chunks

playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.2
playsound minecraft:block.amethyst_cluster.hit master @a ~ ~ ~ 1.6 0.9
playsound minecraft:block.chain.break master @a ~ ~ ~ 1.35 1.4
playsound minecraft:entity.player.breath master @a ~ ~ ~ 1.5 0.7


execute at @s as @e[tag=frozen_state2,limit=1] if score @s mr_effect_freeze_link = @n[tag=mr_cold] mr_effect_freeze_link run kill @s

tag @s remove mr_cold
scoreboard players set @s mr_effect_cold_time 0
scoreboard players reset @s mr_effect_cold_stack



tag @s remove mr_freeze