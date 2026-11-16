# Macro. Kill-tracked ultimates (Blade Call, Blunt Cut)
$tag @s add $(key)_user
$scoreboard players reset @s $(kill)
$tellraw @s {text:"-- Ultimate - [$(name)] --",color:"gold"}
