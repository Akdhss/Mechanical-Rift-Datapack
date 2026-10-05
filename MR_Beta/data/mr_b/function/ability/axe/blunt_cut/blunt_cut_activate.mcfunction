clear @s potion[potion_contents={custom_color:16752722}] 1


give @s netherite_axe[custom_name=[{"text":"Cleaver","italic":false}],enchantments={"mr_b:ratio":1},rarity=epic,tooltip_display={hide_tooltip:true,hidden_components:[unbreakable]},food={nutrition:0,saturation:0,can_always_eat:1b},consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},unbreakable={},use_cooldown={seconds:1,cooldown_group:nondroppable},custom_data={blunt_cut:1b}] 1

execute store result score @s global_random run random value 1..2
execute if score @s global_random matches 1 run tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" No matter what... ",bold:false,color:"red"},{text:"I'm clocking out by six!",bold:true,color:"dark_red"}]
execute if score @s global_random matches 2 run tellraw @a [{text:"[",bold:true,color:"dark_green"},{selector:"@s"},{text:"]",bold:true,color:"dark_green"},{text:" I'll take care of it.",bold:true,color:"dark_red"}]




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