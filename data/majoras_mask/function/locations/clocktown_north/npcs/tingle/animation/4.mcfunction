
# Running as minecraft:interaction

# Falling : 4
    # Animation
        execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_fall/resume

    # Movement
        execute if entity @s[scores={npc_movement_tick=1,npc_movement=..57}] at @s unless block ~ ~-1 ~ air run tp @e[type=item_display, tag=aj.tingle.root, limit=1] 2 107 -46
        execute if entity @s[scores={npc_movement_tick=1,npc_movement=..57}] at @s unless block ~ ~-1 ~ air run scoreboard players set @s npc_movement 58
        execute if entity @s[scores={npc_movement_tick=1,npc_movement=..57}] at @s if block ~ ~-1 ~ air run tp @e[type=item_display, tag=aj.tingle.root, limit=1] ~ ~-0.99 ~

    # Adjust Scoreboard
        execute run scoreboard players add @s npc_movement_tick 1
        execute if entity @s[scores={npc_movement_tick=2..}] run scoreboard players add @s npc_movement 1
        execute if entity @s[scores={npc_movement_tick=2..}] run scoreboard players set @s npc_movement_tick 0
        execute if entity @s[scores={npc_movement=60..}] run scoreboard players set @s npc_state 5