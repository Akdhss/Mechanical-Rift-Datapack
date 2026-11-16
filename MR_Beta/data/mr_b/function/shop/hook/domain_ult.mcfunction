# Macro. Cooldown-based Domain ultimates (Hailstorm, NULL/CMD, Steel Garden)
$tag @s add $(key)_used
$tag @s add $(key)_user
$scoreboard players reset @s mr_ability_$(key)_cd
$scoreboard players set @s mr_ability_$(key)_cd $(cd)
