tag @a[tag=party_alive,sort=random,limit=2] add meteor
execute at @e[type=player,tag=meteor] run summon marker ~ ~40 ~ {Tags:["mr_meteor"]}
execute at @e[type=player,tag=meteor] run summon marker ~ ~ ~ {Tags:["mr_meteor_landing"],CustomName:"Meteor"}
execute as @e[tag=mr_meteor_landing] at @s if block ~ ~-.3 ~ air run function mr_b:ability/trap/trap_ground
execute as @a[tag=meteor] at @s run function mr_b:sfx/meteor
tag @a[tag=meteor] remove meteor