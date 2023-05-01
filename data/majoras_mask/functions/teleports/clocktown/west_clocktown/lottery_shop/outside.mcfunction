function majoras_mask:music/remove_other

execute if entity @e[type=marker, tag=globals, scores={DayCycle=1, Time=0..11999}] run function majoras_mask:music/clocktown_day1
execute if entity @e[type=marker, tag=globals, scores={DayCycle=2, Time=0..11999}] run function majoras_mask:music/clocktown_day2
execute if entity @e[type=marker, tag=globals, scores={DayCycle=3, Time=0..11999}] run function majoras_mask:music/clocktown_day3
execute if entity @e[type=marker, tag=globals, scores={DayCycle=3, Time=18000..23999}] run function majoras_mask:music/clocktown_finalhours
function majoras_mask:teleports/remove_other
#execute positioned 340 44 -367 as @a[distance=..1] at @s run 
tp @s -35 107 5 ~315 ~