data modify storage mr_b:area coordinate.distance set value 4

data modify storage mr_b:area coordinate.length set value 7
data modify storage mr_b:area coordinate.height set value 3
data modify storage mr_b:area coordinate.width set value 3



execute store result storage mr_b:area coordinate.length1 float .5 run data get storage mr_b:area coordinate.length
execute store result storage mr_b:area coordinate.height1 float .5 run data get storage mr_b:area coordinate.height
execute store result storage mr_b:area coordinate.width1 float .5 run data get storage mr_b:area coordinate.width

execute store result storage mr_b:area coordinate.length2 double -.5 run data get storage mr_b:area coordinate.length
execute store result storage mr_b:area coordinate.height2 double -.5 run data get storage mr_b:area coordinate.height
execute store result storage mr_b:area coordinate.width2 double -.5 run data get storage mr_b:area coordinate.width



function mr_b:custom_weapon/test/square/test_macro with storage mr_b:area coordinate