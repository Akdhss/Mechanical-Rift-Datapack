# warn-off-file target-selector-no-type
# warn-off-file execute-group


execute if score @s mr_enchant_lily_hp matches 1.. run scoreboard players remove @s mr_enchant_lily_hp 1
execute if score @s mr_enchant_lily_hp matches 100 run attribute @s max_health modifier remove lily_max_health_decay
execute if score @s mr_enchant_lily_hp matches 100 run attribute @s max_health modifier add lily_max_health_decay -.4 add_multiplied_total
execute if score @s mr_enchant_lily_hp matches 80 run attribute @s max_health modifier remove lily_max_health_decay
execute if score @s mr_enchant_lily_hp matches 80 run attribute @s max_health modifier add lily_max_health_decay -.3 add_multiplied_total
execute if score @s mr_enchant_lily_hp matches 60 run attribute @s max_health modifier remove lily_max_health_decay
execute if score @s mr_enchant_lily_hp matches 60 run attribute @s max_health modifier add lily_max_health_decay -.2 add_multiplied_total
execute if score @s mr_enchant_lily_hp matches 40 run attribute @s max_health modifier remove lily_max_health_decay
execute if score @s mr_enchant_lily_hp matches 40 run attribute @s max_health modifier add lily_max_health_decay -.1 add_multiplied_total
execute if score @s mr_enchant_lily_hp matches ..0 run attribute @s max_health modifier remove lily_max_health_decay
execute if score @s mr_enchant_lily_hp matches ..0 run scoreboard players reset @s mr_enchant_lily_hp
execute if score @s mr_enchant_lily_time matches 1.. run scoreboard players remove @s mr_enchant_lily_time 1
execute if score @s mr_enchant_lily_time matches ..0 run function mr_b:enchant/armor/chestplate/lily/lily_proc

execute if entity @s[tag=party_alive,distance=0..] if entity @e[name=player_spawn,tag=run_ongoing,distance=0..,type=marker] run clear @s glass_bottle

execute if entity @s[tag=hailstorm_buff] run tag @s remove hailstorm_buff

execute if score @s mr_player_bow_launch matches 1.. run function mr_b:player/bow_reset
execute unless items entity @s weapon.* bow run function mr_b:player/bow_reset
execute if entity @s[tag=charging_bow,advancements={mr_b:bow_charge=false}] run function mr_b:player/bow_charging

execute if score @s mr_enchant_debil_time matches 1.. run scoreboard players remove @s mr_enchant_debil_time 1
execute if score @s mr_enchant_debil_time matches ..0 at @s run function mr_b:sfx/skill_ready
execute if score @s mr_enchant_debil_time matches ..0 run title @s actionbar [{text:"-- Debilitation Ready! --",color:"gold"}]
execute if score @s mr_enchant_debil_time matches ..0 run scoreboard players reset @s mr_enchant_debil_time

execute if score @s mr_enchant_aether_time matches 1.. run scoreboard players remove @s mr_enchant_aether_time 1
execute if score @s mr_enchant_aether_time matches ..0 at @s run function mr_b:sfx/skill_ready
execute if score @s mr_enchant_aether_time matches ..0 run title @s actionbar [{text:"-- Aetherline Ready! --",color:"gold"}]
execute if score @s mr_enchant_aether_time matches ..0 run scoreboard players reset @s mr_enchant_aether_time

execute if score @s mr_enchant_sonic_time matches 1.. run scoreboard players remove @s mr_enchant_sonic_time 1
execute if score @s mr_enchant_sonic_time matches ..0 at @s run function mr_b:sfx/skill_ready
execute if score @s mr_enchant_sonic_time matches ..0 run title @s actionbar [{text:"-- Sonic Boom Ready! --",color:"gold"}]
execute if score @s mr_enchant_sonic_time matches ..0 run scoreboard players reset @s mr_enchant_sonic_time

execute if score @s mr_enemy_credit_drop matches 8.. run function mr_b:enemy_wave/enemy_credit_drop
execute unless score @s mr_shop_player_currency_check = @s mr_shop_player_currency run function mr_b:shop/credit_check
scoreboard players operation @s mr_shop_player_currency_check = @s mr_shop_player_currency

