execute unless block ~ ~-.5 ~ air run return fail
execute if entity @s[tag=cloudstep_used] run return fail
execute unless items entity @s armor.feet diamond_boots[enchantments={"mr_b:cloudstep":1}] unless items entity @s armor.feet netherite_boots[enchantments={"mr_b:cloudstep":1}] run return fail
function mr_b:enchant/armor/boots/cloudstep/jump
