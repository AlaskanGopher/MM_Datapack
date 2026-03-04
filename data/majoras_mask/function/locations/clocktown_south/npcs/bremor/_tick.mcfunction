
# Running as Bremor Interaction

tp @s @e[tag=aj.bremor.root,limit=1]
execute as @s at @s unless entity @a[distance=..6] run scoreboard players reset @s text
$execute as @e[type=item_display, tag=aj.bremor.root, limit=1] run function majoras_mask:locations/clocktown_south/npcs/bremor/animation/day$(day)

# Adjust Scoreboard
execute run scoreboard players add @s npc_movement_tick 1
execute if entity @s[scores={npc_movement_tick=31..}] run scoreboard players add @s npc_movement 1
execute if entity @s[scores={npc_movement_tick=31..}] run scoreboard players set @s npc_movement_tick 0
execute if entity @e[tag=globals,limit=1,scores={DayCycle=1}] if entity @s[scores={npc_movement=165..}] run scoreboard players set @s npc_movement 0
execute if entity @e[tag=globals,limit=1,scores={DayCycle=2..3}] if entity @s[scores={npc_movement=15..}] run scoreboard players set @s npc_movement 0