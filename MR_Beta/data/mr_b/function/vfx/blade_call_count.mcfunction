execute as @s[scores={mr_enchant_blade_call_count=1..}] run title @s actionbar ["",{text:"--",color:"#B87D00"},{text:"|",color:"black"},{text:"⬛",color:"gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:">",color:"black"}]
execute as @s[scores={mr_enchant_blade_call_count=2..}] run title @s actionbar ["",{text:"--",color:"#B87D00"},{text:"|",color:"black"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:">",color:"black"}]
execute as @s[scores={mr_enchant_blade_call_count=3..}] run title @s actionbar ["",{text:"--",color:"#B87D00"},{text:"|",color:"black"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"dark_gray"},{text:"⬛",color:"dark_gray"},{text:">",color:"black"}]
execute as @s[scores={mr_enchant_blade_call_count=4..}] run title @s actionbar ["",{text:"--",color:"#B87D00"},{text:"|",color:"black"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"dark_gray"},{text:">",color:"black"}]
execute as @s[scores={mr_enchant_blade_call_count=5..}] run title @s actionbar ["",{text:"--",color:"#B87D00"},{text:"|",color:"black"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:"⬛",color:"gray"},{text:">",color:"black"}]



execute as @s[scores={mr_enchant_blade_call_count=1..}] run particle dust{color:[1,1,1],scale:.25} ^ ^-.23 ^.5 0.0 0.0 0.0 0 1 force @s
execute as @s[scores={mr_enchant_blade_call_count=2..}] run particle dust{color:[1,1,1],scale:.25} ^.15 ^-.2 ^.5 0.0 0.0 0.0 0 1 force @s
execute as @s[scores={mr_enchant_blade_call_count=4..}] run particle dust{color:[1,1,1],scale:.25} ^.25 ^-.15 ^.5 0.0 0.0 0.0 0 1 force @s
execute as @s[scores={mr_enchant_blade_call_count=3..}] run particle dust{color:[1,1,1],scale:.25} ^-.15 ^-.2 ^.5 0.0 0.0 0.0 0 1 force @s
execute as @s[scores={mr_enchant_blade_call_count=5..}] run particle dust{color:[1,1,1],scale:.25} ^-.25 ^-.15 ^.5 0.0 0.0 0.0 0 1 force @s


