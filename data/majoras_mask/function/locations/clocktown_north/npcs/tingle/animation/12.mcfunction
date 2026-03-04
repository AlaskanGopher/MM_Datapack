
# Running as minecraft:interaction

# To Next Animation : 12
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_land/stop
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_idle/stop
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_idle_spin/stop
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_idle_kick/stop
    
    scoreboard players set @s npc_movement 0
    scoreboard players set @s npc_timer 0
    scoreboard players set @s npc_state 13