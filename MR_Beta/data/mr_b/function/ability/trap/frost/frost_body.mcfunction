execute if entity @s[tag=armed_trap] run particle falling_dust{block_state:ice} ~ ~0.05 ~ 0.4 0.05 0.4 0.002 6 normal
execute if entity @s[tag=armed_trap] run particle dust{color:[0.66,0.8,0.4],scale:0.6} ~ ~0.05 ~ 0.3 0.02 0.3 0.01 4 force
particle minecraft:snowflake ~ ~0.2 ~ 0.18 0.25 0.18 0.01 3 force
particle minecraft:poof ~ ~0.05 ~ 0.08 0.02 0.08 0 1 force
particle minecraft:item_snowball ~ ~0.15 ~ 0.12 0.18 0.12 0 2 force
