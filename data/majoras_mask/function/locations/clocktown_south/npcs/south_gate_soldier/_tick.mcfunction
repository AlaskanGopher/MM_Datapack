
# Running as minecraft:interaction

execute as @e[type=item_display, tag=aj.south_gate_soldier.root, limit=1] run function majoras_mask:locations/clocktown_south/npcs/south_gate_soldier/animation/_tick

# Interaction Entity
execute as @e[tag=SouthClocktownSoldierInteraction] run tp @s @e[tag=aj.south_gate_soldier.root,limit=1]
execute as @s at @s unless entity @a[distance=..6] run scoreboard players reset @s text

