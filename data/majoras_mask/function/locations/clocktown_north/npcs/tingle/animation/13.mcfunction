
# Running as minecraft:interaction

# Inflate : 13
    # 18 sec = 360 ticks
        execute if entity @e[scores={npc_movement=..39}] as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_inflate/resume
        execute if entity @e[scores={npc_movement=40..}] as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_inflate/stop
        execute if entity @e[scores={npc_movement=40..}] as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_float/resume
        
        execute if score @s npc_movement matches 40 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 107 -46
        execute if score @s npc_movement matches 41 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 107.15 -46
        execute if score @s npc_movement matches 42 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 107.57 -46
        execute if score @s npc_movement matches 43 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 108.24 -46
        execute if score @s npc_movement matches 44 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 109.07 -46
        execute if score @s npc_movement matches 45 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 110 -46
        execute if score @s npc_movement matches 46 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 110.93 -46
        execute if score @s npc_movement matches 47 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.76 -46
        execute if score @s npc_movement matches 48 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.43 -46
        execute if score @s npc_movement matches 49 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.85 -46
        execute if score @s npc_movement matches 50 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 113 -46
        execute if score @s npc_movement matches 51 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.95 -46
        execute if score @s npc_movement matches 52 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.81 -46
        execute if score @s npc_movement matches 53 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.59 -46
        execute if score @s npc_movement matches 54 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112.31 -46
        execute if score @s npc_movement matches 55 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 112 -46
        execute if score @s npc_movement matches 56 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.69 -46
        execute if score @s npc_movement matches 57 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.41 -46
        execute if score @s npc_movement matches 58 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.19 -46
        execute if score @s npc_movement matches 59 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111.05 -46
        execute if score @s npc_movement matches 60 run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 111 -46

    # Adjust Scoreboard
        scoreboard players add @s npc_movement_tick 1

        execute if entity @s[scores={npc_movement_tick=2..}] run scoreboard players add @s npc_movement 1
        execute if entity @s[scores={npc_movement_tick=2..}] run scoreboard players set @s npc_movement_tick 0

        execute if entity @s[scores={npc_movement=60..}] run scoreboard players set @s npc_state 0
        execute if entity @s[scores={npc_movement=60..}] run scoreboard players set @s npc_movement 0