# Day Timer
execute as @a at @s store result score @s time run time query daytime
execute as @a at @s unless entity @s[tag=StopTime] run function majoras_mask:moving_stuff/day_cycle/loop