scoreboard players enable @s mr_shop_book_index
execute unless score @s mr_shop_book_index = .shop mr_shop_book_index run function mr_b:shop/book_index
execute if score @s mr_trap_placement_cooldown matches 1.. run scoreboard players remove @s mr_trap_placement_cooldown 1
execute if score @s mr_trap_placement_cooldown matches ..0 run scoreboard players reset @s mr_trap_placement_cooldown
execute if entity @s[tag=enchant_upgrade_active] run scoreboard players add @s mr_player_enchant_time 1
execute if entity @s[tag=enchant_upgrade_active] if score @s mr_player_enchant_time matches 400.. at @s run function mr_b:shop/enchant/upgrade_enchant/enchant_cleanse

execute if score @s mr_enchant_coal_cd matches 1.. run scoreboard players remove @s mr_enchant_coal_cd 1
execute if score @s mr_enchant_coal_cd matches 1 at @s run function mr_b:enchant/bow/coalescence/coal_ready
execute if score @s mr_enchant_coal_cd matches ..0 run scoreboard players reset @s mr_enchant_coal_cd


execute if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/sturdy_body/sturdy_body"}]] run attribute @s knockback_resistance modifier add sturdy_body 0.45 add_value
execute if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/sturdy_body/sturdy_body"}]] run attribute @s explosion_knockback_resistance modifier add sturdy_body 0.45 add_value
execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/sturdy_body/sturdy_body"}]] run attribute @s knockback_resistance modifier remove sturdy_body
execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/sturdy_body/sturdy_body"}]] run attribute @s explosion_knockback_resistance modifier remove sturdy_body
execute if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/sturdy_body/sturdy_body"}]] run effect give @s slowness 1 0 true

execute if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/determination/determination"}]] at @s[tag=determination_active] run function mr_b:enchant/armor/chestplate/determination/determination_tick

execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/determination/determination"}]] at @s[tag=determination_active] run function mr_b:enchant/armor/chestplate/determination/determination_expire


execute if entity @s[tag=party_dead,gamemode=!spectator] run gamemode spectator

execute if entity @s[tag=class_rich] run item modify entity @s armor.head mr_b:repair
execute if entity @s[tag=class_rich] run item modify entity @s armor.chest mr_b:repair
execute if entity @s[tag=class_rich] run item modify entity @s armor.legs mr_b:repair
execute if entity @s[tag=class_rich] run item modify entity @s armor.feet mr_b:repair

execute at @e[name=player_spawn,distance=0..,type=marker] if entity @s[team=rift_party,distance=..6,tag=party_alive] run advancement grant @s only mr_b:shop_setting/shop_enable
execute at @e[name=player_spawn,distance=0..,type=marker] if entity @s[team=rift_party,distance=6.25..,tag=party_alive] run advancement grant @s only mr_b:shop_setting/shop_disable

execute if items entity @s weapon.mainhand *[enchantments~[{enchantments:"mr_b:ratio"}]] at @s if entity @e[team=rift_enemy,tag=!mr_ratio_target,distance=..10] run scoreboard players add @s mr_enchant_ratio_time 1
execute if score @s[tag=blunt_cut_user,tag=ultimate_active] mr_enchant_ratio_time matches 55 run function mr_b:enchant/axe/ratio/ratio_mark_apply
execute if score @s mr_enchant_ratio_time matches 110 run function mr_b:enchant/axe/ratio/ratio_mark_apply

execute if score @s[tag=!overtime_active] mr_enchant_overtime_kill matches 30.. run function mr_b:enchant/armor/chestplate/overtime/overtime_effect
execute if entity @s[tag=overtime_active] run scoreboard players add @s mr_enchant_overtime_effect 1
execute if entity @s[tag=overtime_active] if score @s mr_enchant_overtime_effect matches 30.. run function mr_b:enchant/armor/chestplate/overtime/overtime_effect
execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:overtime"}]] run scoreboard players reset @s mr_enchant_overtime_kill

