
# Running as minecraft:interaction

# 8 - Randomize (a few times just to try getting best spread)
    execute if entity @s[scores={npc_movement=0}] store result score @s npc_state run random value 10..11
    execute if entity @s[scores={npc_state=10,npc_movement=0}] store result score @s npc_state run random value 9..10

    execute on target as @e[tag=TingleInteraction] run scoreboard players set @s npc_state 14
