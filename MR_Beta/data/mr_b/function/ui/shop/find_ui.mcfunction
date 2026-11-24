# warn-off-file target-selector-no-type
# Set #this to the current entity's ID
scoreboard players operation *this uuid0 = @s uuid0
scoreboard players operation *this uuid1 = @s uuid1
scoreboard players operation *this uuid2 = @s uuid2
scoreboard players operation *this uuid3 = @s uuid3

# Find all entities which have the same ID
execute as @e[predicate=mr_b:find/match_id,distance=0..,type=player] run say I have the same ID.
execute as @e[predicate=mr_b:find/match_id,distance=0..,type=chest_minecart] run say I have the same ID.1
