
# Running as minecraft:interaction

# Dialogue : 14
    execute as @s[scores={npc_timer_temp=61..}] run scoreboard players set @s npc_timer_temp 61
    execute if entity @a[sort=nearest,distance=..6] as @e[type=item_display, tag=aj.tingle.root, limit=1] at @s facing entity @a[sort=nearest,distance=..6] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    
    # Talking
        execute if entity @s[scores={npc_timer_temp=61..}] as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_limpah/stop
        execute if entity @s[scores={npc_timer_temp=61..}] as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_idle/resume
        #execute as @s on target as @e[tag=TingleInteraction] run scoreboard players add @s text 1
        #execute as @s on target as @e[tag=TingleInteraction] as @e[type=item_display, tag=aj.tingle.root, limit=1] run function majoras_mask:locations/clocktown_north/npc_text

    # Limpah Animation
        execute at @s if score @s text matches 13 if entity @e[tag=globals,tag=!TingleMet] run scoreboard players add @s npc_timer_temp 1
        execute at @s if score @s text matches 6 if entity @e[tag=globals,tag=TingleMet] run scoreboard players add @s npc_timer_temp 1
        execute as @s[scores={npc_timer_temp=..60}] as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_limpah/resume

    # Talking Leave
        execute at @s unless entity @a[distance=..6] run scoreboard players reset @s text
        execute at @s unless entity @a[distance=..6] run scoreboard players set @s npc_state 7