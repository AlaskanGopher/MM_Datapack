# Stop all animations
function animated_java:south_gate_soldier/animations/guard_idle/pause
function animated_java:south_gate_soldier/animations/guard_idle_day3/pause
function animated_java:south_gate_soldier/animations/guard_block/pause
function animated_java:south_gate_soldier/animations/guard_move/pause

# Store Current
execute store result score @s coord_x run data get entity @s Pos[0] 100

# Animation
execute unless entity @a[sort=nearest,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] if entity @s[x=0,y=100,z=57.5] if entity @e[tag=globals,tag=!GatesOpen,scores={DayCycle=0..2}] run function animated_java:south_gate_soldier/animations/guard_idle/resume
execute unless entity @a[sort=nearest,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] if entity @s[x=0,y=100,z=57.5] if entity @e[tag=globals,tag=!GatesOpen,scores={DayCycle=3}] run function animated_java:south_gate_soldier/animations/guard_idle_day3/resume
execute if entity @a[sort=nearest,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] if score @s coord_x = @s last_coord_x if entity @e[tag=globals,tag=!GatesOpen] run function animated_java:south_gate_soldier/animations/guard_block/resume
execute if entity @a[sort=nearest,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] unless score @s coord_x = @s last_coord_x if entity @e[tag=globals,tag=!GatesOpen] run function animated_java:south_gate_soldier/animations/guard_move/resume
execute if entity @e[tag=globals,tag=GatesOpen,scores={DayCycle=0..2}] run function animated_java:south_gate_soldier/animations/guard_idle/resume
execute if entity @e[tag=globals,tag=GatesOpen,scores={DayCycle=3}] run function animated_java:south_gate_soldier/animations/guard_idle_day3/resume

# Move Around
execute if entity @a[sort=nearest,x=1,y=100,z=56,dx=-4,dy=1,dz=-3] at @a[sort=nearest,x=1,y=100,z=56,dx=-2,dy=1,dz=-3] if entity @e[tag=globals,tag=!GatesOpen] run tp @s ~ 100 57.5
execute if entity @a[sort=nearest,x=4,y=100,z=56,dx=-1,dy=1,dz=-3] if entity @e[tag=globals,tag=!GatesOpen] run tp @s 2 100 57.5
execute if entity @a[sort=nearest,x=-3,y=100,z=56,dx=-1,dy=1,dz=-3] if entity @e[tag=globals,tag=!GatesOpen] run tp @s -2 100 57.5
execute unless entity @a[sort=nearest,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] run tp @s 0 100 57.5 180 0

# Look At Player
execute at @s if entity @a[sort=nearest,x=3,y=100,z=60,dx=-6,dy=1,dz=-7] facing entity @a[sort=nearest,x=3,y=100,z=60,dx=-6,dy=1,dz=-7] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# Store Old
execute store result score @s last_coord_x run scoreboard players get @s coord_x

# Interaction Entity
execute as @e[tag=SouthClocktownSoldierInteraction] run tp @s @e[tag=aj.south_gate_soldier.root,limit=1]
execute as @e[tag=SouthClocktownSoldierInteraction] on target as @e[tag=SouthClocktownSoldierInteraction] run scoreboard players add @s text 1
execute as @e[tag=SouthClocktownSoldierInteraction] on target as @e[tag=SouthClocktownSoldierInteraction] run function majoras_mask:locations/clocktown_south/npc_text
execute as @e[tag=SouthClocktownSoldierInteraction] run data remove entity @s interaction
execute as @e[tag=SouthClocktownSoldierInteraction] at @s unless entity @a[distance=..6] run scoreboard players set @s text 0

