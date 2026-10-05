execute as @e[distance=16..,type=husk] run tag @s remove scan_failed
execute as @e[distance=16..,type=husk] run tag @s remove scanned

execute unless entity @e[distance=..15,type=husk,tag=!scanned,tag=!scan_failed] run function mr_b:custom_weapon/test/eye/scan_start
execute unless entity @e[distance=..15,type=husk,tag=!scanned,tag=!scan_failed] run return fail

tag @s add eye_scan

rotate @s facing entity @n[tag=!scanned,tag=!scan_failed,type=husk,limit=1,sort=nearest,distance=..15] feet


execute as @s[tag=eye_scan] if entity @e[distance=..15,type=husk,tag=!scanned,tag=!scan_failed] anchored eyes positioned ^ ^ ^ run function mr_b:custom_weapon/test/eye/laser



#Particles Generated with: Cloud Wolf's Particle Grapher
particle end_rod ^0.000 ^0.000 ^0.350 0 0 0 0 1 force @a
particle end_rod ^0.022 ^0.205 ^0.283 0 0 0 0 1 force @a
particle end_rod ^0.044 ^0.330 ^0.107 0 0 0 0 1 force @a
particle end_rod ^0.066 ^0.327 ^-0.106 0 0 0 0 1 force @a
particle end_rod ^0.087 ^0.199 ^-0.274 0 0 0 0 1 force @a
particle end_rod ^0.108 ^0.000 ^-0.333 0 0 0 0 1 force @a
particle end_rod ^0.129 ^-0.191 ^-0.263 0 0 0 0 1 force @a
particle end_rod ^0.149 ^-0.301 ^-0.098 0 0 0 0 1 force @a
particle end_rod ^0.169 ^-0.292 ^0.095 0 0 0 0 1 force @a
particle end_rod ^0.188 ^-0.174 ^0.239 0 0 0 0 1 force @a
particle end_rod ^0.206 ^-0.000 ^0.283 0 0 0 0 1 force @a
particle end_rod ^0.223 ^0.159 ^0.218 0 0 0 0 1 force @a
particle end_rod ^0.240 ^0.243 ^0.079 0 0 0 0 1 force @a
particle end_rod ^0.255 ^0.228 ^-0.074 0 0 0 0 1 force @a
particle end_rod ^0.270 ^0.131 ^-0.180 0 0 0 0 1 force @a
particle end_rod ^0.283 ^-0.000 ^-0.206 0 0 0 0 1 force @a
particle end_rod ^0.296 ^-0.110 ^-0.152 0 0 0 0 1 force @a
particle end_rod ^0.307 ^-0.160 ^-0.052 0 0 0 0 1 force @a
particle end_rod ^0.317 ^-0.142 ^0.046 0 0 0 0 1 force @a
particle end_rod ^0.325 ^-0.076 ^0.104 0 0 0 0 1 force @a
particle end_rod ^0.333 ^0.000 ^0.108 0 0 0 0 1 force @a
particle end_rod ^0.339 ^0.051 ^0.070 0 0 0 0 1 force @a
particle end_rod ^0.344 ^0.062 ^0.020 0 0 0 0 1 force @a
particle end_rod ^0.347 ^0.042 ^-0.014 0 0 0 0 1 force @a
particle end_rod ^0.349 ^0.013 ^-0.018 0 0 0 0 1 force @a
particle end_rod ^0.350 ^0.000 ^0.000 0 0 0 0 1 force @a
particle end_rod ^0.349 ^0.013 ^0.018 0 0 0 0 1 force @a
particle end_rod ^0.347 ^0.042 ^0.014 0 0 0 0 1 force @a
particle end_rod ^0.344 ^0.062 ^-0.020 0 0 0 0 1 force @a
particle end_rod ^0.339 ^0.051 ^-0.070 0 0 0 0 1 force @a
particle end_rod ^0.333 ^-0.000 ^-0.108 0 0 0 0 1 force @a
particle end_rod ^0.325 ^-0.076 ^-0.104 0 0 0 0 1 force @a
particle end_rod ^0.317 ^-0.142 ^-0.046 0 0 0 0 1 force @a
particle end_rod ^0.307 ^-0.160 ^0.052 0 0 0 0 1 force @a
particle end_rod ^0.296 ^-0.110 ^0.152 0 0 0 0 1 force @a
particle end_rod ^0.283 ^0.000 ^0.206 0 0 0 0 1 force @a
particle end_rod ^0.270 ^0.131 ^0.180 0 0 0 0 1 force @a
particle end_rod ^0.255 ^0.228 ^0.074 0 0 0 0 1 force @a
particle end_rod ^0.240 ^0.243 ^-0.079 0 0 0 0 1 force @a
particle end_rod ^0.223 ^0.159 ^-0.218 0 0 0 0 1 force @a
particle end_rod ^0.206 ^-0.000 ^-0.283 0 0 0 0 1 force @a
particle end_rod ^0.188 ^-0.174 ^-0.239 0 0 0 0 1 force @a
particle end_rod ^0.169 ^-0.292 ^-0.095 0 0 0 0 1 force @a
particle end_rod ^0.149 ^-0.301 ^0.098 0 0 0 0 1 force @a
particle end_rod ^0.129 ^-0.191 ^0.263 0 0 0 0 1 force @a
particle end_rod ^0.108 ^-0.000 ^0.333 0 0 0 0 1 force @a
particle end_rod ^0.087 ^0.199 ^0.274 0 0 0 0 1 force @a
particle end_rod ^0.066 ^0.327 ^0.106 0 0 0 0 1 force @a
particle end_rod ^0.044 ^0.330 ^-0.107 0 0 0 0 1 force @a
particle end_rod ^0.022 ^0.205 ^-0.283 0 0 0 0 1 force @a
particle end_rod ^0.000 ^0.000 ^-0.350 0 0 0 0 1 force @a
particle end_rod ^-0.022 ^-0.205 ^-0.283 0 0 0 0 1 force @a
particle end_rod ^-0.044 ^-0.330 ^-0.107 0 0 0 0 1 force @a
particle end_rod ^-0.066 ^-0.327 ^0.106 0 0 0 0 1 force @a
particle end_rod ^-0.087 ^-0.199 ^0.274 0 0 0 0 1 force @a
particle end_rod ^-0.108 ^-0.000 ^0.333 0 0 0 0 1 force @a
particle end_rod ^-0.129 ^0.191 ^0.263 0 0 0 0 1 force @a
particle end_rod ^-0.149 ^0.301 ^0.098 0 0 0 0 1 force @a
particle end_rod ^-0.169 ^0.292 ^-0.095 0 0 0 0 1 force @a
particle end_rod ^-0.188 ^0.174 ^-0.239 0 0 0 0 1 force @a
particle end_rod ^-0.206 ^0.000 ^-0.283 0 0 0 0 1 force @a
particle end_rod ^-0.223 ^-0.159 ^-0.218 0 0 0 0 1 force @a
particle end_rod ^-0.240 ^-0.243 ^-0.079 0 0 0 0 1 force @a
particle end_rod ^-0.255 ^-0.228 ^0.074 0 0 0 0 1 force @a
particle end_rod ^-0.270 ^-0.131 ^0.180 0 0 0 0 1 force @a
particle end_rod ^-0.283 ^-0.000 ^0.206 0 0 0 0 1 force @a
particle end_rod ^-0.296 ^0.110 ^0.152 0 0 0 0 1 force @a
particle end_rod ^-0.307 ^0.160 ^0.052 0 0 0 0 1 force @a
particle end_rod ^-0.317 ^0.142 ^-0.046 0 0 0 0 1 force @a
particle end_rod ^-0.325 ^0.076 ^-0.104 0 0 0 0 1 force @a
particle end_rod ^-0.333 ^0.000 ^-0.108 0 0 0 0 1 force @a
particle end_rod ^-0.339 ^-0.051 ^-0.070 0 0 0 0 1 force @a
particle end_rod ^-0.344 ^-0.062 ^-0.020 0 0 0 0 1 force @a
particle end_rod ^-0.347 ^-0.042 ^0.014 0 0 0 0 1 force @a
particle end_rod ^-0.349 ^-0.013 ^0.018 0 0 0 0 1 force @a
particle end_rod ^-0.350 ^-0.000 ^0.000 0 0 0 0 1 force @a
particle end_rod ^-0.349 ^-0.013 ^-0.018 0 0 0 0 1 force @a
particle end_rod ^-0.347 ^-0.042 ^-0.014 0 0 0 0 1 force @a
particle end_rod ^-0.344 ^-0.062 ^0.020 0 0 0 0 1 force @a
particle end_rod ^-0.339 ^-0.051 ^0.070 0 0 0 0 1 force @a
particle end_rod ^-0.333 ^-0.000 ^0.108 0 0 0 0 1 force @a
particle end_rod ^-0.325 ^0.076 ^0.104 0 0 0 0 1 force @a
particle end_rod ^-0.317 ^0.142 ^0.046 0 0 0 0 1 force @a
particle end_rod ^-0.307 ^0.160 ^-0.052 0 0 0 0 1 force @a
particle end_rod ^-0.296 ^0.110 ^-0.152 0 0 0 0 1 force @a
particle end_rod ^-0.283 ^0.000 ^-0.206 0 0 0 0 1 force @a
particle end_rod ^-0.270 ^-0.131 ^-0.180 0 0 0 0 1 force @a
particle end_rod ^-0.255 ^-0.228 ^-0.074 0 0 0 0 1 force @a
particle end_rod ^-0.240 ^-0.243 ^0.079 0 0 0 0 1 force @a
particle end_rod ^-0.223 ^-0.159 ^0.218 0 0 0 0 1 force @a
particle end_rod ^-0.206 ^-0.000 ^0.283 0 0 0 0 1 force @a
particle end_rod ^-0.188 ^0.174 ^0.239 0 0 0 0 1 force @a
particle end_rod ^-0.169 ^0.292 ^0.095 0 0 0 0 1 force @a
particle end_rod ^-0.149 ^0.301 ^-0.098 0 0 0 0 1 force @a
particle end_rod ^-0.129 ^0.191 ^-0.263 0 0 0 0 1 force @a
particle end_rod ^-0.108 ^0.000 ^-0.333 0 0 0 0 1 force @a
particle end_rod ^-0.087 ^-0.199 ^-0.274 0 0 0 0 1 force @a
particle end_rod ^-0.066 ^-0.327 ^-0.106 0 0 0 0 1 force @a
particle end_rod ^-0.044 ^-0.330 ^0.107 0 0 0 0 1 force @a
particle end_rod ^-0.022 ^-0.205 ^0.283 0 0 0 0 1 force @a