execute if entity @s[tag=!party_alive,tag=!party_dead] if score @s ready_state matches 1 at @s run particle dust{color:[0.0,0.84,0.14],scale:1} ~ ~2.5 ~ 0 0 0 0 1
execute if entity @s[tag=!party_alive,tag=!party_dead] if score @s ready_state matches 0 at @s run particle dust{color:[0.84,0.0,0.0],scale:1} ~ ~2.5 ~ 0 0 0 0 1

execute if entity @e[name=player_spawn,tag=run_ongoing,distance=0..,type=marker] if entity @s[tag=party_alive,distance=0..] if score @s player_death matches 1.. at @s run function mr_b:mechanics/active_death

execute if entity @s[tag=party_alive,tag=party_healthy] if score @s mr_player_hp matches ..10 run function mr_b:player/critical_health_announcement
execute if entity @s[tag=party_alive,tag=!party_healthy] if score @s mr_player_hp matches 11.. run function mr_b:player/critical_health_revoke

execute if score @s mr_ability_blunt_cd matches 1.. run scoreboard players remove @s mr_ability_blunt_cd 1

bossbar set silence_effect players @a[tag=silenced]
bossbar set cold_effect players @a[tag=mr_cold,tag=!mr_freeze]
bossbar set freeze_effect players @a[tag=mr_freeze]
bossbar set bind_effect players @a[tag=mr_bind]
bossbar set ratio_effect players @a[tag=mr_ratio_target]
bossbar set bleed_effect players @a[tag=mr_bleed]
bossbar set stun_effect players @a[tag=mr_stun]
bossbar set disarm_effect players @a[tag=mr_disarm]
bossbar set afterburn_effect players @a[tag=mr_afterburn]

bossbar set double_tap_time players @a[tag=double_tap_active,tag=!double_tap_shield_active]
bossbar set double_tap_time_active players @a[tag=double_tap_shield_active]

execute unless score @s mr_effect_bind_time matches 0.. run scoreboard players set @s mr_effect_bind_time 0
execute unless score @s mr_effect_cold_time matches 0.. run scoreboard players set @s mr_effect_cold_time 0
execute unless score @s mr_effect_silence_time matches 0.. run scoreboard players set @s mr_effect_silence_time 0
execute unless score @s mr_effect_bleed_time matches 0.. run scoreboard players set @s mr_effect_bleed_time 0
execute unless score @s mr_effect_stun_time matches 0.. run scoreboard players set @s mr_effect_stun_time 0
execute unless score @s mr_effect_disarm_time matches 0.. run scoreboard players set @s mr_effect_disarm_time 0



execute if entity @e[tag=run_ongoing,distance=0..] run bossbar set wave_progress players @a[team=rift_party,distance=0..]



execute as @e[nbt={Item:{components:{"minecraft:use_cooldown":{seconds:1f,cooldown_group:"minecraft:nondroppable"}}}},distance=0..,type=item] at @s on origin run data modify entity @e[sort=nearest,limit=1,nbt={Item:{components:{"minecraft:use_cooldown":{seconds:1f,cooldown_group:"minecraft:nondroppable"}}}},distance=0..,type=item] Owner set from entity @s UUID
execute as @e[nbt={Item:{components:{"minecraft:use_cooldown":{seconds:1f,cooldown_group:"minecraft:nondroppable"}}}},distance=0..,type=item] run data modify entity @s PickupDelay set value 0s
execute as @e[nbt={Item:{components:{"minecraft:use_cooldown":{seconds:1f,cooldown_group:"minecraft:nondroppable"}}}},distance=0..,type=item] at @s on origin run tp @e[sort=nearest,limit=1,distance=0..,type=item] @s



