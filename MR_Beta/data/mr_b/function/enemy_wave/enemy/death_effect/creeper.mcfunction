# warn-off-file target-selector-no-type
# warn-off-file execute-group
execute if entity @s[tag=silenced] run return fail
particle explosion ~ ~1 ~ .5 .5 .5 1 20 normal
playsound entity.generic.explode hostile @a ~ ~ ~ 3


execute if entity @s[tag=!mr_disarm] as @e[distance=..1] run damage @s 64 explosion
execute if entity @s[tag=!mr_disarm] as @e[distance=1.1..2] run damage @s 25 explosion
execute if entity @s[tag=!mr_disarm] as @e[distance=2.1..3] run damage @s 18 explosion
execute if entity @s[tag=!mr_disarm] as @e[distance=3.1..4] run damage @s 10 explosion
execute if entity @s[tag=!mr_disarm] as @e[distance=4.1..5] run damage @s 5 explosion
execute if entity @s[tag=!mr_disarm] as @e[distance=5.1..7] run damage @s 3 explosion

execute as @e[distance=..6,type=creeper] run kill @s

tag @e[distance=..6,type=!marker] add mr_stun


execute as @e[distance=..1,type=!marker] if score @s mr_effect_stun_time matches ..100 run scoreboard players set @s mr_effect_stun_time 100
execute as @e[distance=..2,type=!marker] if score @s mr_effect_stun_time matches ..90 run scoreboard players set @s mr_effect_stun_time 90
execute as @e[distance=..3,type=!marker] if score @s mr_effect_stun_time matches ..80 run scoreboard players set @s mr_effect_stun_time 80
execute as @e[distance=..4,type=!marker] if score @s mr_effect_stun_time matches ..70 run scoreboard players set @s mr_effect_stun_time 70
execute as @e[distance=..5,type=!marker] if score @s mr_effect_stun_time matches ..60 run scoreboard players set @s mr_effect_stun_time 60
execute as @e[distance=..6,type=!marker] if score @s mr_effect_stun_time matches ..50 run scoreboard players set @s mr_effect_stun_time 50




execute as @e[tag=mr_stun,distance=..6] store result bossbar stun_effect max run scoreboard players get @s mr_effect_stun_time
execute as @e[tag=mr_stun,distance=..6] store result bossbar silence_effect max run scoreboard players get @s mr_effect_stun_time
execute as @e[tag=mr_stun,distance=..6] store result bossbar disarm_effect max run scoreboard players get @s mr_effect_stun_time