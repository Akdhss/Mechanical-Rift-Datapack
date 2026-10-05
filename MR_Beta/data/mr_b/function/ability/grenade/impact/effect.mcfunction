execute at @s as @e[distance=..6,team=rift_enemy] run damage @s 50 mr_b:explosion

execute at @s as @e[distance=..6,team=rift_party] run damage @s 6 mr_b:explosion
item replace entity @e[distance=..6,team=rift_party] saddle with saddle[enchantments={"mr_b:impulse/general_upward_impulse":1},equippable={slot:"saddle",equip_sound:"minecraft:intentionally_empty"}]


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