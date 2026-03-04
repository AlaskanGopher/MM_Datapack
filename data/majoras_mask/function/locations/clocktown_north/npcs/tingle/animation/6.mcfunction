
# Running as minecraft:interaction

# Landed : 6
    # Animation
        execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_land/resume
    
    # Adjust Scoreboard
        scoreboard players add @s npc_movement 1
        execute if entity @s[scores={npc_movement=36..}] run scoreboard players set @s npc_state 7