execute if entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting,distance=0..] store result score @s mr_player_lobby_menu_check run clear @s nether_star[custom_name=[{"text":"Menu","italic":false}]] 0
execute if entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting,distance=0..] if score @s mr_player_lobby_menu_check matches 2.. run clear @s nether_star[custom_name=[{"text":"Menu","italic":false}]]
execute if entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting,distance=0..] run item replace entity @s hotbar.8 with nether_star[food={can_always_eat:1b,nutrition:0,saturation:0},consumable={consume_seconds:99999,animation:none},use_cooldown={seconds:1,cooldown_group:menu_item},custom_name=[{"text":"Menu","italic":false}],rarity=epic,attribute_modifiers=[{type:block_interaction_range,amount:-4.5,slot:mainhand,operation:add_value,id:"1780659174736"}]]
execute if entity @e[name=player_spawn,tag=!run_ongoing,tag=!wave_starting,distance=0..] run advancement revoke @s only mr_b:lobby_setting
execute if score @s mr_player_invite_id matches 0 run scoreboard players add @s mr_player_invite_expire 1


execute unless entity @e[name=player_spawn,distance=0..] run title @s actionbar [{text:"-- No Valid Player Spawn Available --",bold:true,color:"dark_red"}]
execute unless entity @e[name=player_spawn,distance=0..] if score @s mr_player_lobby_menu_toggle matches 1 run function mr_b:general/lobby_menu/menu_off
execute unless entity @e[name=player_spawn,distance=0..] run clear @s nether_star[custom_name=[{"text":"Menu","italic":false}]]



execute if entity @e[tag=wave_starting,distance=0..] as @e[distance=0..,type=item] at @s on origin run data modify entity @e[sort=nearest,limit=1,distance=0..,type=item] Owner set from entity @s UUID
execute if entity @e[tag=wave_starting,distance=0..] as @e[distance=0..,type=item] run data modify entity @s PickupDelay set value 0s
execute if entity @e[tag=wave_starting,distance=0..] as @e[distance=0..,type=item] at @s on origin run tp @e[sort=nearest,limit=1,distance=0..,type=item] @s

execute if entity @s[team=rift_party,tag=ultimate_active] run function mr_b:general/ability/ultimate_active
execute if entity @s[team=rift_party,tag=ultimate_ready] run function mr_b:general/ability/ultimate_active

execute at @s if entity @e[name=hail_mary,distance=..20,type=armor_stand] run title @s actionbar {text:"!!!!!",bold:true,color:"red"}

execute if entity @s[tag=jousting] at @s run function mr_b:enchant/spear/joust_active
execute if entity @s[tag=alacrity_cooldown] if score @s mr_enchant_alacrity_cd matches ..0 run title @s actionbar [{text:"-- Alacrity Ready! --",color:"gold"}]
execute if entity @s[tag=alacrity_cooldown] if score @s mr_enchant_alacrity_cd matches ..0 at @s run function mr_b:sfx/skill_ready
execute if entity @s[tag=alacrity_cooldown] if score @s mr_enchant_alacrity_cd matches ..0 run tag @s remove alacrity_cooldown
execute if score @s mr_enchant_alacrity_cd matches 1.. run scoreboard players remove @s mr_enchant_alacrity_cd 1
execute if score @s mr_enchant_blade_call_count matches 1.. if items entity @s weapon.mainhand *[enchantments~[{enchantments:"mr_b:blade_call"}]] at @s anchored eyes run function mr_b:vfx/blade_call_count

execute if items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/survivor/survivor"}]] run function mr_b:enchant/armor/chestplate/survivor/survivor_apply
execute unless items entity @s armor.chest *[enchantments~[{enchantments:"mr_b:armor/chest/survivor/survivor"}]] run function mr_b:enchant/armor/chestplate/survivor/survivor_expire


execute if entity @s[tag=desc_land] at @s run function mr_b:vfx/desc_land
execute if entity @s[tag=desc_activate] at @s if block ~ ~-.1 ~ air run function mr_b:vfx/desc_fly
execute if entity @s[tag=desc_land] at @s unless block ~ ~-.1 ~ air run function mr_b:ability/spear/descension/desc_land
execute if entity @s[tag=desc_activate] run scoreboard players add @s mr_ability_desc_time 1

execute if entity @s[tag=desc_activate] unless block ~ ~2 ~ air run function mr_b:ability/spear/descension/desc_fall
execute if entity @s[tag=desc_activate] unless block ~ ~1.7 ~.15 air run function mr_b:ability/spear/descension/desc_fall
execute if entity @s[tag=desc_activate] unless block ~ ~1.7 ~-.15 air run function mr_b:ability/spear/descension/desc_fall
execute if entity @s[tag=desc_activate] unless block ~.15 ~1.7 ~ air run function mr_b:ability/spear/descension/desc_fall
execute if entity @s[tag=desc_activate] unless block ~-.15 ~1.7 ~ air run function mr_b:ability/spear/descension/desc_fall



