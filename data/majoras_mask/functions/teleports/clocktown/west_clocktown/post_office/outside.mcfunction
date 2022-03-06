stopsound @s music
execute if entity @s[scores={DayCycle=1}] run function majoras_mask:music/clocktown_day1
execute if entity @s[scores={DayCycle=3}] run function majoras_mask:music/clocktown_day2
execute if entity @s[scores={DayCycle=5}] run function majoras_mask:music/clocktown_day3
execute if entity @s[scores={DayCycle=7}] run function majoras_mask:music/clocktown_finalhours
tag @s remove Indoors