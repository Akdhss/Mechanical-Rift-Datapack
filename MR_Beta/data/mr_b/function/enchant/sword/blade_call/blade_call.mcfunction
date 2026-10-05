
execute if score @s mr_enchant_blade_call_kill matches 1.. run scoreboard players reset @s mr_enchant_blade_call_kill

execute if score @s mr_enchant_blade_call_count matches ..0 run return fail
execute if entity @s[tag=mr_disarm] run return fail

tag @s add raycast_blade_call

execute as @s run scoreboard players remove @s mr_enchant_blade_call_count 1


playsound minecraft:item.trident.throw player @s ~ ~ ~ 0.8 1.6
playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 0.6 1.8
playsound minecraft:item.crossbow.shoot player @s ~ ~ ~ 0.7 1.7
playsound minecraft:entity.arrow.shoot player @s ~ ~ ~ 0.5 2.0
playsound minecraft:entity.phantom.flap player @s ~ ~ ~ 0.4 1.8
playsound minecraft:block.beacon.ambient player @s ~ ~ ~ 0.3 1.5



scoreboard players set @s blade_call_y1 82
execute store result score @s blade_call_y2 run data get entity @s Rotation[1]
scoreboard players operation @s blade_call_y2 += @s blade_call_y1


execute store result storage mr_b:blade blade.y double 1 run scoreboard players get @s blade_call_y2
execute store result storage mr_b:blade blade.x double 1 run data get entity @s Rotation[0]

execute at @s anchored eyes run function mr_b:enchant/sword/blade_call/blade_call_macro with storage mr_b:blade blade




execute as @a[tag=raycast_blade_call] anchored eyes positioned ^ ^ ^ run function mr_b:enchant/sword/blade_call/blade_call_laser



execute if score @s mr_enchant_blade_call_kill matches 1.. run function mr_b:enchant/sword/blade_call/blade_call_refresh
execute as @s[scores={mr_enchant_blade_call_count=0}] run title @s actionbar ["",{text:"--",color:"#B87D00"},{text:"|",color:"black"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:">",color:"black"}]


tag @e remove blade_call_hit

tag @s remove raycast_blade_call

scoreboard players reset @s mr_enchant_blade_call_kill_ult

execute if score @s mr_enchant_blade_call_count matches ..0 run clear @s netherite_sword[enchantments={"mr_b:blade_call":1}] 1
execute if score @s mr_enchant_blade_call_count matches ..0 run tag @s remove ultimate_active
scoreboard players reset .distance global_range

