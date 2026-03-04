
# Running as minecraft:interaction

# To Next Animation : 1
    execute at @s positioned ~-1.5 ~1 ~-1.5 if entity @e[type=arrow,dx=3,dy=3,dz=3] run kill @e[type=arrow,dx=3,dy=3,dz=3]
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_float/stop
    scoreboard players set @s npc_movement 0
    scoreboard players set @s npc_state 2