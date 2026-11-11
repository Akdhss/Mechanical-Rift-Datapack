# warn-off-file execute-group
advancement revoke @s only mr_b:entity_damages


tag @s add player_damaged


# ----- enemy on hit effect -----
execute on attacker if entity @s[name=Mirror,tag=!silenced] as @p[tag=player_damaged] run function mr_b:random_event/base_event/mirror/mirror_jumpscare

execute on attacker if entity @s[type=wolf,tag=!silenced] as @p[tag=player_damaged] run function mr_b:enemy_wave/enemy/wolf/apply
execute on attacker if entity @s[tag=spearman,tag=!silenced] as @p[tag=player_damaged] run function mr_b:enemy_wave/enemy/spearman/enemy_apply
execute on attacker if entity @s[tag=spearman,tag=!silenced] run function mr_b:enemy_wave/enemy/spearman/self_apply


tag @s remove player_damaged