particle minecraft:ominous_spawning ~ ~ ~ 0.25 0.3 0.25 0 10 force
particle minecraft:dripping_obsidian_tear ~ ~ ~ 0.15 0.25 0.15 0 5 force
particle minecraft:falling_obsidian_tear ~ ~ ~ 0.15 0.25 0.15 0 1 force

execute anchored eyes at @s run particle dust{color:[0.48,0.02,0.58],scale:1} ^ ^.15 ^.45 0 0 0 0 1 normal
execute anchored eyes at @s run particle minecraft:dust{color:[0.48,0.02,0.58],scale:1} ^ ^.1 ^.475 0 0 0 0 1 normal
execute anchored eyes at @s run particle minecraft:dust{color:[0.78,0.02,0.88],scale:1} ^ ^ ^.5 0 0 0 0 1 normal
execute anchored eyes at @s run particle minecraft:dust{color:[0.48,0.02,0.58],scale:1} ^ ^-.1 ^.475 0 0 0 0 1 normal
execute anchored eyes at @s run particle minecraft:dust{color:[0.48,0.02,0.58],scale:1} ^ ^-.15 ^.45 0 0 0 0 1 normal

# Base of the eye



scoreboard players reset .distance global_range
tag @s remove hh_wall
tag @s remove eye_scan