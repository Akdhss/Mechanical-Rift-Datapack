# warn-off-file target-selector-no-type
scoreboard players reset .blessing mr_ability_sanc_count

execute at @a[team=rift_party] run function mr_b:sfx/sanc_fall
schedule function mr_b:ability/sword/sanctuary/sanc_effect 1s
tag @s remove sanc_finish
execute as @e[tag=sanc_blessing_target,distance=0..] at @s run summon marker ~ ~35 ~ {CustomName:"sanc_obelisk",Invisible:0b,Invulnerable:1b}
execute as @e[tag=sanc_blessing_target,distance=0..] at @s run summon marker ~ ~ ~ {CustomName:"sanc_obelisk_landing",Invisible:0b,Invulnerable:1b}
tag @e[tag=sanc_blessing_target,distance=0..] remove sanc_blessing_target

