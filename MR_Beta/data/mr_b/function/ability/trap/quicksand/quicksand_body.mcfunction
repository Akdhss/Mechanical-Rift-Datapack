execute if entity @s[tag=armed_trap] run particle falling_dust{block_state:sand} ~ ~0.05 ~ 0.4 0.05 0.4 0.002 6 normal
execute if entity @s[tag=armed_trap] run particle dust{color:[0.66,0.8,0.4],scale:0.6} ~ ~0.05 ~ 0.3 0.02 0.3 0.01 4 force
particle dust{color:[0.76,0.7,0.5],scale:0.6} ~ ~0.05 ~ 0.3 0.02 0.3 0.01 4 force
