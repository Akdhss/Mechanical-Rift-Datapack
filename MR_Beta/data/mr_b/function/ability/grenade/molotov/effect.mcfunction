playsound mr_b:skill/molotov/aoe master @a ~ ~ ~

summon marker ~ ~ ~ {CustomName:"molotov_aoe",Tags:["center_molotov_aoe"]}
summon marker ~2.5 ~ ~ {CustomName:"molotov_aoe",Tags:["side_molotov_aoe"]}
summon marker ~-2.5 ~ ~ {CustomName:"molotov_aoe",Tags:["side_molotov_aoe"]}
summon marker ~ ~ ~2.5 {CustomName:"molotov_aoe",Tags:["side_molotov_aoe"]}
summon marker ~ ~ ~-2.5 {CustomName:"molotov_aoe",Tags:["side_molotov_aoe"]}

summon marker ~2.5 ~ ~2.5 {CustomName:"molotov_aoe",Tags:["side_molotov_aoe"]}
summon marker ~2.5 ~ ~-2.5 {CustomName:"molotov_aoe",Tags:["side_molotov_aoe"]}

summon marker ~-2.5 ~ ~2.5 {CustomName:"molotov_aoe",Tags:["side_molotov_aoe"]}
summon marker ~-2.5 ~ ~-2.5 {CustomName:"molotov_aoe",Tags:["side_molotov_aoe"]}

execute as @e[name=molotov_aoe] at @s if block ~ ~-.5 ~ air run function mr_b:ability/trap/trap_ground

# =========================================================
# FROSTBURST ARROW IMPACT
# Explosive ice enchant impact
# SFX + VFX COMBINED
# =========================================================

# -----------------
# MAIN IMPACT SFX
# -----------------


particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0.02 25 force
particle minecraft:cloud ~ ~0.5 ~ 0.9 0.9 0.9 0.01 20 force