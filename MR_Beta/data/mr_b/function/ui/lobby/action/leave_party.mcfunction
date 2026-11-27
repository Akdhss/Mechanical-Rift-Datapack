# Runs as the player.
function mr_b:mechanics/leave_party
# no longer in the party: no lobby launcher, and the chest is cleaned up by ui/lobby/tick
execute unless entity @s[team=rift_party] run function mr_b:ui/lobby/remove
