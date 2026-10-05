tag @e[distance=..4,team=rift_enemy] add mr_cold
execute if score @s mr_effect_cold_time matches ..100 run scoreboard players set @e[distance=..4,team=rift_enemy] mr_effect_cold_time 100
scoreboard players add @e[distance=..4,team=rift_enemy] mr_effect_cold_stack 1

execute as @a[tag=mr_cold] store result bossbar cold_effect max run scoreboard players get @s mr_effect_cold_time
# =========================================================
# FROSTBURST ARROW IMPACT
# Explosive ice enchant impact
# SFX + VFX COMBINED
# =========================================================

# -----------------
# MAIN IMPACT SFX
# -----------------

playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.7 1.7
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.4 0.5
playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 1.1 0.6
playsound minecraft:block.powder_snow.break master @a ~ ~ ~ 1 0.7
playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0.9
playsound minecraft:block.calcite.break master @a ~ ~ ~ 0.9 0.8


# -----------------
# ICE SHARDS
# -----------------

particle minecraft:item_snowball ~ ~0.5 ~ 0.55 0.35 0.55 0.01 60 force
particle minecraft:snowflake ~ ~01 ~ 0.9 0.45 0.9 0.03 90 force
particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0.02 25 force

# -----------------
# FROST RING
# -----------------


particle minecraft:spit ~ ~0.5 ~ 1 0.02 1 0 40 force

# -----------------
# COLD MIST
# -----------------

particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.4 0.15 0.4 0.01 12 force
particle minecraft:cloud ~ ~0.5 ~ 0.9 0.2 0.9 0.01 40 force

# -----------------
# FREEZING ENERGY
# -----------------

particle minecraft:glow ~ ~0.5 ~ 0.6 0.4 0.6 0.02 30 force
particle minecraft:witch ~ ~0.5 ~ 0.45 0.25 0.45 0.01 18 force

# -----------------
# OPTIONAL SCREEN SHAKE FEEL
# -----------------
