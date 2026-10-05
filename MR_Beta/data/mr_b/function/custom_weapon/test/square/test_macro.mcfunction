

$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^$(width1) ^$(height1) ^$(length1) 0.0 0.0 0.0 0 1
$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^$(width2) ^$(height2) ^$(length1) 0.0 0.0 0.0 0 1
$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^$(width1) ^$(height2) ^$(length1) 0.0 0.0 0.0 0 1
$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^$(width2) ^$(height1) ^$(length1) 0.0 0.0 0.0 0 1

$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^$(width2) ^$(height1) ^$(length2) 0.0 0.0 0.0 0 1
$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^$(width1) ^$(height2) ^$(length2) 0.0 0.0 0.0 0 1
$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^$(width1) ^$(height1) ^$(length2) 0.0 0.0 0.0 0 1
$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^$(width2) ^$(height2) ^$(length2) 0.0 0.0 0.0 0 1




$execute at @s anchored eyes positioned ^ ^ ^$(distance) run summon armor_stand ^$(width1) ^$(height1) ^$(length1) {CustomName:"test_pos1",NoGravity:1b}
$execute at @s anchored eyes positioned ^ ^ ^$(distance) run summon armor_stand ^$(width2) ^$(height2) ^$(length2) {CustomName:"test_pos2",NoGravity:1b}

#summon armor_stand ^ ^ ^ {CustomName:"test_pos1",NoGravity:1b}

execute as @e[name=test_pos1] store result storage mr_b:area coordinate.X1 double 1 run data get entity @s Pos[0]
execute as @e[name=test_pos1] store result storage mr_b:area coordinate.Y1 double 1 run data get entity @s Pos[1]
execute as @e[name=test_pos1] store result storage mr_b:area coordinate.Z1 double 1 run data get entity @s Pos[2]

execute as @e[name=test_pos2] store result storage mr_b:area coordinate.X2 double 1 run data get entity @s Pos[0]
execute as @e[name=test_pos2] store result storage mr_b:area coordinate.Y2 double 1 run data get entity @s Pos[1]
execute as @e[name=test_pos2] store result storage mr_b:area coordinate.Z2 double 1 run data get entity @s Pos[2]



$execute at @s anchored eyes positioned ^ ^ ^$(distance) run particle enchanted_hit ^ ^ ^ 0.0 0.0 0.0 0 1


execute at @s run function mr_b:custom_weapon/test/square/check_macro with storage mr_b:area coordinate