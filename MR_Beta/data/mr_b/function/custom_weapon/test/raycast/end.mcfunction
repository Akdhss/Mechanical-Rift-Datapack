particle minecraft:end_rod ^ ^ ^ 0 0 0 0 1 force
#summon marker ~ ~ ~ {CustomName:"impulse_aoe"}
summon minecraft:marker ~ ~ ~ {CustomName:"square"}
#summon minecraft:marker ~ ~ ~ {CustomName:"eye"}

$rotate @n[name=square] $(yaw) $(pitch)