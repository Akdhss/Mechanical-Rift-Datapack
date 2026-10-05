data modify storage mr_b:bloom Motion set from entity @s Motion
execute store result storage mr_b:bloom Motion[0] double 0.0003 run data get storage mr_b:bloom Motion[0] 10000
execute store result storage mr_b:bloom Motion[1] double 0.0003 run data get storage mr_b:bloom Motion[1] 10000
execute store result storage mr_b:bloom Motion[2] double 0.0003 run data get storage mr_b:bloom Motion[2] 10000
data modify entity @s Motion set from storage mr_b:bloom Motion


execute if entity @a[team=rift_party,distance=..1] run function mr_b:enchant/crossbow/bloom_shot/bloom_apply