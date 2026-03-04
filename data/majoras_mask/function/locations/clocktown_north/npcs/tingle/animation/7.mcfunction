
# Running as minecraft:interaction

# Backloop for next : 7
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_land/stop
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_idle/stop
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_idle_spin/stop
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_idle_kick/stop
    scoreboard players set @s npc_movement 0
    scoreboard players set @s npc_state 8
    execute if entity @s[scores={npc_timer=361..}] run scoreboard players set @s npc_state 12
    
    execute on target as @e[tag=TingleInteraction] run scoreboard players set @s npc_state 14