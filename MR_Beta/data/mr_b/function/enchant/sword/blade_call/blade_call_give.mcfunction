scoreboard players reset @s mr_enchant_blade_call_kill_ult
execute if entity @s[tag=ultimate_active] run return fail
execute if entity @s[tag=ultimate_ready] run return fail

give @s potion[potion_contents={custom_color:15786192},custom_name=[{"text":"[ Ultimate ] Blade Call","italic":false}],max_stack_size=64,lore=[[{"text":"Use to manipulate blades that flow with the wind."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},custom_data={ability:true}] 1

tellraw @s ["",{text:"-- ",color:"dark_red"},{text:"[ Ultimate ] Blade Call Ready",color:"red"},{text:" --",color:"dark_red"}]

tag @s add ultimate_ready

# Deep, unsettling buildup + warning tone
playsound minecraft:block.respawn_anchor.set_spawn player @s ~ ~ ~ 0.7 0.6
playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.6 0.5
playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1 0.8
# Ultimate Ready - dramatic charge + clear ping
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.8 1.0
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2.0
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.6 1.2