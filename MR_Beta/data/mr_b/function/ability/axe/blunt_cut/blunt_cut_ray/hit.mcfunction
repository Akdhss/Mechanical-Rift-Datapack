tp @a[tag=blunt_cut_firing] ^ ^.2 ^-.1

playsound mr_b:blunt_cut master @a[tag=blunt_cut_firing]

#playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.8 0.5
#playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 0.7 0.7
#playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 0.6 1.3

particle minecraft:glow ~ ~1 ~ 0.4 0.7 0.4 0.03 40 force
particle minecraft:witch ~ ~1 ~ 0.5 0.9 0.5 0.02 35 force
particle minecraft:reverse_portal ~ ~1 ~ 0.6 1 0.6 0.03 45 force


#playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 1.8
#playsound minecraft:block.anvil.break master @a ~ ~ ~ 0.7 0.6
#playsound minecraft:block.glass.break master @a ~ ~ ~ 1.4 0.5
#playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.5
#playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.5 1.8

#particle minecraft:explosion_emitter ~ ~1 ~
particle minecraft:poof ~ ~1 ~ 0.7 1 0.7 0.05 60 force


damage @s 250 mr_b:blade_call by @p[tag=blunt_cut_firing]

tag @a[tag=blunt_cut_firing] add blunt_cut_hit

#execute as @a[tag=blunt_cut_hit] if predicate mr_b:wind_bolt run say CROUCH

scoreboard players set .distance global_range 500