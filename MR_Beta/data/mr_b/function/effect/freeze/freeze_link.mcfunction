
execute if entity @s[type=endermite] run summon block_display ~-.5 ~.1 ~-.5 {Tags:["unlinked_freeze","frozen_state2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],translation:[0f,0f,0f]},CustomName:"[\"frozen_state\"]",block_state:{id:ice}}
execute unless entity @s[type=endermite] run summon block_display ~-.5 ~1 ~-.5 {Tags:["unlinked_freeze","frozen_state2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,2.2f,1f],translation:[0f,0f,0f]},CustomName:"[\"frozen_state\"]",block_state:{id:ice}}

tag @s add unlinked_freeze_origin

scoreboard players add .global mr_effect_freeze_link 1
scoreboard players operation @e[tag=unlinked_freeze] mr_effect_freeze_link = .global mr_effect_freeze_link
scoreboard players operation @s[tag=unlinked_freeze_origin] mr_effect_freeze_link = .global mr_effect_freeze_link
tag @e remove unlinked_freeze
tag @e remove unlinked_freeze_origin