stopsound @a music
execute if entity @s[scores={DayCycle=1,Time=0..11999}] run function majoras_mask:music/clocktown_day1
execute if entity @s[scores={DayCycle=2,Time=0..11999}] run function majoras_mask:music/clocktown_day2
execute if entity @s[scores={DayCycle=3,Time=0..11999}] run function majoras_mask:music/clocktown_day3
execute if entity @s[scores={DayCycle=3,Time=18000..23999}] run function majoras_mask:music/clocktown_finalhours
tag @a add West_Clocktown
tag @a remove Termina_Field
tp @s 365 56 -365