# Day Timer
execute as @e[type=marker, tag=globals, limit=1] unless entity @s[tag=StopTime] run function majoras_mask:moving_things/day_cycle/start

# South Clocktown
execute if entity @a[tag=South_Clocktown] as @e[type=item_display, tag=aj.soldier.root, limit=1] run function majoras_mask:moving_things/clocktown/soldier_gate/animation