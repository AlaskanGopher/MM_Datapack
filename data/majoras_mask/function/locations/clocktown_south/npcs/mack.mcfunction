execute as @e[tag=MackInteraction] run tp @s @e[tag=aj.mack.root,limit=1]
execute as @e[tag=MackInteraction] on target as @e[tag=MackInteraction] run scoreboard players add @s text 1
execute as @e[tag=MackInteraction] on target as @e[tag=MackInteraction] run function majoras_mask:locations/clocktown_south/npc_text
execute as @e[tag=MackInteraction] run data remove entity @s interaction
execute as @e[tag=MackInteraction] at @s unless entity @a[distance=..6] run scoreboard players set @s text 0