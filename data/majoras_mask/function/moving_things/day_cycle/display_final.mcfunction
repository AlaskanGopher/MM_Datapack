execute if score @s Time matches 18000..18020 run title @a subtitle "-6 Hours Remain-"
execute if score @s Time matches 18000..18020 run title @a title "Final Hours"

execute if score @s Time matches 18000 run bossbar set minecraft:timetitle style notched_6
execute if score @s Time matches 18000 run bossbar set minecraft:timetitle max 6000

execute if score @s Time matches 18000..18999 run bossbar set minecraft:timetitle name "§7§lFinal Hours - 6 Hours Remain"
execute if score @s Time matches 18000..18999 run bossbar set minecraft:timetitle name "§7§lFinal Hours - 5 Hours Remain"
execute if score @s Time matches 18000..18999 run bossbar set minecraft:timetitle name "§7§lFinal Hours - 4 Hours Remain"
execute if score @s Time matches 18000..18999 run bossbar set minecraft:timetitle name "§7§lFinal Hours - 3 Hours Remain"
execute if score @s Time matches 18000..18999 run bossbar set minecraft:timetitle name "§7§lFinal Hours - 2 Hours Remain"
execute if score @s Time matches 18000..18999 run bossbar set minecraft:timetitle name "§7§lFinal Hours - 1 Hours Remain"
