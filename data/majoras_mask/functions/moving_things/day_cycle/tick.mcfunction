execute if entity @s[scores={Time=0}] run scoreboard players add @s DayCycle 1
execute if entity @s[scores={DayCycle=4}] run scoreboard players set @s DayCycle 1

# Music
execute if entity @s[scores={Time=12000}] as @a[tag=!Indoors] run stopsound @s music
execute if entity @s[scores={Time=12000}] as @a[tag=!Indoors] run function majoras_mask:music/remove_other
execute if entity @s[scores={DayCycle=3,Time=18000}] as @a[tag=!Indoors] run function majoras_mask:music/clocktown_finalhours

execute if entity @s[scores={Time=0}] run tag @s add Morning
execute if entity @s[scores={Time=0},tag=Morning] as @a[tag=!Indoors] run stopsound @s music
execute if entity @s[scores={Time=1},tag=Morning] as @a[tag=!Indoors] run function majoras_mask:music/morning
execute if entity @s[scores={Time=159},tag=Morning,tag=Slow_Time] as @a[tag=!Indoors] run stopsound @s music
execute if entity @s[scores={Time=319},tag=Morning,tag=!Slow_Time] as @a[tag=!Indoors] run stopsound @s music
execute if entity @s[scores={DayCycle=1,Time=320},tag=Morning] as @a[tag=!Indoors] run function majoras_mask:music/clocktown_day1
execute if entity @s[scores={DayCycle=2,Time=320},tag=Morning] as @a[tag=!Indoors] run function majoras_mask:music/clocktown_day2
execute if entity @s[scores={DayCycle=3,Time=320},tag=Morning] as @a[tag=!Indoors] run function majoras_mask:music/clocktown_day3
execute if entity @s[scores={DayCycle=1..3,Time=320},tag=Morning] run tag @s remove Morning




# Animations

# Clocktown Day 1
    # Reset Clocktower
execute if entity @s[scores={DayCycle=1,Time=1}] run fill 318 49 -361 318 49 -361 minecraft:redstone_block
execute if entity @s[scores={DayCycle=1,Time=2}] run fill 318 49 -361 318 49 -361 minecraft:air
    # Reset Rain
execute if entity @s[scores={Time=1}] run weather clear
    # Reset Festival Tower
execute if entity @s[scores={DayCycle=1,Time=1}] run fill 316 41 -404 316 41 -404 minecraft:redstone_block
execute if entity @s[scores={DayCycle=1,Time=2}] run fill 316 41 -404 316 41 -404 minecraft:air
execute if entity @s[scores={DayCycle=1,Time=2}] run kill @e[type=minecraft:item,x=311,y=54,z=-406,dx=6,dy=6,dz=6]

    # Kill Erudites dumb entities.
    

# Clocktown Day 2
    # Festival Tower
execute if entity @s[scores={DayCycle=2,Time=1}] run fill 314 41 -404 314 41 -404 minecraft:redstone_block
execute if entity @s[scores={DayCycle=2,Time=2}] run fill 314 41 -404 314 41 -404 minecraft:air
    # Rain
execute if entity @s[scores={DayCycle=2,Time=980}] run weather rain
execute if entity @s[scores={DayCycle=2,Time=17920}] run weather clear

# Clocktown Day 3
execute if entity @s[scores={DayCycle=3,Time=1}] run fill 312 41 -404 312 41 -404 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=2}] run fill 312 41 -404 312 41 -404 minecraft:air

# Final Hours
    # Clocktower Open
execute if entity @s[scores={DayCycle=3,Time=18000}] run fill 318 49 -361 318 49 -361 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18001}] run fill 318 49 -361 318 49 -361 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18040}] run fill 314 49 -361 314 49 -361 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18041}] run fill 314 49 -361 314 49 -361 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18080}] run fill 310 49 -361 310 49 -361 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18081}] run fill 310 49 -361 310 49 -361 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18120}] run fill 318 49 -364 318 49 -364 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18121}] run fill 318 49 -364 318 49 -364 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18160}] run fill 314 49 -364 314 49 -364 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18161}] run fill 314 49 -364 314 49 -364 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18200}] run fill 310 49 -364 310 49 -364 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18201}] run fill 310 49 -364 310 49 -364 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18240}] run fill 318 49 -367 318 49 -367 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18241}] run fill 318 49 -367 318 49 -367 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18240}] run fill 317 55 -362 317 55 -362 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18241}] run fill 317 55 -362 317 55 -362 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18280}] run fill 314 55 -361 314 55 -361 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18281}] run fill 314 55 -361 314 55 -361 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18320}] run fill 311 55 -362 311 55 -362 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18321}] run fill 311 55 -362 311 55 -362 minecraft:air
execute if entity @s[scores={DayCycle=3,Time=18360}] run fill 309 55 -362 309 55 -362 minecraft:redstone_block
execute if entity @s[scores={DayCycle=3,Time=18361}] run fill 309 55 -362 309 55 -362 minecraft:air