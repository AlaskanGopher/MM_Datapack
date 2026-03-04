# Stop all animations
function animated_java:east_gate_soldier/animations/guard_idle/pause
function animated_java:east_gate_soldier/animations/guard_idle_day3/pause
function animated_java:east_gate_soldier/animations/guard_block/pause
function animated_java:east_gate_soldier/animations/guard_move/pause

# Store Current
execute store result score @s coord_x run data get entity @s Pos[0] 100

# Animation
execute unless entity @a[sort=nearest,x=53,y=102,z=8,dx=-3,dy=4,dz=4] if entity @s[x=0,y=100,z=57.5] if entity @e[tag=globals,tag=!GatesOpen,scores={DayCycle=0..2}] run function animated_java:east_gate_soldier/animations/guard_idle/resume
execute unless entity @a[sort=nearest,x=53,y=102,z=8,dx=-3,dy=4,dz=4] if entity @s[x=0,y=100,z=57.5] if entity @e[tag=globals,tag=!GatesOpen,scores={DayCycle=3}] run function animated_java:east_gate_soldier/animations/guard_idle_day3/resume
execute if entity @a[sort=nearest,x=53,y=102,z=8,dx=-3,dy=4,dz=4] if score @s coord_x = @s last_coord_x if entity @e[tag=globals,tag=!GatesOpen] run function animated_java:east_gate_soldier/animations/guard_block/resume
execute if entity @a[sort=nearest,x=53,y=102,z=8,dx=-3,dy=4,dz=4] unless score @s coord_x = @s last_coord_x if entity @e[tag=globals,tag=!GatesOpen] run function animated_java:east_gate_soldier/animations/guard_move/resume
execute if entity @e[tag=globals,tag=GatesOpen,scores={DayCycle=0..2}] run function animated_java:east_gate_soldier/animations/guard_idle/resume
execute if entity @e[tag=globals,tag=GatesOpen,scores={DayCycle=3}] run function animated_java:east_gate_soldier/animations/guard_idle_day3/resume

# Move Around
execute if entity @a[sort=nearest,x=53,y=102,z=8,dx=-3,dy=4,dz=4] at @a[sort=nearest,x=53,y=102,z=8,dx=-3,dy=4,dz=4] if entity @e[tag=globals,tag=!GatesOpen] run tp @s 54 102 ~
execute unless entity @a[sort=nearest,x=53,y=102,z=8,dx=-3,dy=4,dz=4] run tp @s 54 102 10 90 0

# Look At Player
execute at @s if entity @a[sort=nearest,x=53,y=102,z=8,dx=-4,dy=4,dz=4] facing entity @a[sort=nearest,x=53,y=102,z=8,dx=-4,dy=4,dz=4] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# Store Old
execute store result score @s last_coord_x run scoreboard players get @s coord_x

# Interaction Entity
execute as @e[tag=EastClocktownSoldierInteraction] run tp @s @e[tag=aj.east_gate_soldier.root,limit=1]
execute as @e[tag=EastClocktownSoldierInteraction] on target as @e[tag=EastClocktownSoldierInteraction] run scoreboard players add @s text 1
execute as @e[tag=EastClocktownSoldierInteraction] on target as @e[tag=EastClocktownSoldierInteraction] run function majoras_mask:locations/clocktown_east/npc_text
execute as @e[tag=EastClocktownSoldierInteraction] run data remove entity @s interaction
execute as @e[tag=EastClocktownSoldierInteraction] at @s unless entity @a[distance=..6] run scoreboard players set @s text 0

