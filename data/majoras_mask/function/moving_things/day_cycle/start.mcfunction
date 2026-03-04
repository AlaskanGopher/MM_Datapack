# 24000 score a day

# Slow Time: 
execute if entity @e[tag=globals,tag=Slow_Time] \
    run scoreboard players add @s DayTickAdvance 1
execute if entity @e[tag=globals,tag=Slow_Time] \
    run bossbar set minecraft:timetitle color blue

# Normal Time:
execute unless entity @e[tag=globals,tag=Slow_Time] \
    run scoreboard players add @s DayTickAdvance 3
execute unless entity @e[tag=globals,tag=Slow_Time] \
    run bossbar set minecraft:timetitle color green

execute if entity @s[scores={DayTickAdvance=3..}] run time add 1

execute as @e[tag=globals] run function majoras_mask:moving_things/day_cycle/loop
execute as @e[tag=globals] run function majoras_mask:moving_things/day_cycle/display

execute if entity @e[tag=globals,scores={DayCycle=1..2,Time=12000..23999}] run scoreboard players remove @s Time 12000
execute if entity @e[tag=globals,scores={DayCycle=3,Time=12000..17999}] run scoreboard players remove @s Time 12000
execute if entity @e[tag=globals,scores={DayCycle=3,Time=18000..23999}] run scoreboard players remove @s Time 18000

execute store result bossbar minecraft:timetitle value run scoreboard players get @e[tag=globals,limit=1] Time
execute store result score @e[tag=globals] Time run time query daytime

execute if entity @e[tag=globals,scores={DayTickAdvance=3..}] run scoreboard players set @e[tag=globals] DayTickAdvance 0