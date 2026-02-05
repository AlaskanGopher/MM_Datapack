# Everytime
execute as @e[tag=TingleInteraction] run tp @s @e[tag=aj.tingle.root,limit=1]
function animated_java:tingle/animations/tingle_float/pause
function animated_java:tingle/animations/tingle_idle/pause
function animated_java:tingle/animations/tingle_idle_kick/pause
function animated_java:tingle/animations/tingle_idle_spin/pause
function animated_java:tingle/animations/tingle_inflate/pause
function animated_java:tingle/animations/tingle_limpah/pause
function animated_java:tingle/animations/tingle_pop/pause
function animated_java:tingle/animations/tingle_fall/pause
function animated_java:tingle/animations/tingle_land/pause

# States
    # Floating : 0
        # Unpause Animation
            execute if entity @e[tag=TingleInteraction,scores={npc_state=0}] as @s run function animated_java:tingle/animations/tingle_float/resume
        # Between 111 and 116
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 0 run tp @s 2 111.0 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 1 run tp @s 2 111.03 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 2 run tp @s 2 111.12 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 3 run tp @s 2 111.27 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 4 run tp @s 2 111.48 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 5 run tp @s 2 111.73 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 6 run tp @s 2 112.03 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 7 run tp @s 2 112.37 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 8 run tp @s 2 112.73 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 9 run tp @s 2 113.11 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 10 run tp @s 2 113.5 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 11 run tp @s 2 113.89 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 12 run tp @s 2 114.27 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 13 run tp @s 2 114.63 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 14 run tp @s 2 114.97 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 15 run tp @s 2 115.27 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 16 run tp @s 2 115.52 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 17 run tp @s 2 115.73 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 18 run tp @s 2 115.88 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 19 run tp @s 2 115.97 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 20 run tp @s 2 116.0 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 21 run tp @s 2 115.97 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 22 run tp @s 2 115.88 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 23 run tp @s 2 115.73 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 24 run tp @s 2 115.52 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 25 run tp @s 2 115.27 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 26 run tp @s 2 114.97 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 27 run tp @s 2 114.63 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 28 run tp @s 2 114.27 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 29 run tp @s 2 113.89 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 30 run tp @s 2 113.5 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 31 run tp @s 2 113.11 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 32 run tp @s 2 112.73 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 33 run tp @s 2 112.37 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 34 run tp @s 2 112.03 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 35 run tp @s 2 111.73 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 36 run tp @s 2 111.48 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 37 run tp @s 2 111.27 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 38 run tp @s 2 111.12 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=0},limit=1] npc_movement matches 39 run tp @s 2 111.03 -46
        # Adjust Scoreboard
            execute as @e[tag=TingleInteraction,scores={npc_state=0}] run scoreboard players add @s npc_movement_tick 1
            execute as @e[tag=TingleInteraction,scores={npc_state=0}] if entity @s[scores={npc_movement_tick=2..}] run scoreboard players add @s npc_movement 1
            execute as @e[tag=TingleInteraction,scores={npc_state=0}] if entity @s[scores={npc_movement_tick=2..}] run scoreboard players set @s npc_movement_tick 0
            execute as @e[tag=TingleInteraction,scores={npc_state=0}] if entity @s[scores={npc_movement=40..}] run scoreboard players set @s npc_movement 0
        # Detect Arrow
            execute as @e[tag=TingleInteraction,scores={npc_state=0}] at @s positioned ~-1.5 ~1 ~-1.5 if entity @e[type=arrow,dx=3,dy=3,dz=3] run scoreboard players set @s npc_state 1

    # To Next Animation : 1
        execute as @e[tag=TingleInteraction,scores={npc_state=1}] at @s positioned ~-1.5 ~1 ~-1.5 if entity @e[type=arrow,dx=3,dy=3,dz=3] run kill @e[type=arrow,dx=3,dy=3,dz=3]
        execute if entity @e[tag=TingleInteraction,scores={npc_state=1}] as @s run function animated_java:tingle/animations/tingle_float/stop
        execute as @e[tag=TingleInteraction,scores={npc_state=1}] run scoreboard players set @s npc_movement 0
        execute as @e[tag=TingleInteraction,scores={npc_state=1}] run scoreboard players set @s npc_state 2

    # Popped : 2
        # Animation
            execute if entity @e[tag=TingleInteraction,scores={npc_state=2}] as @s run function animated_java:tingle/animations/tingle_pop/resume
        # Adjust Scoreboard
            execute as @e[tag=TingleInteraction,scores={npc_state=2}] run scoreboard players add @s npc_movement 1
            execute as @e[tag=TingleInteraction,scores={npc_state=2}] if entity @s[scores={npc_movement=60..}] run scoreboard players set @s npc_state 3

    # To Next Animation : 3
        execute if entity @e[tag=TingleInteraction,scores={npc_state=3}] as @s run function animated_java:tingle/animations/tingle_pop/stop
        execute as @e[tag=TingleInteraction,scores={npc_state=3}] run scoreboard players set @s npc_movement 0
        execute as @e[tag=TingleInteraction,scores={npc_state=3}] run scoreboard players set @s npc_state 4

    # Falling : 4
        # Animation
            execute if entity @e[tag=TingleInteraction,scores={npc_state=4}] as @s run function animated_java:tingle/animations/tingle_fall/resume
        # Movement
            execute if entity @e[tag=TingleInteraction,scores={npc_state=4,npc_movement_tick=1,npc_movement=..57}] unless block ~ ~-1 ~ air run tp @s 2 107 -46
            execute if entity @e[tag=TingleInteraction,scores={npc_state=4,npc_movement_tick=1,npc_movement=..57}] unless block ~ ~-1 ~ air run scoreboard players set @e[tag=TingleInteraction,limit=1] npc_movement 58
            execute if entity @e[tag=TingleInteraction,scores={npc_state=4,npc_movement_tick=1,npc_movement=..57}] if block ~ ~-1 ~ air run tp @s ~ ~-0.99 ~

        # Adjust Scoreboard
            execute as @e[tag=TingleInteraction,scores={npc_state=4}] run scoreboard players add @s npc_movement_tick 1
            execute as @e[tag=TingleInteraction,scores={npc_state=4}] if entity @s[scores={npc_movement_tick=2..}] run scoreboard players add @s npc_movement 1
            execute as @e[tag=TingleInteraction,scores={npc_state=4}] if entity @s[scores={npc_movement_tick=2..}] run scoreboard players set @s npc_movement_tick 0
            execute as @e[tag=TingleInteraction,scores={npc_state=4}] if entity @s[scores={npc_movement=60..}] run scoreboard players set @e[tag=TingleInteraction,limit=1] npc_state 5
    
    # To Next Animation : 5
        execute if entity @e[tag=TingleInteraction,scores={npc_state=5}] as @s run function animated_java:tingle/animations/tingle_fall/stop
        execute as @e[tag=TingleInteraction,scores={npc_state=5}] run scoreboard players set @s npc_movement 0
        execute as @e[tag=TingleInteraction,scores={npc_state=5}] run scoreboard players set @s npc_state 6
    
    # Landed : 6
        # Animation
            execute if entity @e[tag=TingleInteraction,scores={npc_state=6}] run function animated_java:tingle/animations/tingle_land/resume
        # Adjust Scoreboard
            execute as @e[tag=TingleInteraction,scores={npc_state=6}] run scoreboard players add @s npc_movement 1
            execute as @e[tag=TingleInteraction,scores={npc_state=6}] if entity @s[scores={npc_movement=36..}] run scoreboard players set @s npc_state 7

    # Backloop for next : 7
        execute if entity @e[tag=TingleInteraction,scores={npc_state=7}] run function animated_java:tingle/animations/tingle_land/stop
        execute if entity @e[tag=TingleInteraction,scores={npc_state=7}] run function animated_java:tingle/animations/tingle_idle/stop
        execute if entity @e[tag=TingleInteraction,scores={npc_state=7}] run function animated_java:tingle/animations/tingle_idle_spin/stop
        execute if entity @e[tag=TingleInteraction,scores={npc_state=7}] run function animated_java:tingle/animations/tingle_idle_kick/stop
        execute as @e[tag=TingleInteraction,scores={npc_state=7}] run scoreboard players set @s npc_movement 0
        execute as @e[tag=TingleInteraction,scores={npc_state=7}] run scoreboard players set @s npc_state 8

    # Idle : 8,9,10,11
        # 8 - Randomize (a few times just to try getting best spread)
            execute as @e[tag=TingleInteraction] if entity @e[scores={npc_state=8,npc_movement=0}] store result score @s npc_state run random value 10..11
            execute as @e[tag=TingleInteraction] if entity @e[scores={npc_state=10,npc_movement=0}] store result score @s npc_state run random value 9..10
        # 9 - Idle
            execute if entity @e[tag=TingleInteraction,scores={npc_state=9}] run function animated_java:tingle/animations/tingle_idle/resume
        # 10 - Kick
            execute if entity @e[tag=TingleInteraction,scores={npc_state=10}] run function animated_java:tingle/animations/tingle_idle_kick/resume
        # 11 - Spin
            execute if entity @e[tag=TingleInteraction,scores={npc_state=11}] run function animated_java:tingle/animations/tingle_idle_spin/resume
        # Adjust Scoreboard
            execute as @e[tag=TingleInteraction,scores={npc_state=9..11}] run scoreboard players add @s npc_movement 1
            execute as @e[tag=TingleInteraction,scores={npc_state=9..11}] run scoreboard players add @s npc_timer 1
            execute as @e[tag=TingleInteraction,scores={npc_state=9}] if entity @s[scores={npc_movement=18..}] run scoreboard players set @s npc_state 7
            execute as @e[tag=TingleInteraction,scores={npc_state=10}] if entity @s[scores={npc_movement=50..}] run scoreboard players set @s npc_state 7
            execute as @e[tag=TingleInteraction,scores={npc_state=11}] if entity @s[scores={npc_movement=24..}] run scoreboard players set @s npc_state 7
            execute as @e[tag=TingleInteraction,scores={npc_state=7}] if entity @s[scores={npc_timer=361..}] run scoreboard players set @s npc_state 12

    # To Next Animation : 12
        execute if entity @e[tag=TingleInteraction,scores={npc_state=12}] run function animated_java:tingle/animations/tingle_land/stop
        execute if entity @e[tag=TingleInteraction,scores={npc_state=12}] run function animated_java:tingle/animations/tingle_idle/stop
        execute if entity @e[tag=TingleInteraction,scores={npc_state=12}] run function animated_java:tingle/animations/tingle_idle_spin/stop
        execute if entity @e[tag=TingleInteraction,scores={npc_state=12}] run function animated_java:tingle/animations/tingle_idle_kick/stop
        execute if entity @e[scores={npc_state=13,npc_movement=40..}] run function animated_java:tingle/animations/tingle_inflate/stop
        execute as @e[tag=TingleInteraction,scores={npc_state=12}] run scoreboard players set @s npc_movement 0
        execute as @e[tag=TingleInteraction,scores={npc_state=12}] run scoreboard players set @s npc_timer 0
        execute as @e[tag=TingleInteraction,scores={npc_state=12}] run scoreboard players set @s npc_state 13

    # Inflate : 13
        # 18 sec = 360 ticks
            execute if entity @e[tag=TingleInteraction,scores={npc_state=13,npc_movement=..39}] run function animated_java:tingle/animations/tingle_inflate/resume
            execute if entity @e[tag=TingleInteraction,scores={npc_state=13,npc_movement=40..}] run function animated_java:tingle/animations/tingle_inflate/stop
            execute if entity @e[tag=TingleInteraction,scores={npc_state=13,npc_movement=40..}] run function animated_java:tingle/animations/tingle_float/resume
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 40 run tp @s 2 107 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 41 run tp @s 2 107.15 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 42 run tp @s 2 107.57 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 43 run tp @s 2 108.24 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 44 run tp @s 2 109.07 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 45 run tp @s 2 110 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 46 run tp @s 2 110.93 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 47 run tp @s 2 111.76 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 48 run tp @s 2 112.43 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 49 run tp @s 2 112.85 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 50 run tp @s 2 113 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 51 run tp @s 2 112.95 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 52 run tp @s 2 112.81 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 53 run tp @s 2 112.59 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 54 run tp @s 2 112.31 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 55 run tp @s 2 112 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 56 run tp @s 2 111.69 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 57 run tp @s 2 111.41 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 58 run tp @s 2 111.19 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 59 run tp @s 2 111.05 -46
            execute if score @e[tag=TingleInteraction,scores={npc_state=13},limit=1] npc_movement matches 60 run tp @s 2 111 -46

        # Adjust Scoreboard
            execute as @e[tag=TingleInteraction,scores={npc_state=13}] run scoreboard players add @s npc_movement_tick 1
            execute as @e[tag=TingleInteraction,scores={npc_state=13}] if entity @s[scores={npc_movement_tick=2..}] run scoreboard players add @s npc_movement 1
            execute as @e[tag=TingleInteraction,scores={npc_state=13}] if entity @s[scores={npc_movement_tick=2..}] run scoreboard players set @s npc_movement_tick 0
            execute as @e[tag=TingleInteraction,scores={npc_state=13}] if entity @s[scores={npc_movement=60..}] run scoreboard players set @e[tag=TingleInteraction,limit=1] npc_state 0
            execute as @e[tag=TingleInteraction,scores={npc_state=13}] if entity @s[scores={npc_movement=60..}] run scoreboard players set @e[tag=TingleInteraction,limit=1] npc_movement 0

    # Dialogue : 14
        execute as @e[tag=TingleInteraction,scores={npc_state=7..11}] on target as @e[tag=TingleInteraction] run scoreboard players set @s npc_state 14
        execute as @e[tag=TingleInteraction,scores={npc_state=14,npc_timer_temp=61..}] run scoreboard players set @s npc_timer_temp 61
        execute at @s if entity @e[tag=TingleInteraction,scores={npc_state=14}] if entity @a[sort=nearest,distance=..6] facing entity @a[sort=nearest,distance=..6] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
        # Talking
            execute if entity @e[tag=TingleInteraction,scores={npc_state=14,npc_timer_temp=61..}] run function animated_java:tingle/animations/tingle_limpah/stop
            execute if entity @e[tag=TingleInteraction,scores={npc_state=14,npc_timer_temp=61..}] run function animated_java:tingle/animations/tingle_idle/resume
            execute as @e[tag=TingleInteraction,scores={npc_state=14}] on target as @e[tag=TingleInteraction] run scoreboard players add @s text 1
            execute as @e[tag=TingleInteraction,scores={npc_state=14}] on target as @e[tag=TingleInteraction] run function majoras_mask:locations/clocktown_north/npc_text

        # Limpah Animation
            execute as @e[tag=TingleInteraction,scores={npc_state=14}] at @s if score @s text matches 13 if entity @e[tag=globals,tag=!TingleMet] run scoreboard players add @e[tag=TingleInteraction,limit=1] npc_timer_temp 1
            execute as @e[tag=TingleInteraction,scores={npc_state=14}] at @s if score @s text matches 6 if entity @e[tag=globals,tag=TingleMet] run scoreboard players add @e[tag=TingleInteraction,limit=1] npc_timer_temp 1
            execute as @e[tag=TingleInteraction,scores={npc_state=14,npc_timer_temp=..60}] as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_limpah/resume

        # Talking Leave
            execute as @e[tag=TingleInteraction,scores={npc_state=14}] at @s unless entity @a[distance=..6] run scoreboard players set @s text 0
            execute as @e[tag=TingleInteraction,scores={npc_state=14}] at @s unless entity @a[distance=..6] run scoreboard players set @s npc_state 7

# Everytime
execute as @e[tag=TingleInteraction] run data remove entity @s interaction