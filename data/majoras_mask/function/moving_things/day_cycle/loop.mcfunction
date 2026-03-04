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
    # Reset Rain
        execute if entity @s[scores={Time=1}] run weather clear

# Clocktown Day 2
    # Rain
        execute if entity @s[scores={DayCycle=2,Time=980}] run weather rain
        execute if entity @s[scores={DayCycle=2,Time=17920}] run weather clear
