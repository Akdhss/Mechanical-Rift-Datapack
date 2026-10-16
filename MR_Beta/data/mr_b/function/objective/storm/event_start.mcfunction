scoreboard players add @s mr_obj_count 1
tag @s add obj_storm

execute as @a[team=rift_party] at @s run playsound mr_b:objective/storm/storm_start master @s
bossbar set minecraft:obj_storm max 2400
bossbar set minecraft:obj_storm players @a[team=rift_party] 