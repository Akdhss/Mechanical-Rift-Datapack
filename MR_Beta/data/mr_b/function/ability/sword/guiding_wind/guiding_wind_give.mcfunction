give @s potion[potion_contents={custom_color:9078660},custom_name=[{"text":"Guiding Wind","italic":false}],max_stack_size=64,lore=[[{"text":"Use to harness the wind's guidance."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}]

scoreboard players remove @s mr_ability_guide_kill 15

tellraw @s ["",{text:"-- ",color:"dark_gray"},{text:"Guiding Wind Recovered",color:"gray"},{text:" --",color:"dark_gray"}]

playsound minecraft:block.note_block.pling player @s ~ ~ ~ 0.9 1.8
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 0.7 1.3
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 0.8 1.6
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.6 1.9