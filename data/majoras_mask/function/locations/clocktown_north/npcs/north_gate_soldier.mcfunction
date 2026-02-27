# Stop all animations
function animated_java:north_gate_soldier/animations/guard_idle/pause
function animated_java:north_gate_soldier/animations/guard_idle_day3/pause
function animated_java:north_gate_soldier/animations/guard_block/pause
function animated_java:north_gate_soldier/animations/guard_move/pause

# Store Current
execute store result score @s coord_x run data get entity @s Pos[0] 100

# Animation
execute unless entity @a[sort=nearest,x=-5,y=106,z=-49,dx=6,dy=5,dz=3] if entity @s[x=-1.5,y=106.9,z=-49.5] if entity @e[tag=globals,tag=!GatesOpen,scores={DayCycle=0..2}] run function animated_java:north_gate_soldier/animations/guard_idle/resume
execute unless entity @a[sort=nearest,x=-5,y=106,z=-49,dx=6,dy=5,dz=3] if entity @s[x=-1.5,y=106.9,z=-49.5] if entity @e[tag=globals,tag=!GatesOpen,scores={DayCycle=3}] run function animated_java:north_gate_soldier/animations/guard_idle_day3/resume
execute if entity @a[sort=nearest,x=-5,y=106,z=-49,dx=6,dy=5,dz=3] if score @s coord_x = @s last_coord_x if entity @e[tag=globals,tag=!GatesOpen] run function animated_java:north_gate_soldier/animations/guard_block/resume
execute if entity @a[sort=nearest,x=-5,y=106,z=-49,dx=6,dy=5,dz=3] unless score @s coord_x = @s last_coord_x if entity @e[tag=globals,tag=!GatesOpen] run function animated_java:north_gate_soldier/animations/guard_move/resume
execute if entity @e[tag=globals,tag=GatesOpen,scores={DayCycle=0..2}] run function animated_java:north_gate_soldier/animations/guard_idle/resume
execute if entity @e[tag=globals,tag=GatesOpen,scores={DayCycle=3}] run function animated_java:north_gate_soldier/animations/guard_idle_day3/resume

# Move Around
execute if entity @a[sort=nearest,x=-4,y=106,z=-49,dx=4,dy=5,dz=3] at @a[sort=nearest,x=-4,y=106,z=-49,dx=4,dy=5,dz=3] if entity @e[tag=globals,tag=!GatesOpen] run tp @s ~ 106.9 -49.5
execute if entity @a[sort=nearest,x=1,y=106,z=-49,dx=1,dy=5,dz=3] if entity @e[tag=globals,tag=!GatesOpen] run tp @s 0.5 106.9 -49.5
execute if entity @a[sort=nearest,x=-6,y=106,z=-49,dx=1,dy=5,dz=3] if entity @e[tag=globals,tag=!GatesOpen] run tp @s -3.5 106.9 -49.5
execute unless entity @a[sort=nearest,x=-5,y=106,z=-49,dx=6,dy=5,dz=3] run tp @s -1.5 106.9 -49.5 0 0

# Look At Player
execute at @s if entity @a[sort=nearest,x=-5,y=106,z=-52,dx=6,dy=5,dz=7] facing entity @a[sort=nearest,x=-5,y=106,z=-52,dx=6,dy=2,dz=7] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# Store Old
execute store result score @s last_coord_x run scoreboard players get @s coord_x

# Interaction Entity
execute as @e[tag=NorthClocktownSoldierInteraction] run tp @s @e[tag=aj.north_gate_soldier.root,limit=1]
execute as @e[tag=NorthClocktownSoldierInteraction] on target as @e[tag=NorthClocktownSoldierInteraction] run scoreboard players add @s text 1
execute as @e[tag=NorthClocktownSoldierInteraction] on target as @e[tag=NorthClocktownSoldierInteraction] run function majoras_mask:locations/clocktown_north/npc_text
execute as @e[tag=NorthClocktownSoldierInteraction] run data remove entity @s interaction
execute as @e[tag=NorthClocktownSoldierInteraction] at @s unless entity @a[distance=..6] run scoreboard players set @s text 0

