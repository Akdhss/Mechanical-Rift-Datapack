# warn-off-file execute-group
# warn-off-file target-selector-no-type
#runs every tick

kill @e[distance=0..,type=area_effect_cloud]
kill @e[nbt={inGround:1b},tag=!ricochet_arrow,distance=0..,type=minecraft:arrow]
execute as @e[tag=!checked,distance=0..,type=arrow] run function mr_b:tick_branch/projectile/kill
execute as @e[tag=!checked,distance=0..,type=small_fireball] run function mr_b:tick_branch/projectile/kill
execute as @e[tag=!checked,tag=!mr_projectile,distance=0..,type=splash_potion] run function mr_b:tick_branch/projectile/kill
execute as @e[tag=!checked,distance=0..,type=ender_pearl] run function mr_b:tick_branch/projectile/kill


execute as @e[distance=0..,type=item] at @s run particle electric_spark ~ ~.4 ~ .1 .1 .1 0 1

execute as @e[distance=0..] at @s if block ~ ~-1 ~ purple_wool run effect give @s jump_boost 1 3 true
execute as @e[distance=0..] at @s if block ~ ~-1 ~ light_blue_wool run effect give @s speed 1 3 true
execute as @e[distance=0..] at @s if block ~ ~-1.1 ~ purple_wool run effect clear @s jump_boost

execute at @e[tag=spawnpoint,name=!player_spawn,name=!lobby_spawn,distance=0..,type=marker] run function mr_b:vfx/spawn_loc_enemy
execute at @e[tag=spawnpoint,name=lobby_spawn,distance=0..,type=marker] run function mr_b:vfx/spawn_loc_friendly
execute at @e[tag=spawnpoint,name=player_spawn,distance=0..,type=marker] run function mr_b:vfx/spawn_loc_friendly

execute as @e[tag=used,distance=0..,type=item_display] run scoreboard players add @s blade_call_time 1
execute as @e[tag=used,distance=0..,type=item_display] if score @s blade_call_time matches 250.. run kill @s

execute as @a[team=!rift_party] if items entity @s container.* *[use_cooldown={seconds:1,cooldown_group:menu_item}] run clear @s *[use_cooldown={seconds:1,cooldown_group:menu_item}]

execute as @e[tag=pathing_mob,team=rift_enemy,limit=999,distance=0..] at @s run function mr_b:tick_branch/pathing_mob_tick
execute as @e[name=player_spawn,limit=1,distance=0..,tag=!run_fail_end,type=marker] at @s run function mr_b:tick_branch/marker_tick
execute as @a[team=rift_party,limit=999] at @s run function mr_b:tick_branch/rift_party_tick
execute as @e[tag=dummy,distance=0..,type=husk] at @s run function mr_b:tick_branch/dummy_tick
execute as @e[tag=boss,distance=0..] at @s run function mr_b:tick_branch/boss_tick
execute as @e[tag=wave_mob,distance=0..] at @s run function mr_b:tick_branch/enemy_tick
execute as @e[tag=trap,distance=0..] at @s run function mr_b:tick_branch/trap_tick
execute as @e[tag=mr_projectile,distance=0..] run function mr_b:tick_branch/projectile/base
execute as @e[tag=mr_projectile_body,distance=0..] run function mr_b:tick_branch/projectile/body
execute as @e[tag=ui,distance=0..,type=chest_minecart] run function mr_b:tick_branch/shop_ui/minecart/tick
execute as @e[name=base_slash,distance=0..] run function mr_b:boss/the_fallen/dismantle/tick

execute as @e[nbt={Item:{components:{"minecraft:use_cooldown":{seconds:1f,cooldown_group:"minecraft:menu_item"}}}},distance=0..,type=item] at @s run function mr_b:tick_branch/menu_settings
execute as @e[nbt={Item:{components:{"minecraft:use_cooldown":{seconds:1f,cooldown_group:"minecraft:menu_item"}}}},distance=0..,type=item] at @s run kill @s


execute as @e[name=hail_mary,distance=0..,type=armor_stand] run scoreboard players add @s mr_enchant_mary_time 1
execute as @e[name=hail_mary,scores={mr_enchant_mary_time=200..},distance=0..,type=armor_stand] at @s run function mr_b:enchant/armor/hail_mary_explode
execute if entity @e[name=hail_mary,distance=0..,type=armor_stand] run function mr_b:voiceline/hail_mary_pray



execute as @e[name=sanc_obelisk,distance=0..] at @s if block ~ ~-.1 ~ air run function mr_b:vfx/desc_fly
#execute as @e[name=sanc_obelisk,tag=!sanc_landed] at @s unless block ~ ~-.1 ~ air run function mr_b:vfx/sanc_land
execute as @e[name=sanc_obelisk,tag=!sanc_landed,distance=0..] at @s run tp @s ~ ~-2 ~
execute as @e[name=sanc_obelisk,tag=!sanc_landed,distance=0..] at @s if entity @e[name=sanc_obelisk_landing,distance=..2] run function mr_b:vfx/sanc_land

