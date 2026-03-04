# Teleports
execute as @a[tag=South_Clocktown] run function majoras_mask:locations/clocktown_south/_teleports/_tick

# Store day cycle to easily call animations by day
execute store result storage temp:working day int 1 run scoreboard players get @e[tag=globals, limit=1] DayCycle

# South Gate Soldier
execute as @e[tag=SouthClocktownSoldierInteraction] run function majoras_mask:locations/clocktown_south/npcs/south_gate_soldier/_tick

# Brac
execute as @e[tag=BracInteraction] run function majoras_mask:locations/clocktown_south/npcs/brac/_tick

# Mack
execute as @e[tag=MackInteraction] run function majoras_mask:locations/clocktown_south/npcs/mack/_tick

# Apprentice
execute as @e[tag=ApprenticeInteraction] run function majoras_mask:locations/clocktown_south/npcs/apprentice/_tick

# Bremor
execute as @e[tag=BremorInteraction] run function majoras_mask:locations/clocktown_south/npcs/bremor/_tick with storage temp:working

# Day Cycle / Final Hours
execute if entity @e[tag=globals,limit=1,scores={Time=0}] run function majoras_mask:locations/clocktown_south/day_cycle/festival_tower

execute if entity @e[tag=globals,limit=1,scores={Time=0}] run function majoras_mask:locations/clocktown_south/day_cycle/reload
execute if entity @e[tag=globals,limit=1,scores={DayCycle=3,Time=18000}] run function majoras_mask:locations/clocktown_south/day_cycle/reload

# Cutscenes
    # Happy Mask Salesman
    #execute unless entity @e[tag=globals,tag=MetSalesman,limit=1] run function majoras_mask:locations/clocktown_south/_cutscenes/happy_mask_salesman/intro