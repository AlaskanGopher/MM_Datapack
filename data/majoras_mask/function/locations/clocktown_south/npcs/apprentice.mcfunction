execute as @e[tag=ApprenticeInteraction] run tp @s @e[tag=aj.apprentice.root,limit=1]
execute as @e[tag=ApprenticeInteraction] on target as @e[tag=ApprenticeInteraction] run scoreboard players add @s text 1
execute as @e[tag=ApprenticeInteraction] on target as @e[tag=ApprenticeInteraction] run function majoras_mask:locations/clocktown_south/npc_text
execute as @e[tag=ApprenticeInteraction] run data remove entity @s interaction
execute as @e[tag=ApprenticeInteraction] at @s unless entity @a[distance=..6] run scoreboard players set @s text 0