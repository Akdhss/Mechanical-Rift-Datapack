kill @e[tag=boss]
function mr_b:boss/boss_check
damage @e[tag=boss,limit=1] 0
tp @e[tag=boss] ~ ~1 ~