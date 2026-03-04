
# Running as minecraft:interaction

# Floating : 0
    # Unpause Animation
        execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_float/resume
    
    # Between 111 and 116
        execute if score @s npc_movement matches 0 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.0 -46
        execute if score @s npc_movement matches 1 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.03 -46
        execute if score @s npc_movement matches 2 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.12 -46
        execute if score @s npc_movement matches 3 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.27 -46
        execute if score @s npc_movement matches 4 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.48 -46
        execute if score @s npc_movement matches 5 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.73 -46
        execute if score @s npc_movement matches 6 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.03 -46
        execute if score @s npc_movement matches 7 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.37 -46
        execute if score @s npc_movement matches 8 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.73 -46
        execute if score @s npc_movement matches 9 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 113.11 -46
        execute if score @s npc_movement matches 10 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 113.5 -46
        execute if score @s npc_movement matches 11 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 113.89 -46
        execute if score @s npc_movement matches 12 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 114.27 -46
        execute if score @s npc_movement matches 13 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 114.63 -46
        execute if score @s npc_movement matches 14 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 114.97 -46
        execute if score @s npc_movement matches 15 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.27 -46
        execute if score @s npc_movement matches 16 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.52 -46
        execute if score @s npc_movement matches 17 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.73 -46
        execute if score @s npc_movement matches 18 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.88 -46
        execute if score @s npc_movement matches 19 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.97 -46
        execute if score @s npc_movement matches 20 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 116.0 -46
        execute if score @s npc_movement matches 21 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.97 -46
        execute if score @s npc_movement matches 22 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.88 -46
        execute if score @s npc_movement matches 23 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.73 -46
        execute if score @s npc_movement matches 24 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.52 -46
        execute if score @s npc_movement matches 25 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 115.27 -46
        execute if score @s npc_movement matches 26 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 114.97 -46
        execute if score @s npc_movement matches 27 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 114.63 -46
        execute if score @s npc_movement matches 28 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 114.27 -46
        execute if score @s npc_movement matches 29 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 113.89 -46
        execute if score @s npc_movement matches 30 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 113.5 -46
        execute if score @s npc_movement matches 31 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 113.11 -46
        execute if score @s npc_movement matches 32 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.73 -46
        execute if score @s npc_movement matches 33 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.37 -46
        execute if score @s npc_movement matches 34 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.03 -46
        execute if score @s npc_movement matches 35 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.73 -46
        execute if score @s npc_movement matches 36 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.48 -46
        execute if score @s npc_movement matches 37 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.27 -46
        execute if score @s npc_movement matches 38 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.12 -46
        execute if score @s npc_movement matches 39 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.03 -46

    # Adjust Scoreboard
        scoreboard players add @s npc_movement_tick 1
        execute if entity @s[scores={npc_movement_tick=2..}] run scoreboard players add @s npc_movement 1
        execute if entity @s[scores={npc_movement_tick=2..}] run scoreboard players set @s npc_movement_tick 0
        execute if entity @s[scores={npc_movement=40..}] run scoreboard players set @s npc_movement 0
    
    # Detect Arrow
        execute at @s positioned ~-1.5 ~1 ~-1.5 if entity @e[type=arrow,dx=3,dy=3,dz=3] run scoreboard players set @s npc_state 1