give @s potion[potion_contents={custom_color:10592673},custom_name=[{"text":"Domain Expansion - [ Steel Garden ]","italic":false}],use_cooldown={seconds:1,cooldown_group:nondroppable},max_stack_size=64,lore=[[{"text":"Use to expand your thorns unto the world, disarming anyone who dares to compete."}]],rarity=epic,consumable={consume_seconds:1000000000,animation:bow,has_consume_particles:0b},minecraft:custom_data={ability:true}]

tellraw @s ["",{text:"-- ",color:"dark_red"},{text:"[ Ultimate ] Steel Garden Ready",color:"red"},{text:" --",color:"dark_red"}]

tag @s add ultimate_ready
tag @s remove steel_garden_used

scoreboard players reset @s mr_ability_steel_garden_cd

# Deep, unsettling buildup + warning tone
playsound minecraft:block.respawn_anchor.set_spawn player @s ~ ~ ~ 0.7 0.6
playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 0.6 0.5
playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1 0.8
# Ultimate Ready - dramatic charge + clear ping
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.8 1.0
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2.0
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 0.6 1.2