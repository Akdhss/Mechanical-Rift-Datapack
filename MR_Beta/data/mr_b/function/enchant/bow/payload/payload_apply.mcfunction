execute on origin run tag @s add payload_origin
execute on attacker run tag @s add payload_origin


execute at @s as @e[distance=..4,team=rift_enemy] run damage @s 20 mr_b:explosion by @n[tag=payload_origin]
tag @e remove payload_origin




# =========================================================
# FROSTBURST ARROW IMPACT
# Explosive ice enchant impact
# SFX + VFX COMBINED
# =========================================================

# -----------------
# MAIN IMPACT SFX
# -----------------

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.7 1.7
playsound minecraft:entity.dragon_fireball.explode master @a ~ ~ ~ .5 0.6

particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0.02 25 force
particle minecraft:cloud ~ ~0.5 ~ 0.9 0.9 0.9 0.01 40 force
particle minecraft:explosion ~ ~0.5 ~ 0.9 0.9 0.9 0.01 10 force
