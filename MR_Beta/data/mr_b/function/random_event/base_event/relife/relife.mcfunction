tag @e[tag=wave_mob,tag=!special_attribute,limit=5,tag=!boss,type=!player] add relife
tag @e[tag=relife,tag=!special_attribute] add special_attribute
execute as @e[tag=wave_mob,tag=relife] run item replace entity @s weapon.offhand with totem_of_undying