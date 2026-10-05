
#$execute as @e[x=$(X2),y=$(Y2),z=$(Z2),dx=$(width),dy=$(height),dz=$(length),type=!armor_stand] at @s run particle dust{color:[0.0,0.0,1.0],scale:1} ~ ~2.2 ~ 0 0 0 0 1




#$particle dust{color:[1.0,0.0,0.0],scale:1} $(X1) $(Y1) $(Z1) 0 0 0 0 1
#$particle dust{color:[0.0,0.0,1.0],scale:1} $(X2) $(Y2) $(Z2) 0 0 0 0 1



kill @e[name=test_pos1]
kill @e[name=test_pos2]