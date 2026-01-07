# Day Timer
execute as @e[type=marker, tag=globals, limit=1] store result score @s time run time query daytime
execute as @e[type=marker, tag=globals, limit=1] unless entity @s[tag=StopTime] run function majoras_mask:moving_things/day_cycle/start