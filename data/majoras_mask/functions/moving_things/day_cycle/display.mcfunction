# Bossbar Display | day12 is 12hour base clock

execute if entity @s[scores={DayCycle=1..3,Time=0..20}] run bossbar set minecraft:timetitle style notched_12
execute if entity @s[scores={DayCycle=1..3,Time=0..20}] run bossbar set minecraft:timetitle max 12000


# 1st Day
execute if entity @s[scores={DayCycle=1,Time=1}] run title @s subtitle "-72 Hours Remain-"
execute if entity @s[scores={DayCycle=1,Time=1}] run title @s title "Dawn of The First Day"

execute if entity @s[scores={DayCycle=1,Time=0..999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 6"
execute if entity @s[scores={DayCycle=1,Time=1000..1999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 7"
execute if entity @s[scores={DayCycle=1,Time=2000..2999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 8"
execute if entity @s[scores={DayCycle=1,Time=3000..3999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 9"
execute if entity @s[scores={DayCycle=1,Time=4000..4999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 10"
execute if entity @s[scores={DayCycle=1,Time=5000..5999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 11"
execute if entity @s[scores={DayCycle=1,Time=6000..6999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 12"
execute if entity @s[scores={DayCycle=1,Time=7000..7999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 1"
execute if entity @s[scores={DayCycle=1,Time=8000..8999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 2"
execute if entity @s[scores={DayCycle=1,Time=9000..9999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 3"
execute if entity @s[scores={DayCycle=1,Time=10000..10999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 4"
execute if entity @s[scores={DayCycle=1,Time=11000..11999}] run bossbar set minecraft:timetitle name "§7§l1st Day - Hour 5"

# 1st Night
execute if entity @s[scores={DayCycle=1,Time=12000}] run title @s subtitle "-60 Hours Remain-"
execute if entity @s[scores={DayCycle=1,Time=12000}] run title @s title "Night of the First Day"

execute if entity @s[scores={DayCycle=1,Time=12000..12999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 6"
execute if entity @s[scores={DayCycle=1,Time=13000..13999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 7"
execute if entity @s[scores={DayCycle=1,Time=14000..14999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 8"
execute if entity @s[scores={DayCycle=1,Time=15000..15999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 9"
execute if entity @s[scores={DayCycle=1,Time=16000..16999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 10"
execute if entity @s[scores={DayCycle=1,Time=17000..17999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 11"
execute if entity @s[scores={DayCycle=1,Time=18000..18999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 12"
execute if entity @s[scores={DayCycle=1,Time=19000..19999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 1"
execute if entity @s[scores={DayCycle=1,Time=20000..20999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 2"
execute if entity @s[scores={DayCycle=1,Time=21000..21999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 3"
execute if entity @s[scores={DayCycle=1,Time=22000..22999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 4"
execute if entity @s[scores={DayCycle=1,Time=23000..23999}] run bossbar set minecraft:timetitle name "§7§l1st Night - Hour 5"

# 2nd Day
execute if entity @s[scores={DayCycle=2,Time=1}] run title @s subtitle "-48 Hours Remain-"
execute if entity @s[scores={DayCycle=2,Time=1}] run title @s title "Dawn of The Second Day"

execute if entity @s[scores={DayCycle=2,Time=0..999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 6"
execute if entity @s[scores={DayCycle=2,Time=1000..1999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 7"
execute if entity @s[scores={DayCycle=2,Time=2000..2999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 8"
execute if entity @s[scores={DayCycle=2,Time=3000..3999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 9"
execute if entity @s[scores={DayCycle=2,Time=4000..4999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 10"
execute if entity @s[scores={DayCycle=2,Time=5000..5999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 11"
execute if entity @s[scores={DayCycle=2,Time=6000..6999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 12"
execute if entity @s[scores={DayCycle=2,Time=7000..7999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 1"
execute if entity @s[scores={DayCycle=2,Time=8000..8999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 2"
execute if entity @s[scores={DayCycle=2,Time=9000..9999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 3"
execute if entity @s[scores={DayCycle=2,Time=10000..10999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 4"
execute if entity @s[scores={DayCycle=2,Time=11000..11999}] run bossbar set minecraft:timetitle name "§7§l2nd Day - Hour 5"

# 2nd Night
execute if entity @s[scores={DayCycle=2,Time=12000}] run title @s subtitle "-36 Hours Remain-"
execute if entity @s[scores={DayCycle=2,Time=12000}] run title @s title "Night of the Second Day"

execute if entity @s[scores={DayCycle=2,Time=12000..12999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 6"
execute if entity @s[scores={DayCycle=2,Time=13000..13999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 7"
execute if entity @s[scores={DayCycle=2,Time=14000..14999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 8"
execute if entity @s[scores={DayCycle=2,Time=15000..15999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 9"
execute if entity @s[scores={DayCycle=2,Time=16000..16999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 10"
execute if entity @s[scores={DayCycle=2,Time=17000..17999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 11"
execute if entity @s[scores={DayCycle=2,Time=18000..18999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 12"
execute if entity @s[scores={DayCycle=2,Time=19000..19999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 1"
execute if entity @s[scores={DayCycle=2,Time=20000..20999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 2"
execute if entity @s[scores={DayCycle=2,Time=21000..21999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 3"
execute if entity @s[scores={DayCycle=2,Time=22000..22999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 4"
execute if entity @s[scores={DayCycle=2,Time=23000..23999}] run bossbar set minecraft:timetitle name "§7§l2nd Night - Hour 5"

# Final Day
execute if entity @s[scores={DayCycle=3,Time=1}] run title @s subtitle "-24 Hours Remain-"
execute if entity @s[scores={DayCycle=3,Time=1}] run title @s title "Dawn of The Final Day"

execute if entity @s[scores={DayCycle=3,Time=0..999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 6"
execute if entity @s[scores={DayCycle=3,Time=1000..1999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 7"
execute if entity @s[scores={DayCycle=3,Time=2000..2999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 8"
execute if entity @s[scores={DayCycle=3,Time=3000..3999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 9"
execute if entity @s[scores={DayCycle=3,Time=4000..4999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 10"
execute if entity @s[scores={DayCycle=3,Time=5000..5999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 11"
execute if entity @s[scores={DayCycle=3,Time=6000..6999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 12"
execute if entity @s[scores={DayCycle=3,Time=7000..7999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 1"
execute if entity @s[scores={DayCycle=3,Time=8000..8999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 2"
execute if entity @s[scores={DayCycle=3,Time=9000..9999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 3"
execute if entity @s[scores={DayCycle=3,Time=10000..10999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 4"
execute if entity @s[scores={DayCycle=3,Time=11000..11999}] run bossbar set minecraft:timetitle name "§7§lFinal Day - Hour 5"

# 3rd Night

execute if entity @s[scores={DayCycle=3,Time=12000}] run title @s subtitle "-12 Hours Remain-"
execute if entity @s[scores={DayCycle=3,Time=12000}] run title @s title "Night of the Final Day"

execute if entity @s[scores={DayCycle=3,Time=12000..12999}] run bossbar set minecraft:timetitle name "§7§lFinal Night - Hour 6"
execute if entity @s[scores={DayCycle=3,Time=13000..13999}] run bossbar set minecraft:timetitle name "§7§lFinal Night - Hour 7"
execute if entity @s[scores={DayCycle=3,Time=14000..14999}] run bossbar set minecraft:timetitle name "§7§lFinal Night - Hour 8"
execute if entity @s[scores={DayCycle=3,Time=15000..15999}] run bossbar set minecraft:timetitle name "§7§lFinal Night - Hour 9"
execute if entity @s[scores={DayCycle=3,Time=16000..16999}] run bossbar set minecraft:timetitle name "§7§lFinal Night - Hour 10"
execute if entity @s[scores={DayCycle=3,Time=17000..17999}] run bossbar set minecraft:timetitle name "§7§lFinal Night - Hour 11"

# Final Hours


execute if entity @s[scores={DayCycle=3,Time=18000}] run title @s subtitle "-6 Hours Remain-"
execute if entity @s[scores={DayCycle=3,Time=18000}] run title @s title "Final Hours"

execute if entity @s[scores={DayCycle=3,Time=18000}] run bossbar set minecraft:timetitle style notched_6
execute if entity @s[scores={DayCycle=3,Time=18000}] run bossbar set minecraft:timetitle max 6000

execute if entity @s[scores={DayCycle=3,Time=18000..18999}] run bossbar set minecraft:timetitle name "§7§lFinal Hours - 6 Hours Remain"
execute if entity @s[scores={DayCycle=3,Time=19000..19999}] run bossbar set minecraft:timetitle name "§7§lFinal Hours - 5 Hours Remain"
execute if entity @s[scores={DayCycle=3,Time=20000..20999}] run bossbar set minecraft:timetitle name "§7§lFinal Hours - 4 Hours Remain"
execute if entity @s[scores={DayCycle=3,Time=21000..21999}] run bossbar set minecraft:timetitle name "§7§lFinal Hours - 3 Hours Remain"
execute if entity @s[scores={DayCycle=3,Time=22000..22999}] run bossbar set minecraft:timetitle name "§7§lFinal Hours - 2 Hours Remain"
execute if entity @s[scores={DayCycle=3,Time=23000..23999}] run bossbar set minecraft:timetitle name "§7§lFinal Hours - 1 Hours Remain"

execute if entity @s[scores={DayCycle=1..2,Time=12000..23999}] run scoreboard players remove @s Time 12000
execute if entity @s[scores={DayCycle=3,Time=12000..17999}] run scoreboard players remove @s Time 12000
execute if entity @s[scores={DayCycle=3,Time=18000..23999}] run scoreboard players remove @s Time 18000

execute store result bossbar minecraft:timetitle value run scoreboard players get @s Time
execute store result score @s Time run time query daytime