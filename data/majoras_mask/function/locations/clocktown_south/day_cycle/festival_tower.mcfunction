# Clear Banners
fill -1 114 40 1 100 40 air
fill -3 100 36 -3 114 38 air
fill -1 100 34 1 114 34 air
fill 3 100 36 3 114 38 air

# Clear Carpet
fill -2 106 35 2 106 39 air
fill -2 109 35 2 109 39 air
fill -2 112 35 2 112 39 air

# Summon Tower
execute if entity @e[tag=globals,scores={DayCycle=1}] run place template minecraft:southclocktown_festivaltower_day1 -3 100 34
execute if entity @e[tag=globals,scores={DayCycle=2}] run place template minecraft:southclocktown_festivaltower_day2 -3 100 34
execute if entity @e[tag=globals,scores={DayCycle=3}] run place template minecraft:southclocktown_festivaltower_day3 -3 100 34
kill @e[type=item,x=-3,y=100,z=34,dx=6,dy=16,dz=6]