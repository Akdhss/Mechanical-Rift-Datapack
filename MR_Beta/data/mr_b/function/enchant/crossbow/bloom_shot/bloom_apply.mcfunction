
effect give @a[tag=party_alive,distance=..6] instant_health 1 0 true
effect give @a[tag=party_alive,distance=..3] instant_health 1 1 true
effect give @a[tag=party_alive,distance=..3] absorption 1 0 true
execute as @a[tag=party_alive,distance=..3] run function mr_b:effect/cleanse/cleanse_effect

tag @a[tag=party_alive,distance=..6] add bloom_shot_hit
execute on origin if entity @n[tag=bloom_shot_hit] run tag @s remove cloudstep_used
execute on origin if entity @n[tag=bloom_shot_hit] run title @s actionbar [{text:"-- Cloudstep Refreshed! --",color:"gold"}]
execute on origin if entity @s[advancements={mr_b:item_set_shop/item_set_8=true}] if entity @n[tag=bloom_shot_hit] run scoreboard players add @s mr_ability_guide_kill 1

execute as @a[tag=bloom_shot_hit] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.7 1.7
execute as @a[tag=bloom_shot_hit] run playsound minecraft:block.amethyst_cluster.break master @s ~ ~ ~ 1.1 0.6
execute as @a[tag=bloom_shot_hit] run playsound minecraft:block.beacon.ambient master @s ~ ~ ~ 0.7 2.0 1

tag @a remove bloom_shot_hit

# =========================================================
# FROSTBURST ARROW IMPACT
# Explosive ice enchant impact
# SFX + VFX COMBINED
# =========================================================

# -----------------
# MAIN IMPACT SFX
# -----------------



particle minecraft:totem_of_undying ~ ~0.5 ~ 0.95 0.95 0.95 0.01 20 force
particle minecraft:happy_villager ~ ~01 ~ 0.9 0.9 0.9 0.03 30 force
particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0.02 25 force
particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.01 12 force
particle minecraft:cloud ~ ~0.5 ~ 0.9 0.9 0.9 0.01 40 force
