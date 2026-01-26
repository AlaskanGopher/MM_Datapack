# Store Current
execute store result score @s coord_x run data get entity @s Pos[0] 100

# Animation
execute unless entity @a[tag=South_Clocktown,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] if entity @s[x=0,y=100,z=57.5] run function animated_java:soldier/animations/guard_idle/play
execute if entity @a[tag=South_Clocktown,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] if score @s coord_x = @s last_coord_x run function animated_java:soldier/animations/guard_block/play
execute if entity @a[tag=South_Clocktown,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] unless score @s coord_x = @s last_coord_x run function animated_java:soldier/animations/guard_move/play

# Move Around
execute if entity @a[tag=South_Clocktown,x=1,y=100,z=56,dx=-4,dy=1,dz=-3] at @a[tag=South_Clocktown,x=1,y=100,z=56,dx=-2,dy=1,dz=-3] run tp @s ~ 100 57.5
execute if entity @a[tag=South_Clocktown,x=4,y=100,z=56,dx=-1,dy=1,dz=-3] run tp @s 2 100 57.5
execute if entity @a[tag=South_Clocktown,x=-3,y=100,z=56,dx=-1,dy=1,dz=-3] run tp @s -2 100 57.5
execute unless entity @a[tag=South_Clocktown,x=3,y=100,z=56,dx=-6,dy=1,dz=-3] run tp @s 0 100 57.5

# Store Old
execute store result score @s last_coord_x run scoreboard players get @s coord_x