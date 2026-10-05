effect give @s speed 10 1 true
effect give @s absorption 10 2 true
effect give @s instant_health 2 2 true

function mr_b:effect/cleanse/cleanse_effect


playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.9 1.6
playsound minecraft:entity.allay.hurt master @s ~ ~ ~ 0.5 2.0
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.6 1.8