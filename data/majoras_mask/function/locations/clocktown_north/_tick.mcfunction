# Teleports
execute as @a[tag=North_Clocktown] run function majoras_mask:locations/clocktown_north/_teleports/_tick

# North Gate Soldier
execute as @e[type=minecraft:interaction, tag=NorthClocktownSoldierInteraction] run function majoras_mask:locations/clocktown_north/npcs/north_gate_soldier/_tick

# Tingle
execute store result storage temp:working tingleAnimation int 1 run scoreboard players get @e[type=minecraft:interaction, tag=TingleInteraction, limit=1] npc_state
execute as @e[type=minecraft:interaction, tag=TingleInteraction] run function majoras_mask:locations/clocktown_north/npcs/tingle/_tick with storage temp:working