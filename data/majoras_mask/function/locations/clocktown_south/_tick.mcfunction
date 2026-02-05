# Teleports
function majoras_mask:locations/clocktown_south/_teleports/_tick

# South Gate Soldier
execute as @e[type=item_display, tag=aj.south_gate_soldier.root, limit=1] run function majoras_mask:locations/clocktown_south/npcs/south_gate_soldier

# Brac
execute as @e[type=item_display, tag=aj.brac.root, limit=1] run function majoras_mask:locations/clocktown_south/npcs/brac

# Mack
execute as @e[type=item_display, tag=aj.mack.root, limit=1] run function majoras_mask:locations/clocktown_south/npcs/mack

# Apprentice
execute as @e[type=item_display, tag=aj.apprentice.root, limit=1] run function majoras_mask:locations/clocktown_south/npcs/apprentice

# Bremor
execute as @e[type=item_display, tag=aj.bremor.root, limit=1] run function majoras_mask:locations/clocktown_south/npcs/bremor

# Day Cycle / Final Hours
execute if entity @e[tag=globals,limit=1,scores={Time=0}] run function majoras_mask:locations/clocktown_south/day_cycle/festival_tower


execute if entity @e[tag=globals,limit=1,scores={Time=0}] run function majoras_mask:locations/clocktown_south/day_cycle/reload
execute if entity @e[tag=globals,limit=1,scores={DayCycle=3,Time=18000}] run function majoras_mask:locations/clocktown_south/day_cycle/reload