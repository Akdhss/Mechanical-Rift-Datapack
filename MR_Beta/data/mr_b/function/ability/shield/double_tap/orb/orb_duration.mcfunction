execute if score @s mr_ability_double_tap_duration matches 0..20 at @s run particle dust{color:[0.95,0.35,0.99],scale:1} ~ ~.25 ~ .1 .1 .1 0 10 force
execute if score @s mr_ability_double_tap_duration matches 20..40 at @s run particle dust{color:[0.78,0,0.83],scale:1} ~ ~.25 ~ .1 .1 .1 0 10 force
execute if score @s mr_ability_double_tap_duration matches 40..70 at @s run particle dust{color:[0.6,0.0,0.64],scale:1} ~ ~.25 ~ .1 .1 .1 0 10 force

scoreboard players add @s mr_ability_double_tap_duration 1
#execute if score @s mr_ability_double_tap_duration matches 0..20 at @s run particle dust{color:[0.3,1,0],scale:1} ~ ~-.25 ~ 0 0 0 0 10 force
#execute if score @s mr_ability_double_tap_duration matches 20..40 at @s run particle dust{color:[0.98,0.81,0.18],scale:1} ~ ~-.25 ~ 0 0 0 0 10 force
#execute if score @s mr_ability_double_tap_duration matches 40..60 at @s run particle dust{color:[0.82,0.0,0.0],scale:1} ~ ~-.25 ~ 0 0 0 0 10 force
execute if score @s mr_ability_double_tap_duration matches 70 at @s run tp ~ ~-60 ~
execute if score @s mr_ability_double_tap_duration matches 70 at @s run kill @s
