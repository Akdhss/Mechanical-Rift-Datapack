$damage @s[team=rift_enemy] $(mob) mr_b:bleeding
$damage @s[team=rift_party] $(player) mr_b:bleeding

effect give @s slowness 2 0 true
#$execute if entity @s[team=rift_enemy] run say $(mob)
#$execute if entity @s[team=rift_party] run say $(player)

particle dust_color_transition{from_color:[0.56,0.0,0.0],to_color:[1.0,0.04,0.04],scale:1} ~ ~1 ~ .2 .5 .2 0 50