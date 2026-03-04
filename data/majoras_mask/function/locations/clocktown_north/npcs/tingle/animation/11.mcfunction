
# Running as minecraft:interaction

# 11 - Spin
    execute as @e[type=item_display, tag=aj.tingle.root, limit=1] run function animated_java:tingle/animations/tingle_idle_spin/resume
    scoreboard players add @s npc_movement 1
    scoreboard players add @s npc_timer 1
    execute if entity @s[scores={npc_movement=24..}] run scoreboard players set @s npc_state 7

    execute on target as @e[tag=TingleInteraction] run scoreboard players set @s npc_state 14