execute if entity @s[tag=desc_activate] if score @s mr_ability_desc_time matches 30.. run function mr_b:ability/spear/descension/desc_fall
execute if entity @s[tag=desc_user] if score @s mr_ability_desc_refresh matches 20.. run function mr_b:ability/spear/descension/desc_refresh

execute if entity @s[tag=sanc_finish] if score .blessing mr_ability_sanc_count matches 4 run function mr_b:ability/sword/sanctuary/sanc_fall

execute store result score @s mr_ability_guide_charge run clear @s potion[potion_contents={custom_color:9078660}] 0
execute if score @s mr_ability_guide_cd matches 1.. run scoreboard players remove @s mr_ability_guide_cd 1
execute if score @s mr_ability_guide_cd matches 1.. at @s run particle cloud ~ ~1 ~ .4 .3 .4 0 10 force
execute if score @s mr_ability_guide_cd matches 0 run scoreboard players reset @s mr_ability_guide_cd

execute if score @s[tag=guiding_wind_user] mr_ability_guide_charge matches ..1 if entity @s[tag=guiding_wind_user] run scoreboard players add @s mr_ability_guide_cd_recharge 1
execute if score @s[tag=guiding_wind_user] mr_ability_guide_charge matches ..1 if score @s[tag=guiding_wind_user] mr_ability_guide_cd_recharge matches 27.. run scoreboard players add @s mr_ability_guide_kill 1
execute if score @s[tag=guiding_wind_user] mr_ability_guide_charge matches ..1 if score @s[tag=guiding_wind_user] mr_ability_guide_cd_recharge matches 27.. run scoreboard players reset @s mr_ability_guide_cd_recharge

execute if score @s[tag=guiding_wind_user] mr_ability_guide_charge matches 3.. run clear @s potion[potion_contents={custom_color:9078660}] 1
execute if score @s[tag=guiding_wind_user] mr_ability_guide_charge matches 2 run scoreboard players reset @s mr_ability_guide_kill


execute if entity @s[tag=blade_call_user,distance=0..] if items entity @s weapon.mainhand *[enchantments~[{enchantments:"mr_b:blade_call"}]] run effect give @s weakness 1 255 true
execute if entity @s[tag=blade_call_user] if score @s mr_enchant_blade_call_kill_ult matches 20.. run function mr_b:enchant/sword/blade_call/blade_call_give
execute if entity @s[tag=guiding_wind_user] at @s if score @s mr_ability_guide_kill matches 15.. run function mr_b:ability/sword/guiding_wind/guiding_wind_give

execute if entity @s[tag=item_set_bought] run function mr_b:shop/item_sets/set_stat

execute if score @s mr_ability_castle_time matches 1.. run scoreboard players remove @s mr_ability_castle_time 1
execute if score @s mr_ability_castle_time matches ..0 run scoreboard players reset @s mr_ability_castle_time
execute if entity @s[tag=castle_user] if score @s mr_ability_castle_cd matches 1.. run scoreboard players remove @s mr_ability_castle_cd 1
execute if entity @s[tag=castle_user] if score @s mr_ability_castle_cd matches ..0 run function mr_b:ability/shield/castle/castle_refresh

execute if score @s mr_ability_sanc_cd_ability matches 1.. run scoreboard players remove @s mr_ability_sanc_cd_ability 1
execute if score @s mr_ability_sanc_cd_ability matches ..0 at @s run function mr_b:sfx/skill_ready
execute if score @s mr_ability_sanc_cd_ability matches ..0 run title @s actionbar [{text:"-- Comet Fall Ready! --",color:"gold"}]
execute if score @s mr_ability_sanc_cd_ability matches ..0 run scoreboard players reset @s mr_ability_sanc_cd_ability
execute if entity @s[tag=sanc_user] if score @s mr_ability_sanc_cd matches 1.. run scoreboard players remove @s mr_ability_sanc_cd 1
execute if entity @s[tag=sanc_user] if score @s mr_ability_sanc_cd matches ..0 run function mr_b:ability/sword/sanctuary/sanc_refresh