execute as @e[name=sanc_obelisk,tag=sanc_landed,distance=0..] at @s run function mr_b:ability/sword/sanctuary/sand_land
execute as @e[name=sanc_obelisk,distance=0..] run scoreboard players add @s mr_ability_sanc_obelisk 1
execute as @e[name=sanc_obelisk,distance=0..] if score @s mr_ability_sanc_obelisk matches 300.. run kill @s
execute at @e[tag=sanc_blessing_target,distance=0..] run function mr_b:vfx/sanc_target
execute at @e[name=sanc_obelisk_landing,distance=0..] run function mr_b:vfx/sanc_target


execute as @e[tag=mr_bind,distance=0..] at @s run function mr_b:effect/bind/bind_effect
execute as @e[tag=mr_cold,distance=0..] at @s run function mr_b:effect/cold/cold_effect
execute as @e[tag=mr_cold,tag=mr_freeze,distance=0..] unless score @s mr_effect_cold_time matches 1.. run function mr_b:effect/freeze/freeze_expire
execute as @e[tag=mr_cold,tag=mr_freeze,distance=0..] at @s as @e[tag=frozen_state2,distance=0..,type=block_display] if score @s mr_effect_freeze_link = @n[tag=mr_freeze,distance=0..] mr_effect_freeze_link run tp @s ~-.5 ~ ~-.5
execute as @e[tag=frozen_state2,distance=0..,type=block_display] run function mr_b:effect/freeze/freeze_kill
execute as @e[tag=mr_shatter,distance=0..] at @s run function mr_b:effect/shatter/shatter_check
execute as @e[tag=silenced,distance=0..] run function mr_b:effect/silence/silence_effect
execute as @e[tag=mr_ratio_target,distance=0..] run function mr_b:effect/ratio/ratio_effect
execute as @e[tag=mr_cleanse,distance=0..] run function mr_b:effect/silence/silence_effect
execute as @e[tag=mr_bleed,distance=0..] run function mr_b:effect/bleed/bleed_check
execute as @e[tag=mr_ground,distance=0..] at @s run function mr_b:effect/ground/ground_effect
execute as @e[tag=mr_stun,distance=0..] at @s run function mr_b:effect/stun/stun_effect
execute as @e[tag=mr_disarm,distance=0..] at @s run function mr_b:effect/disarm/disarm_effect
execute as @e[tag=mr_afterburn,distance=0..] at @s run function mr_b:effect/afterburn/afterburn_effect


#-------------


execute if entity @a[tag=double_tap_active,distance=0..] as @e[name=!double_tap_orb,nbt={HurtTime:9s},distance=0..] at @s on attacker if entity @s[tag=double_tap_active,distance=0..] as @n[nbt={HurtTime:9s},distance=0..] run function mr_b:ability/shield/double_tap/orb/orb
execute if entity @a[tag=double_tap_active,distance=0..] as @e[name=double_tap_orb,nbt={HurtTime:9s},distance=0..] at @s run function mr_b:ability/shield/double_tap/orb/orb_sound_hit
execute as @e[name=double_tap_orb,distance=0..] at @s run function mr_b:ability/shield/double_tap/orb/orb_duration
execute as @e[name=death_orb_loc,distance=0..] run function mr_b:ability/shield/double_tap/deathorb/search


execute as @e[tag=bleed_hit,distance=0..] run tag @s remove bleed_hit

execute as @e[name=frost_orb,distance=0..] at @s run function mr_b:ability/sword/frost_touch/frost_orb_launch


execute as @e[name=hailstorm,tag=domain,distance=0..,type=marker] at @s run function mr_b:ability/domain/hailstorm/hailstorm_effect
execute as @e[name=steel_garden,tag=domain,distance=0..,type=marker] at @s run function mr_b:ability/domain/steel_garden/aoe


execute as @a[tag=traitor,tag=party_alive] run function mr_b:enemy_wave/traitor_set
execute as @a[tag=traitor] if score @s player_death matches 1.. run function mr_b:enemy_wave/traitor_death




execute store result bossbar boss_bar value run data get entity @e[tag=boss,tag=!boss_invulnerable,limit=1,distance=0..] Health
execute if entity @e[tag=captain,distance=0..] run bossbar set boss_bar name [{"text":"The Captain: "},{"score":{"name":"@e[tag=boss,limit=1,tag=!boss_invulnerable,distance=0..]","objective":"mr_boss_hp"}},{"text":" HP"}]
execute if entity @e[tag=fallen,tag=collapse_ready,distance=0..] run bossbar set boss_bar name [{"text":"The Fallen: "},{"score":{"name":"@e[tag=boss,limit=1,distance=0..]","objective":"mr_boss_hp"}},{"text":" HP"}]
execute if entity @e[tag=fallen,tag=collapsing,distance=0..] run bossbar set boss_bar name [{"text":"The Fallen: "},{"score":{"name":"@e[tag=boss,limit=1,distance=0..]","objective":"mr_boss_hp"}},{"text":" HP"}]
execute if entity @e[tag=fallen,tag=!collapse_ready,tag=!collapsing,distance=0..] run bossbar set boss_bar name [{"text":"[ Matt ]",color:aqua},{"text":" The 'Fallen' : ",color:white},{"score":{"name":"@e[tag=boss,limit=1,distance=0..]","objective":"mr_boss_hp"},color:white},{"text":" HP",color:white}]
execute as @e[tag=boss,tag=!boss_invulnerable,limit=1,distance=0..] store result bossbar boss_bar max run attribute @s max_health get

