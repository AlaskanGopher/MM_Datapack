# Teleports
function majoras_mask:locations/clocktown_north/_teleports/_tick

# North Gate Soldier
execute as @e[type=item_display, tag=aj.north_gate_soldier.root, limit=1] run function majoras_mask:locations/clocktown_north/npcs/north_gate_soldier

# Tingle
execute as @e[type=item_display, tag=aj.tingle.root, limit=1] at @s run function majoras_mask:locations/clocktown_north/npcs/tingle