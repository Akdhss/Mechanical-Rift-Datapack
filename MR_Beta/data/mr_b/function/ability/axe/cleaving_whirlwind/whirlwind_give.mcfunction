give @s potion[potion_contents={custom_color:14729117},custom_name=[{"text":"Cleaving Whirlwind","italic":false}],max_stack_size=64,lore=[[{"text":"Use to rush forward, cleaving everything."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]
scoreboard players reset @s mr_ability_whirlwind_kill
tellraw @s ["",{text:"-- ",color:"dark_gray"},{text:"Whirlwind Recovered",color:"gray"},{text:" --",color:"dark_gray"}]

playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.9 1.8
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 0.7 1.3
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.8 1.6
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1.9