execute if score @s mr_ability_whirlwind_cd matches 1.. run scoreboard players remove @s mr_ability_whirlwind_cd 1
execute if score @s mr_ability_whirlwind_cd matches 1.. at @s as @n[distance=..4.5,tag=!mr_ratio_target,team=rift_enemy,limit=999] run function mr_b:ability/axe/cleaving_whirlwind/whirlwind_push
execute if score @s mr_ability_whirlwind_cd matches 1.. at @s run particle cloud ~ ~1 ~ .4 .3 .4 0 10 force
execute if score @s mr_ability_whirlwind_cd matches 0 run scoreboard players reset @s mr_ability_whirlwind_cd
execute if entity @s[tag=whirlwind_user] at @s if score @s mr_ability_whirlwind_kill matches 10.. run function mr_b:ability/axe/cleaving_whirlwind/whirlwind_give
execute if entity @s[tag=blunt_cut_user] if score @s mr_ability_blunt_kill matches 20.. run function mr_b:ability/axe/blunt_cut/blunt_cut_give

execute if entity @s[tag=double_tap_user] if score @s mr_ability_double_tap_kill matches 15.. run function mr_b:ability/shield/double_tap/double_tap_give
execute if entity @s[tag=double_tap_active] if score @s mr_ability_double_tap_kill matches 1.. run function mr_b:ability/shield/double_tap/shield/kill_create
execute if entity @s[tag=double_tap_active] if score @s mr_ability_double_tap_time matches 1.. at @s run function mr_b:ability/shield/double_tap/shield/effect
execute if entity @s[tag=double_tap_shield_active,nbt={HurtTime:9s}] if score @s mr_ability_double_tap_time matches 1.. at @s run function mr_b:ability/shield/double_tap/shield/destroy
execute if score @s mr_ability_double_tap_kill_cd matches 1.. run scoreboard players remove @s mr_ability_double_tap_kill_cd 1

execute if score @s mr_ability_contingency_cd matches 1.. run scoreboard players remove @s mr_ability_contingency_cd 1
execute if score @s mr_ability_contingency_cd matches ..0 run scoreboard players reset @s mr_ability_contingency_cd

execute if score @s mr_ability_frost_touch_cd matches 1.. run scoreboard players remove @s mr_ability_frost_touch_cd 1
execute if entity @s[tag=frost_touch_user] if score @s mr_ability_frost_touch_cd_refresh matches 1.. run scoreboard players remove @s mr_ability_frost_touch_cd_refresh 1
execute if entity @s[tag=frost_touch_user] if score @s mr_ability_frost_touch_cd_refresh matches ..0 run function mr_b:ability/sword/frost_touch/frost_touch_refresh
execute if entity @s[tag=hailstorm_user,tag=hailstorm_used] if score @s mr_ability_hailstorm_cd matches ..0 run function mr_b:ability/domain/hailstorm/hailstorm_give
execute if entity @s[tag=hailstorm_user,tag=hailstorm_used] if score @s mr_ability_hailstorm_cd matches 1.. run scoreboard players remove @s mr_ability_hailstorm_cd 1

execute if score @s mr_throwable_impact_cd matches 1.. run scoreboard players remove @s mr_throwable_impact_cd 1
execute if score @s mr_throwable_impact_cd matches ..0 run scoreboard players reset @s mr_throwable_impact_cd


execute if entity @s[tag=weapon_upgrade_active,predicate=mr_b:wind_bolt] at @s run function mr_b:shop/upgrade/weapon_enhance
execute if entity @s[tag=armor_upgrade_active] at @s run function mr_b:shop/upgrade/armor_enhance
execute if entity @s[tag=weapon_upgrade_active] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ .35 .5 .35 0 2
execute if entity @s[tag=enchant_upgrade_active] at @s run particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ .35 .5 .35 0 2
execute if entity @s[tag=enchant_upgrade_active,predicate=mr_b:wind_bolt] at @s run function mr_b:shop/enchant/upgrade_enchant/enchant_upgrade

