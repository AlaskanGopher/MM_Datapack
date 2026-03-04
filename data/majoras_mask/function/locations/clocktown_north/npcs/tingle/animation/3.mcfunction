
# Running as minecraft:interaction

# To Next Animation : 3
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_pop/stop
    
    scoreboard players set @s npc_movement 0
    scoreboard players set @s npc_state 4
