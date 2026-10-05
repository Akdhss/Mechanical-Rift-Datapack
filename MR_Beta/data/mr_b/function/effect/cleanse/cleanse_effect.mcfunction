effect clear @s poison
effect clear @s weakness
effect clear @s slowness
effect clear @s hunger
effect clear @s wither
effect clear @s darkness
effect clear @s blindness
effect give @s fire_resistance 1 0 true

function mr_b:effect/bind/bind_expire
function mr_b:effect/cold/cold_expire
function mr_b:effect/freeze/freeze_expire
function mr_b:effect/silence/silence_expire
function mr_b:effect/bleed/bleed_expire
function mr_b:effect/stun/stun_expire
function mr_b:effect/disarm/disarm_expire
function mr_b:effect/afterburn/afterburn_expire

#playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.7 1.6
#playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.4
#playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 0.9 1.5

# ---------------------------------------------------------
# HOLY ENERGY SURGE
# ---------------------------------------------------------

#playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 0.9 1.8
#playsound minecraft:block.respawn_anchor.charge master @a ~ ~ ~ 0.8 1.3
#playsound minecraft:block.conduit.activate master @a ~ ~ ~ 0.7 1.7

# ---------------------------------------------------------
# CORRUPTION BREAKING AWAY
# ---------------------------------------------------------

#playsound minecraft:block.glass.break master @a ~ ~ ~ 0.6 1.9
#playsound minecraft:block.chain.break master @a ~ ~ ~ 0.5 1.4
#playsound minecraft:block.calcite.break master @a ~ ~ ~ 0.7 1.7

# ---------------------------------------------------------
# DIVINE AFTERGLOW
# ---------------------------------------------------------

#playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 0.5 1.3
#playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.45 1.8
#playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.4 2