execute if score @s mr_armor_upgrade_cooldown matches 1.. run scoreboard players remove @s mr_armor_upgrade_cooldown 1


# ----- enemy on hit effect -----
execute if entity @s[nbt={HurtTime:9s}] on attacker if entity @s[name=Mirror,tag=!silenced] as @p[nbt={HurtTime:9s}] run function mr_b:random_event/base_event/mirror/mirror_jumpscare

execute if entity @s[nbt={HurtTime:9s}] on attacker if entity @s[type=wolf,tag=!silenced] as @p[nbt={HurtTime:9s}] run function mr_b:enemy_wave/enemy/wolf/apply
execute if entity @s[nbt={HurtTime:9s}] on attacker if entity @s[tag=spearman,tag=!silenced] as @p[nbt={HurtTime:9s}] run function mr_b:enemy_wave/enemy/spearman/enemy_apply
execute if entity @s[nbt={HurtTime:9s}] on attacker if entity @s[tag=spearman,tag=!silenced] run function mr_b:enemy_wave/enemy/spearman/self_apply


execute if entity @s[tag=party_dead,tag=casting_domain,tag=!domain_immune] run function mr_b:ability/domain/domain_interrupt
execute if entity @s[team=rift_party,tag=casting_domain] run scoreboard players remove @s mr_domain_wind_up 1
execute if entity @s[team=rift_party,tag=casting_domain] run function mr_b:ability/domain/domain_cast


execute unless items entity @s weapon.* *[custom_data~{scope_available:true}] if score @s mr_player_scope_toggle matches 1.. run scoreboard players reset @s mr_player_scope_toggle
execute unless items entity @s weapon.* *[custom_data~{scope_available:true}] run attribute @s movement_speed modifier remove scope_mvspd 


execute if entity @s[tag=agile_active] unless items entity @s armor.feet *[enchantments~[{enchantments:"mr_b:armor/feet/agile/agile"}]] run function mr_b:enchant/armor/boots/agile/agile_expire


execute if entity @s[tag=steel_garden_user,tag=steel_garden_used] if score @s mr_ability_steel_garden_cd matches ..0 run function mr_b:ability/domain/steel_garden/give
execute if entity @s[tag=steel_garden_user,tag=steel_garden_used] if score @s mr_ability_steel_garden_cd matches 1.. run scoreboard players remove @s mr_ability_steel_garden_cd 1

execute if entity @s[tag=null_command_user,tag=null_command_used] if score @s mr_ability_null_command_cd matches ..0 run function mr_b:ability/domain/null_command/give
execute if entity @s[tag=null_command_user,tag=null_command_used] if score @s mr_ability_null_command_cd matches 1.. run scoreboard players remove @s mr_ability_null_command_cd 1
execute if score @s mr_ability_null_command_pulse matches 1.. run function mr_b:voiceline/domain_null_command


#execute if items entity @s weapon.* *[enchantments~[{enchantments:"mr_b:weapon/shield/counterstance/counterstance"}]] if score @s mr_player_shield_use matches 1 run function mr_b:enchant/shield/counterstance/hold

execute if score @s mr_player_shield_hold matches 1.. if score @s mr_player_shield_use matches 0 run scoreboard players reset @s mr_player_shield_hold

execute if entity @s[tag=storm_affected] run scoreboard players remove @s mr_obj_storm_effect 1
execute if entity @s[tag=storm_affected] if score @s mr_obj_storm_effect matches ..1 run tag @s remove storm_affected


execute if predicate mr_b:armor_check run title @s actionbar {text:"-- REPAIR ARMOR NOW!! --",bold:true,color:"red"}

#------------------------------------------------------- [ SHOP UI ] ------------------------------------------------------- 


execute if items entity @s weapon.* *[custom_data={ui:1b}] run function mr_b:tick_branch/shop_ui/teleport
execute unless items entity @s weapon.* *[custom_data={ui:1b}] if score @s ui.id matches 0.. run function mr_b:tick_branch/shop_ui/close

