execute if entity @s[scores={DayCycle=1..3,Time=0..20}] run bossbar set minecraft:timetitle style notched_12
execute if entity @s[scores={DayCycle=1..3,Time=0..20}] run bossbar set minecraft:timetitle max 12000
execute if entity @s[scores={DayCycle=1..3,Time=0..20}] run bossbar set minecraft:timetitle players @a

# Day
$execute if score @s Time matches 1 run title @a subtitle "-$(subtitle1) Hours Remain-"
$execute if score @s Time matches 1 run title @a title "Dawn of the $(title) Day"

$execute if score @s Time matches 0..999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 6"
$execute if score @s Time matches 1000..1999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 7"
$execute if score @s Time matches 2000..2999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 8"
$execute if score @s Time matches 3000..3999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 9"
$execute if score @s Time matches 4000..4999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 10"
$execute if score @s Time matches 5000..5999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 11"
$execute if score @s Time matches 6000..6999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 12"
$execute if score @s Time matches 7000..7999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 1"
$execute if score @s Time matches 8000..8999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 2"
$execute if score @s Time matches 9000..9999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 3"
$execute if score @s Time matches 10000..10999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 4"
$execute if score @s Time matches 11000..11999 run bossbar set minecraft:timetitle name "§7§l$(day) Day - Hour 5"

# Night
$execute if score @s Time matches 12000 run title @a subtitle "-$(subtitle2) Hours Remain-"
$execute if score @s Time matches 12000 run title @a title "Night of the $(title) Day"

$execute if score @s Time matches 12000..12999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 6"
$execute if score @s Time matches 13000..13999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 7"
$execute if score @s Time matches 14000..14999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 8"
$execute if score @s Time matches 15000..15999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 9"
$execute if score @s Time matches 16000..16999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 10"
$execute if score @s Time matches 17000..17999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 11"
$execute if score @s Time matches 18000..18999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 12"
$execute if score @s Time matches 19000..19999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 1"
$execute if score @s Time matches 20000..20999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 2"
$execute if score @s Time matches 21000..21999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 3"
$execute if score @s Time matches 22000..22999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 4"
$execute if score @s Time matches 23000..23999 run bossbar set minecraft:timetitle name "§7§l$(day) Night - Hour 5"
