execute as @e[tag=BracInteraction] run tp @s @e[tag=aj.brac.root,limit=1]
execute as @e[tag=BracInteraction] on target as @e[tag=BracInteraction] run scoreboard players add @s text 1
execute as @e[tag=BracInteraction] on target as @e[tag=BracInteraction] run function majoras_mask:locations/clocktown_south/npc_text
execute as @e[tag=BracInteraction] run data remove entity @s interaction
execute as @e[tag=BracInteraction] at @s unless entity @a[distance=..6] run scoreboard players set @s text 0