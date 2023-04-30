# Day Timer
execute as @e[tag=globals] store result score @s time run time query daytime
execute as @e[tag=globals] unless entity @s[tag=StopTime] run function majoras_mask:moving_things/day_cycle/start