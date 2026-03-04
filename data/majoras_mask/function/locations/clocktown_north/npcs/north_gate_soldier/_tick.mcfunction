
# Running as minecraft:interaction

execute as @e[type=item_display, tag=aj.north_gate_soldier.root, limit=1] run function majoras_mask:locations/clocktown_north/npcs/north_gate_soldier/animation/_tick

# Interaction Entity
execute as @s run tp @s @e[tag=aj.north_gate_soldier.root,limit=1]
execute as @s at @s unless entity @a[distance=..6] run scoreboard players reset @s text