clear @s potion[potion_contents={custom_color:15786192}] 1

give @s netherite_sword[custom_name="Windblessed Blades",rarity=epic,enchantments={"mr_b:blade_call":1},attack_animation={type:"stab"},use_cooldown={seconds:1,cooldown_group:nondroppable}] 1
scoreboard players set @s mr_enchant_blade_call_count 5
tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" Get out of my ",bold:false,color:"red"},{text:"WAY!",bold:true,color:"dark_red"}]

tag @s add ultimate_active
tag @s remove ultimate_ready
# Ultimate Activated - powerful burst + energy release
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 0.6 1.2
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.8 1.0
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 0.9 1.3
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.7 1.1
# Violent, terrifying release
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1 0.7
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 0.8 0.6
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.9 0.8
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.7 0.5