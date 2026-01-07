# 24000 score a day
bossbar set minecraft:timetitle players @p
# Slow Time: 
execute if entity @s[tag=Slow_Time] run scoreboard players add @s DayTickAdvance 1
execute if entity @s[tag=Slow_Time] run bossbar set minecraft:timetitle color blue
# Normal Time:
execute unless entity @s[tag=Slow_Time] run scoreboard players add @s DayTickAdvance 3
execute unless entity @s[tag=Slow_Time] run bossbar set minecraft:timetitle color green

execute if entity @s[scores={DayTickAdvance=3..}] run time add 1

execute as @s run function majoras_mask:moving_things/day_cycle/loop
execute as @s run function majoras_mask:moving_things/day_cycle/display

execute if entity @s[scores={DayTickAdvance=3..}] run scoreboard players set @s DayTickAdvance 0