execute as @e[tag=boss,tag=!boss_invulnerable,distance=0..] store result score @s mr_boss_hp run data get entity @s Health
execute unless entity @e[tag=boss,distance=0..] run bossbar remove boss_bar
execute unless entity @e[tag=boss,distance=0..] run bossbar remove ability_cd


execute as @e[tag=skypiercer_arrow,distance=0..,type=arrow] at @s run function mr_b:enchant/crossbow/skypiercer/skypiercer_trail


execute as @e[name=Mirror,distance=0..] at @s as @e[name=mirror_face,distance=0..] if score @s mr_special_enemy_mirror_link = @n[name=Mirror,distance=0..] mr_special_enemy_mirror_link run tp @s @n[name=Mirror,distance=0..]

execute as @e[name=contingency,distance=0..] at @s as @e[distance=..5,] if entity @s[type=!marker,type=!armor_stand,team=!rift_enemy,team=!rift_party,distance=0..] run function mr_b:ability/shield/contingency/particles
execute as @e[name=contingency,distance=0..] run scoreboard players add @s mr_ability_contingency_duration 1
execute as @e[name=contingency,distance=0..] if score @s mr_ability_contingency_duration matches 300.. run kill @s
execute as @e[name=contingency,distance=0..] at @s run particle witch ~ ~.1 ~ .1 .1 .1 0 5


execute as @a[team=!rift_party] if score @s mr_player_invite_queue matches -2147483648.. if score @s mr_player_invite_queue = @a[limit=1,team=rift_party] mr_player_invite_id run function mr_b:general/lobby_menu/party/invite_sent
execute as @a[team=!rift_party] if score @s mr_shop_book_index matches -50 run function mr_b:general/lobby_menu/party/accept_invite
execute as @a[team=!rift_party] if score @s mr_shop_book_index matches -51 run function mr_b:general/lobby_menu/party/decline_invite
execute as @a[tag=invitation_sent] run scoreboard players add @s mr_player_invite_expire 1
execute as @a if score @s mr_player_invite_expire matches 200.. run function mr_b:general/lobby_menu/party/decline_invite


execute as @e[tag=mr_projectile_body,distance=0..] run tag @s add throwable_in_air
execute as @e[tag=mr_projectile,distance=0..] at @s as @e[tag=mr_projectile_body,distance=0..] if score @s mr_throwable_grenade_link = @n[tag=mr_projectile,distance=0..] mr_throwable_grenade_link run tag @s remove throwable_in_air
execute as @e[tag=mr_projectile,distance=0..] at @s as @e[tag=mr_projectile_body,distance=0..] if score @s mr_throwable_grenade_link = @n[tag=mr_projectile,distance=0..] mr_throwable_grenade_link run tp @s ~ ~ ~



execute as @e[name=molotov_aoe,distance=0..] at @s run function mr_b:ability/grenade/molotov/aoe
execute as @e[name=impulse_aoe,distance=0..] at @s run function mr_b:ability/grenade/impulse/aoe

execute at @e[name=test_beacon,tag=throwable_in_air,distance=0..] run function mr_b:vfx/sanc_target

execute as @e[tag=mr_meteor,distance=0..] at @s run tp @s ~ ~-1.4 ~
execute as @e[tag=mr_meteor_landing,distance=0..] at @s if entity @e[tag=mr_meteor,distance=...75] run function mr_b:random_event/base_event/meteor/meteor_explode
execute as @e[tag=mr_meteor_landing,distance=0..] at @s run function mr_b:random_event/base_event/meteor/meteor_landing
execute as @e[tag=mr_meteor,distance=0..] at @s run function mr_b:random_event/base_event/meteor/meteor_body



#execute as @e[name=test,tag=!test_used] at @s if block ^ ^-.5 ^.5 minecraft:dirt_path run summon minecraft:armor_stand ^ ^ ^.5 {CustomName:"test"}
#execute as @e[name=test,tag=!test_used] at @s run tag @e[name=test] add test_used
#execute as @e[name=test] at @s run summon minecraft:armor_stand ^ ^ ^-.25 {CustomName:"test1"}

execute as @e[tag=independent_domain,distance=0..] run scoreboard players remove @s mr_domain_wind_up 1
execute as @e[tag=independent_domain,distance=0..] run function mr_b:ability/domain/domain_cast

execute as @e[tag=!checked,distance=0..,type=item] on origin run function mr_b:shop/player_inventory_check
execute as @e[tag=!checked,distance=0..,type=item] run tag @s add checked